import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_app/core/errors/exception.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log(
        " exception in fire base auth service create user with email and password ${e.code} and ${e.code}",
      );
      if (e.code == 'weak-password') {
        throw CustomException(message: 'الكلمة السرية ضعيفة');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(
            message: 'لقد تم استخدام هذا البريد الإلكتروني مسبقاً');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'تأكد من الاتصال بالانترنت');
      } else {
        log('exception in fire base auth service create user with email and password ${e.message}');
        throw CustomException(message: 'لقد حدث خطأ ما');
      }
    } catch (e) {
      log(" exception in fire base auth service create user with email and password ${e.toString()}");
      throw CustomException(message: 'لقد حدث خطأ ما');
    }
  }
}
