abstract class Failure {
  const Failure({required this.message});

  final String message;
}

// General failures
class ServerFailure extends Failure {
  ServerFailure({required String message}) : super(message: message);
}

class AuthFailure extends Failure {
  AuthFailure({required String message}) : super(message: message);
}

class CacheFailure extends Failure {
  CacheFailure({required String message}) : super(message: message);
}

class LocationFailure extends Failure {
  LocationFailure({required String message}) : super(message: message);
}

class InternalFailure extends Failure {
  InternalFailure({required String message}) : super(message: message);
}
