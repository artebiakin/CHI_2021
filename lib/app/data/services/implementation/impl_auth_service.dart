import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../../core/error/failures.dart';
import '../../models/user.dart';
import '../interface/i_auth_service.dart';

class ImplAuthService extends IAuthService {
  static const _key = 'AUTH_KEY';

  final _storage = const FlutterSecureStorage();
  final _firebaseAuth = FirebaseAuth.instance;

  @override
  Future<Either<Failure, User>> getAuthUser() async {
    final value = await _storage.read(key: _key);

    if (value == null) {
      return Right(UnauthorizedUser());
    }

    return Right(AuthorizedUser());
  }

  @override
  Future<Either<Failure, User>> login(
      {required String email, required String password}) async {
    try {
      final result = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      final token = await result.user!.getIdToken();

      await _storage.write(key: _key, value: token);

      return Right(AuthorizedUser());
    } catch (e) {
      return Left(AuthFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, User>> logOut() async {
    try {
      await _storage.delete(key: _key);

      return Right(UnauthorizedUser());
    } catch (e) {
      return Left(AuthFailure(message: e.toString()));
    }
  }
}
