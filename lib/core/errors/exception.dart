class CustomException implements Exception {
  final String message;

  CustomException({required this.message});

  String tostring() {
    return message;
  }
}
