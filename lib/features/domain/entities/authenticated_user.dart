class AuthenticatedUserEntity {
  final String email;
  final String fullName;
  final String? avatar;


  const AuthenticatedUserEntity({
    required this.email,
    required this.fullName,
    this.avatar,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AuthenticatedUserEntity &&
        other.email == email &&
        other.fullName == fullName &&
        other.avatar == avatar;
  }

  @override
  int get hashCode => email.hashCode ^ fullName.hashCode ^ avatar.hashCode;

  @override
  String toString() => 'AuthenticatedUserEntity(email: $email, fullName: $fullName, avatar: $avatar)';

  AuthenticatedUserEntity copyWith({
    String? email,
    String? fullName,
    String? avatar,
  }) {
    return AuthenticatedUserEntity(
      email: email ?? this.email,
      fullName: fullName ?? this.fullName,
      avatar: avatar ?? this.avatar,
    );
  }
}
