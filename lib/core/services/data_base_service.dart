import 'package:fruit_app/features/auth/domain/entites/user_entity.dart';

abstract class DataBaseService {
  Future<void> addData(
      {required String path, required Map<String, dynamic> data});
  Future<UserEntity> getUserData({required String path, required String uid});
}
