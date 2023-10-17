import 'package:job_portal_clean_architecture/core/enums/update_user.dart';
import 'package:job_portal_clean_architecture/src/auth/data/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRemoteDataSource {
  const AuthRemoteDataSource();

  Future<void> forgotPassword(String email);

  Future<UserModel> signIn({
    required String email,
    required String password,
  });

  Future<void> signUp({
    required String email,
    required String fullName,
    required String password,
  });

  Future<void> updateUser({
    required UpdateUserAction action,
    dynamic userData,
  });
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  const AuthRemoteDataSourceImpl({required this.authClient});

  final FirebaseAuth authClient;

  @override
  Future<void> forgotPassword(String email) {
    throw UnimplementedError();
  }

  @override
  Future<UserModel> signIn({required String email, required String password}) {
    throw UnimplementedError();
  }

  @override
  Future<void> signUp(
      {required String email,
      required String fullName,
      required String password}) {
    throw UnimplementedError();
  }

  @override
  Future<void> updateUser({required UpdateUserAction action, userData}) {
    throw UnimplementedError();
  }
}
