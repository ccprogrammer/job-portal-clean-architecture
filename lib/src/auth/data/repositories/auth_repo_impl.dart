import 'package:job_portal_clean_architecture/core/enums/update_user.dart';
import 'package:job_portal_clean_architecture/core/utils/typedefs.dart';
import 'package:job_portal_clean_architecture/src/auth/data/datasources/auth_remote_datasource.dart';
import 'package:job_portal_clean_architecture/src/auth/domain/entities/user_entity.dart';
import 'package:job_portal_clean_architecture/src/auth/domain/repositories/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  AuthRepoImpl(this.remoteDataSource);
  final AuthRemoteDataSource remoteDataSource;

  @override
  ResultFuture<void> forgotPassword(String email) {
    throw UnimplementedError();
  }

  @override
  ResultFuture<UserEntity> signIn(
      {required String email, required String password}) {
    throw UnimplementedError();
  }

  @override
  ResultFuture<void> signUp(
      {required String email,
      required String fullName,
      required String password}) {
    throw UnimplementedError();
  }

  @override
  ResultFuture<void> updateUser(
      {required UpdateUserAction action, required userData}) {
    throw UnimplementedError();
  }
}
