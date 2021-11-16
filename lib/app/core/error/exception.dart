class ServerException implements Exception {
  const ServerException(this.message);

  final String message;
}

class CacheException implements Exception {}

class LocationException implements Exception {
  LocationException(this.message);

  final String message;
}

class PermissionsException implements Exception {
  PermissionsException(this.message);

  final String message;
}
