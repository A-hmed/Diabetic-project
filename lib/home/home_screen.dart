import 'package:flutter/material.dart';
import 'package:flutter_blood_bank_app/home/about_us.dart';
import 'package:flutter_blood_bank_app/home/diabetic_predection.dart';
import 'package:flutter_blood_bank_app/home/diet.dart';
import 'package:flutter_blood_bank_app/home/doctor_tab.dart';
import 'package:flutter_blood_bank_app/home/exercises.dart';

class HomeScreen extends StatefulWidget {
  static String ROUTE_NAME = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/background.png',
              )),
        ),
        child: Scaffold(
          bottomNavigationBar: Theme(
            data: ThemeData(canvasColor: Colors.blue),
            child: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (index) {
                currentIndex = index;
                setState(() {});
              },
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.dialpad_outlined), label: 'Diabetic Prediction'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: 'Doctors'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.accessibility), label: 'Exercises'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.accessible_outlined), label: 'Diet'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.rate_review_outlined), label: 'About Us'),
              ],
            ),
          ),
          body: tabs[currentIndex]
        ),
      ),
    );
  }
  List<Widget> tabs = [DiabeticPredection(),DoctorTab(),Exercises(), Diet(),AboutUs()];
}
