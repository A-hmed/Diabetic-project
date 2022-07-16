import 'package:cloud_firestore/cloud_firestore.dart';

class MyUser {

  static String collectionName = 'users';
  String id;
  String age;
  String userName;
  String email;
  String sex;
  String diabeticType;
  String location;
  String insulinLevel ;

  MyUser(
      {required this.id,
      required this.age,
      required this.userName,
      required this.email,
      required this.sex,
      required this.diabeticType,
      required this.location,
        required this.insulinLevel
      });

  MyUser.fromJson(Map<String, dynamic> json)
      : this(
          id: json['id'] as String,
          age: json['age'] as String,
          userName: json['userName'] as String,
          email: json['email'] as String,
          sex: json['sex'] as String,
          diabeticType: json['diabeticType'] as String,
          location: json['location'] as String,
          insulinLevel: "json['insulinLevel'] as String"
        );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'age': age,
      'userName': userName,
      'email': email,
      'sex': sex,
      'diabeticType': diabeticType,
      'location': location,
      'insulinLevel' : insulinLevel
    };
  }

  static CollectionReference<MyUser> withConverter() {
    return FirebaseFirestore.instance
        .collection(collectionName)
        .withConverter<MyUser>(
      fromFirestore: (snapshot, _) => MyUser.fromJson(snapshot.data()!),
      toFirestore: (user, _) => user.toJson(),
    );
  }
}