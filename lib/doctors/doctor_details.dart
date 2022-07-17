import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blood_bank_app/data/doctors.dart';
import 'package:url_launcher/url_launcher.dart';

class DoctorDetailsScreen extends StatelessWidget {
  static String ROUTE_NAEM = 'doctor_details';
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as Doctor ;
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
              appBar: AppBar(
                title: const Text('Doctor Details',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12 , vertical: 30),
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network('${args.image}',
                          width: 200,
                          height: 200,
                        ),
                      ),
                    ),
                  ),
                  Text('Name : ${args.name}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.black
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Text('Age : ${args.age}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.black
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Text('Address : ${args.address}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.black
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Text('Degree : ${args.degree}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.black
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Text('Governorate : ${args.governorate}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.black
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Text('phone number: ${args.phoneNumber}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.black
                    ),
                  ),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                            )
                        )),
                        onPressed: (){
                          _launchCaller(args.phoneNumber);
                        },
                        child: Text('Call Dr ${args.name}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.white
                          ),
                        )),
                  )
                ],
              ),
            ),
        ),);
  }
  _launchCaller(String phoneNumber) async {
    var  url = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
