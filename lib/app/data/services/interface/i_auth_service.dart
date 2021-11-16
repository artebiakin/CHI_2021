import 'package:dartz/dartz.dart';
import 'package:get/get.dart';

import '../../../core/error/failures.dart';
import '../../models/user.dart';

abstract class IAuthService extends GetxService {
  Future<IAuthService> init() async {
    return this;
  }

  Future<Either<Failure, User>> getAuthUser();

  Future<Either<Failure, User>> login(
      {required String email, required String password});

  Future<Either<Failure, User>> logOut();
}
