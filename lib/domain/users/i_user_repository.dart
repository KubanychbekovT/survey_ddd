import 'package:dartz/dartz.dart' hide Task;
import 'package:survey/domain/users/user.dart';
import 'package:survey/domain/users/user_failure.dart';

abstract class IUserRepository {
  Stream<Either<UserFailure, List<User>>> watchAllUsers();
}
