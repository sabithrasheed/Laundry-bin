class LoginModel {
  final String status;
  final String message;
  final String id;
  final String otp;

  LoginModel({
    required this.status,
    required this.message,
    required this.id,
    required this.otp,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      status: json['status'],
      message: json['message'],
      id: json['id'],
      otp: json['otp'],
    );
  }
}
