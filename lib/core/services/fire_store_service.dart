import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:fruit_app/core/services/data_base_service.dart';
import 'package:fruit_app/features/auth/data/models/user_model.dart';
import 'package:fruit_app/features/auth/domain/entites/user_entity.dart';

class FireStoreService implements DataBaseService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData(
      {required String path, required Map<String, dynamic> data}) async {
    await firestore.collection(path).add(data);
  }

  @override
  Future<UserEntity> getUserData(
      {required String path, required String uid}) async {
    var data = await firestore.collection(path).doc(uid).get();
    return UserModel.fromjson(data.data() as Map<String, dynamic>);
  }
}
