class UserLoginResponseDto {
  final int id;
  final String firstName;
  final String? lastName;
  final String accessToken;

  UserLoginResponseDto(
      this.id, this.firstName, this.lastName, this.accessToken);

  static Future<UserLoginResponseDto> fromJson(jsonDecode) {
    throw UnimplementedError('');
  }
}
