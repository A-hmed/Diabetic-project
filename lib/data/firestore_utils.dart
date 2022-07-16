import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_blood_bank_app/data/user.dart';


Future<void> addUserToFireStore(MyUser user) {
  return MyUser.withConverter().doc(user.id).set(user);
}

Future<MyUser?> getUserById(String id) async {
  DocumentSnapshot<MyUser> result = await MyUser.withConverter().doc(id).get();
  return result.data();
}
