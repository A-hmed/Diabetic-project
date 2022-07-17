import 'package:flutter/material.dart';

class ExersiseType1Details extends StatelessWidget {
  static String ROUTE_NAME = 'exercise_type1_details';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as ExerciseType1DetailsArgs ;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("${args.textType}"),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              Text(
                '${args.textType}',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset('${args.imagePath}'),
              SizedBox(
                height: 15,
              ),
              Text(
                '${args.content}',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                '${args.question}',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                '${args.answer}',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class ExerciseType1DetailsArgs{
  String textType;
  String imagePath;
  String content;
  String question;
  String answer;
  ExerciseType1DetailsArgs(
      {required this.textType,
        required this.imagePath,
        required this.content,
        required this.question,
        required this.answer});
}