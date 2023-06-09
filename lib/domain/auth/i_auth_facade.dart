import 'package:dartz/dartz.dart';
import 'package:survey/domain/auth/auth_failure.dart';
import 'package:survey/domain/auth/value_objects.dart';
import 'package:survey/domain/users/user.dart';

abstract class IAuthFacade{
  Future<User> getSignedInUser();
  Option<String> getSignedInUserId();
  Future<Either<AuthFailure,Unit>> registerWithEmailAndPassword({required UserName userName,required EmailAddress emailAddress,required Password password});
  Future<Either<AuthFailure,Unit>> signInWithEmailAndPassword({required EmailAddress emailAddress,required Password password});
  Future<void> signOut();
}