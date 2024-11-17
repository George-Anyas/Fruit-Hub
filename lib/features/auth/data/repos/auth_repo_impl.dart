import 'package:dartz/dartz.dart';
import 'package:fruit_app/core/errors/exception.dart';

import 'package:fruit_app/core/errors/failures.dart';
import 'package:fruit_app/core/services/firebase_auth_service.dart';
import 'package:fruit_app/features/auth/data/models/user_model.dart';
import 'package:fruit_app/features/auth/domain/entites/user_entity.dart';
import 'package:fruit_app/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImpl({required this.firebaseAuthService});
  @override
  Future<Either<Failure, UserEntity>> createUserwithemailandpassword(
      String email, String password, String name) async {
    try {
      var user = await firebaseAuthService.createUserWithEmailAndPassword(
          email: email, password: password);
      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      return left(
        ServerFailure(
          'an error occured please try later',
        ),
      );
    }
  }
}
