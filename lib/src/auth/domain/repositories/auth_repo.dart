import 'package:job_portal_clean_architecture/core/enums/update_user.dart';
import 'package:job_portal_clean_architecture/core/utils/typedefs.dart';
import 'package:job_portal_clean_architecture/src/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  const AuthRepo();

  ResultFuture<void> forgotPassword(String email);

  ResultFuture<UserEntity> signIn({
    required String email,
    required String password,
  });

  ResultFuture<void> signUp({
    required String email,
    required String fullName,
    required String password,
  });

  ResultFuture<void> updateUser({
    required UpdateUserAction action,
    required dynamic userData,
  });
}
