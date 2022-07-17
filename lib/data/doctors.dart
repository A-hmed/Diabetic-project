import 'package:cloud_firestore/cloud_firestore.dart';

class Doctor {
  String id;
  String name;
  String age;
  String address;
  String governorate;
  String image;
  String degree;
  String phoneNumber;

  Doctor(
      {required this.id,
        required this.name,
      required this.address,
      required this.age,
      required this.degree,
      required this.governorate,
      required this.image,
      required this.phoneNumber
      });

  Doctor.fromJson(Map<String, dynamic> json, String id)
      : this(
    id: id,
          name: json['name'] as String,
          age: json['age'] as String,
          address: json['address'] as String,
    governorate: json['governorate'] as String,
          image: json['image'] as String,
          degree: json['degree'] as String,
          phoneNumber: json['phone_number']
        );

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
      'address': address,
      'governorate': governorate,
      'image': image,
      'degree': degree,
      'phone_number': phoneNumber,
    };
  }
  static CollectionReference<Doctor> withConverter() {
    return FirebaseFirestore.instance
        .collection('doctors')
        .withConverter<Doctor>(
      fromFirestore: (snapshot, _) => Doctor.fromJson(snapshot.data()!, snapshot.id),
      toFirestore: (doctor, _) => doctor.toJson(),
    );
  }
}
