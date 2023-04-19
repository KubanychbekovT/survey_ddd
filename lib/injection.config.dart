// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_messaging/firebase_messaging.dart' as _i6;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i13;
import 'package:survey/application/auth/auth_bloc.dart' as _i16;
import 'package:survey/application/auth/profile_watcher/profile_watcher_cubit.dart'
    as _i12;
import 'package:survey/application/auth/sign_in_form/sign_in_form_bloc.dart'
    as _i14;
import 'package:survey/application/auth/sign_up_form/sign_up_form_bloc.dart'
    as _i15;
import 'package:survey/domain/auth/i_auth_facade.dart' as _i8;
import 'package:survey/domain/users/i_user_repository.dart' as _i10;
import 'package:survey/infrastructure/auth/firebase_auth_facade.dart' as _i9;
import 'package:survey/infrastructure/core/app_injectable_module.dart' as _i17;
import 'package:survey/infrastructure/users/user_repository.dart' as _i11;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appInjectableProdModule = _$AppInjectableProdModule();
    gh.lazySingleton<_i3.Client>(() => appInjectableProdModule.httpClient);
    gh.lazySingleton<_i4.FirebaseAuth>(
        () => appInjectableProdModule.firebaseAuthDev);
    gh.lazySingleton<_i5.FirebaseFirestore>(
        () => appInjectableProdModule.firebaseFirestoreDev);
    gh.lazySingleton<_i6.FirebaseMessaging>(
        () => appInjectableProdModule.firebaseMessaging);
    gh.lazySingleton<_i7.FlutterSecureStorage>(
        () => appInjectableProdModule.storage);
    gh.lazySingleton<_i8.IAuthFacade>(() => _i9.FirebaseAuthFacade(
          gh<_i4.FirebaseAuth>(),
          gh<_i5.FirebaseFirestore>(),
        ));
    gh.lazySingleton<_i10.IUserRepository>(() => _i11.UserRepository(
          gh<_i5.FirebaseFirestore>(),
          gh<_i4.FirebaseAuth>(),
        ));
    gh.factory<_i12.ProfileWatcherCubit>(
        () => _i12.ProfileWatcherCubit(gh<_i8.IAuthFacade>()));
    await gh.factoryAsync<_i13.SharedPreferences>(
      () => appInjectableProdModule.sharedPreferences,
      preResolve: true,
    );
    gh.factory<_i14.SignInFormBloc>(
        () => _i14.SignInFormBloc(gh<_i8.IAuthFacade>()));
    gh.factory<_i15.SignUpFormBloc>(
        () => _i15.SignUpFormBloc(gh<_i8.IAuthFacade>()));
    gh.factory<_i16.AuthBloc>(() => _i16.AuthBloc(gh<_i8.IAuthFacade>()));
    return this;
  }
}

class _$AppInjectableProdModule extends _i17.AppInjectableProdModule {}
