import 'package:dartz/dartz.dart';
import 'package:fruit_app/core/errors/failures.dart';
import 'package:fruit_app/features/auth/domain/entites/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserwithemailandpassword(
      String email, String password, String name);

  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
      String email, String password);

  Future<Either<Failure, UserEntity>> signInWithGoogle();
  Future addUserData({required UserEntity user});
  Future<UserEntity> getUserData({required String uId});
  Future<Either<Failure, UserEntity>> signInWithFacebook();
  Future<Either<Failure, UserEntity>> signInWithApple();
}
