import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_app/core/errors/exception.dart';

import 'package:fruit_app/core/errors/failures.dart';
import 'package:fruit_app/core/services/data_base_service.dart';
import 'package:fruit_app/core/services/firebase_auth_service.dart';
import 'package:fruit_app/core/utils/back_end_end_point.dart';
import 'package:fruit_app/features/auth/data/models/user_model.dart';
import 'package:fruit_app/features/auth/domain/entites/user_entity.dart';
import 'package:fruit_app/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;
  final DataBaseService dataBaseService;
  AuthRepoImpl(
      {required this.dataBaseService, required this.firebaseAuthService});
  @override
  Future<Either<Failure, UserEntity>> createUserwithemailandpassword(
      String email, String password, String name) async {
    User? user;
    try {
      user = await firebaseAuthService.createUserWithEmailAndPassword(
          email: email, password: password);
      var userEntity = UserEntity(
        name,
        email: email,
        password: password,
        uid: user.uid,
      );
      await addUserData(user: userEntity);
      return right(userEntity);
    } on CustomException catch (e) {
      if (user != null) {
        await firebaseAuthService.deleteUser();
      }
      return left(ServerFailure(e.message));
    } catch (e) {
      if (user != null) {
        await firebaseAuthService.deleteUser();
      }
      log(
        'exception in auth repo.create user with email and password ${e.toString()}',
      );
      return left(
        ServerFailure(
          'خطأ غير متوقع لقد حدثت خطأ ما',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      var user = await firebaseAuthService.signInWithEmailAndPassword(
          email: email, password: password);
      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log(
        'exception in auth repo.create user with email and password ${e.toString()}',
      );
      return left(
        ServerFailure(
          'خطأ غير متوقع لقد حدثت خطأ ما',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    try {
      var user = await firebaseAuthService.signInWithGoogle();
      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      return left(
        ServerFailure(
          'خطأ غير متوقع لقد حدثت خطأ ما',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    try {
      var user = await firebaseAuthService.signInWithFacebook();
      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log('exception in auth repo.create user with email and password ${e.toString()}');
      return left(
        ServerFailure(
          'خطأ غير متوقع لقد حدثت خطأ ما',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithApple() async {
    try {
      var user = await firebaseAuthService.signInWithApple();
      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log('exception in auth repo.create user with email and password ${e.toString()}');
      return left(
        ServerFailure(
          'خطأ غير متوقع لقد حدثت خطأ ما',
        ),
      );
    }
  }

  @override
  Future addUserData({required UserEntity user}) async {
    await dataBaseService.addData(
        path: BackEndEndPoint.addUserData, data: user.toMap());
  }
}
