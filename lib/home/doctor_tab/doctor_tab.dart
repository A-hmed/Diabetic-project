import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blood_bank_app/data/doctors.dart';
import 'package:flutter_blood_bank_app/home/doctor_tab/doctor_item.dart';
import 'package:flutter_blood_bank_app/provider/auth_provider.dart';
import 'package:provider/provider.dart';

class DoctorTab extends StatelessWidget {
  List<Doctor> doctors = [];
  @override
  Widget build(BuildContext context) {
   AuthProvider provider = Provider.of(context);
    return FutureBuilder<QuerySnapshot<Doctor>>(
      future: Doctor.withConverter().get(),
        builder: (context ,snapshot){
        if(snapshot.hasData){
          doctors = snapshot.data!.docs.map((doc) => doc.data()).toList();
          doctors=  doctors.where((doctor) => doctor.governorate== provider.user!.location).toList();
          return ListView.builder(
            itemCount: doctors.length,
              itemBuilder: (context,index){
                return DoctorItem(doctors[index]);
              }

          );
        }else if(snapshot.hasError){
          return Center(child: Text('Error: ${snapshot.error.toString()}'));
        }else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        }
    );
  }
 void getDoctors(){
   Doctor.withConverter().get().then((querySanpShot) {
    List<Doctor> admin= querySanpShot.docs.map((queryDocument) {
       return  queryDocument.data();}).toList();
   });

 }
}
