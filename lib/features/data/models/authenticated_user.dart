import '../../domain/entities/authenticated_user.dart';

class AuthenticatedUserModel extends AuthenticatedUserEntity {
  AuthenticatedUserModel({
    required super.fullName,
    required super.email,
    super.avatar,
  });
  factory AuthenticatedUserModel.fromJson(Map<String,dynamic> json){
    return AuthenticatedUserModel(
      fullName: json['fullName']?? '',
      email : json['email']?? '',
      avatar: json['avatar']?? '',
    );
  }
}