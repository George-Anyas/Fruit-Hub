import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_app/features/auth/domain/entites/user_entity.dart';

class UserModel extends UserEntity {
  UserModel(super.name,
      {required super.email, required super.password, required super.uid});

  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(
      user.displayName!,
      email: user.email!,
      password: '',
      uid: user.uid,
    );
  }
}
