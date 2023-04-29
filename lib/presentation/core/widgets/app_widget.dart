import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:survey/application/auth/auth_bloc.dart';
import 'package:survey/application/auth/profile_watcher/profile_watcher_cubit.dart';
import 'package:survey/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:survey/application/survey/survey_actor/survey_actor_cubit.dart';
import 'package:survey/application/survey/survey_watcher/survey_watcher_cubit.dart';
import 'package:survey/injection.dart';
import 'package:survey/presentation/sign_in/sign_in_page.dart';
import 'package:survey/presentation/splash/splash_page.dart';
import 'package:survey/presentation/survey/survey_form/survey_form_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<SignInFormBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<SurveyWatcherCubit>()..startWatchAll(),
          ),
          BlocProvider(
            create: (context) => getIt<SurveyActorCubit>(),
          ),
          BlocProvider(
              create: (context) =>
                  getIt<ProfileWatcherCubit>()..getSignedInUser()),
          BlocProvider(
            create: (context) =>
                getIt<AuthBloc>()..add(AuthEvent.authCheckRequested()),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Survey",
          home: SplashPage(),
        ));
  }
}
