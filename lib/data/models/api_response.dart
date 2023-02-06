class ApiResponse {
  ApiResponse({
    this.success = false,
    this.message,
    this.data,
  });

  final bool success;
  final String? message;
  final String? data;

  factory ApiResponse.fromJson(Map<String, dynamic> responseBody) {
    return ApiResponse(
      success: responseBody['success'],
      message: responseBody['message'],
      data: responseBody['data'],
    );
  }
}
