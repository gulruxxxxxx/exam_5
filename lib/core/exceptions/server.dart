class ServerException implements Exception{
  final String errorMessage;
  final int errorCode;

  const ServerException({required this.errorMessage, required this.errorCode});
}