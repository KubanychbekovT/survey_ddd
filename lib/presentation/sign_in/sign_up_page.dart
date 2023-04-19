import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:survey/application/auth/auth_bloc.dart';
import 'package:survey/application/auth/profile_watcher/profile_watcher_cubit.dart';
import 'package:survey/application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:survey/domain/survey/question.dart';
import 'package:survey/domain/survey/survey.dart';
import 'package:survey/domain/survey/value_objects.dart';
import 'package:survey/injection.dart';
import 'package:survey/presentation/core/widgets/custom_scaffold.dart';
import 'package:survey/presentation/sign_in/sign_in_page.dart';
import 'package:survey/presentation/survey/create_page.dart';
import 'package:survey/presentation/survey/survey_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        useAppBar: false,
        body: BlocProvider(
          create: (context) => getIt<SignUpFormBloc>(),
          child: Center(
            child: Card(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 8),
              elevation: 10,
              //  color: AppColorConstants.primaryColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: BlocConsumer<SignUpFormBloc, SignUpFormState>(
                    builder: (context, state) {
                  return Form(
                      autovalidateMode: state.showErrorMessages
                          ? AutovalidateMode.always
                          : AutovalidateMode.disabled,
                      child: ListView(
                        shrinkWrap: true,
                        padding: const EdgeInsets.all(8),
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Center(
                              child: Text(
                            ("sign up"),
                            style: Theme.of(context).textTheme.titleLarge,
                          )),
                          const SizedBox(
                            height: 40,
                          ),
                          TextFormField(
                            style: Theme.of(context).textTheme.bodyText1,
                            cursorColor: Theme.of(context).primaryColor,
                            decoration: InputDecoration(
                                labelText: ("username"),
                                isDense: true,
                                border: UnderlineInputBorder(),
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 5)),
                            autocorrect: false,
                            validator: (_) => context
                                .read<SignUpFormBloc>()
                                .state
                                .userName
                                .value
                                .fold(
                                    (f) => f.maybeMap(
                                        shortLength: (value) =>
                                            "usernameMustBeMinimum3Characters",
                                        empty: (value) => 'Empty value',
                                        orElse: () => null),
                                    (r) => null),
                            onChanged: (value) => context
                                .read<SignUpFormBloc>()
                                .add(SignUpFormEvent.userNameChanged(value)),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            style: Theme.of(context).textTheme.bodyText1,
                            cursorColor: Theme.of(context).primaryColor,
                            decoration: InputDecoration(
                                labelText: "email",
                                isDense: true,
                                border: UnderlineInputBorder(),
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 5)),
                            autocorrect: false,
                            validator: (_) => context
                                .read<SignUpFormBloc>()
                                .state
                                .emailAddress
                                .value
                                .fold(
                                    (f) => f.maybeMap(
                                        invalidEmail: (value) =>
                                            'invalid email',
                                        orElse: () => null),
                                    (r) => null),
                            onChanged: (value) => context
                                .read<SignUpFormBloc>()
                                .add(SignUpFormEvent.emailChanged(value)),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            style: Theme.of(context).textTheme.bodyText1,
                            cursorColor: Theme.of(context).primaryColor,
                            decoration: InputDecoration(
                                labelText: "password",
                                isDense: true,
                                border: UnderlineInputBorder(),
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 5)),
                            autocorrect: false,
                            onChanged: (value) => context
                                .read<SignUpFormBloc>()
                                .add(SignUpFormEvent.passwordChanged(value)),
                            obscureText: true,
                            validator: (_) => context
                                .read<SignUpFormBloc>()
                                .state
                                .password
                                .value
                                .fold(
                                    (f) => f.maybeMap(
                                        shortPassword: (value) =>
                                            "short password",
                                        orElse: () => null),
                                    (r) => null),
                          ),
                          TextFormField(
                            style: Theme.of(context).textTheme.bodyText1,
                            cursorColor: Theme.of(context).primaryColor,
                            decoration: InputDecoration(
                                labelText: "confirm password",
                                isDense: true,
                                border: UnderlineInputBorder(),
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 5)),
                            autocorrect: false,
                            obscureText: true,
                            validator: (_) => context
                                .read<SignUpFormBloc>()
                                .state
                                .confirmationPassword
                                .value
                                .fold(
                                    (f) => f.maybeMap(
                                        empty: (value) => "empty value",
                                        passwordsDoNotMatch: (value) =>
                                            "password do not match",
                                        orElse: () => null),
                                    (r) => null),
                            onChanged: (value) => context
                                .read<SignUpFormBloc>()
                                .add(
                                    SignUpFormEvent.confirmationPasswordChanged(
                                        value)),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Center(
                            child: ElevatedButton(
                                style:
                                    Theme.of(context).elevatedButtonTheme.style,
                                onPressed: state.isSubmitting
                                    ? null
                                    : () {
                                        context.read<SignUpFormBloc>().add(
                                            SignUpFormEvent
                                                .registerWithEmailAndPasswordPressed());
                                      },
                                child: state.isSubmitting
                                    ? const SizedBox(
                                        height: 20,
                                        width: 20,
                                        child: CircularProgressIndicator(
                                          valueColor: AlwaysStoppedAnimation(
                                              Colors.white),
                                        ))
                                    : Text("sign up")),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Center(
                            child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "already have an account",
                                    style: TextStyle(color: Colors.grey)),
                                WidgetSpan(
                                    child: InkWell(
                                  child: Text(
                                    "login",
                                    style: TextStyle(color: Colors.green),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SignInPage()));
                                  },
                                ))
                              ]),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          // ↑ Navigate to new page here
                        ],
                      ));
                }, listener: (context, state) {
                  state.authFailureSuccessOption.fold(
                      () => () {},
                      (either) => either.fold(
                              (failure) => ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                      content: Text(failure.map(
                                          remoteError: (remoteError) =>
                                              remoteError.errorName,
                                          serverError: (_) => "serverError",
                                          emailAlreadyInUse: (_) =>
                                              "emailAlreadyInUse",
                                          invalidEmailAndPassword: (_) =>
                                              "")))), (r) {
                            context
                                .read<ProfileWatcherCubit>()
                                .getSignedInUser();
                            context
                                .read<AuthBloc>()
                                .add(AuthEvent.authCheckRequested());

                          }));
                }),
              ),
            ),
          ),
        ));
  }
}
