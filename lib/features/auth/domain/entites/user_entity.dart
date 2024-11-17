class UserEntity {
  final String name;
  final String email;
  final String password;
  final String uid;

  UserEntity(this.name,
      {required this.email, required this.password, required this.uid});
}