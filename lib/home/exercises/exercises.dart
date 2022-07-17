import 'package:flutter/material.dart';
import 'package:flutter_blood_bank_app/home/exercises/exercise_type2/exercise_type2.dart';

import 'exercise_type1/exercise_type1.dart';
import 'exercise_type3/exercise_type3.dart';

class Exercises extends StatelessWidget {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 120),
        child: DefaultTabController(
          length: 1,
          child: Container(
            margin: EdgeInsets.all(18),
            color: Colors.white,
            child: Column(
              children:  [
                TabBar(
                  onTap: (index){
                    currentIndex = index;
                  },
                  isScrollable: true ,
                  tabs: [
                    Tab(child: Text("Exercises", style: TextStyle(color: Colors.black),),),
                  ],
                ),
                Expanded(
                  child: TabBarView(children: [
                    getListFromType(1),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget getListFromType(int dietType){
    return ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index){
          String exerciseName = "";

          if(index == 0){
            exerciseName = "Fat Loss";
          }else if(index == 1){
            exerciseName = "Energy";
          }else if(index == 2){
            exerciseName = "Transformation";
          }
          return InkWell(
            onTap: (){
              if(index == 0){
                Navigator.of(context).pushNamed(ExerciseType1Screen.ROUTE_NAME);
              }else if(index == 1){
                Navigator.of(context).pushNamed(ExerciseType2Screen.ROUTE_NAME);
              }else if(index == 2){
                Navigator.of(context).pushNamed(ExerciseType3Screen.ROUTE_NAME);
              }
            },
            child: Container(
                padding: EdgeInsets.all(18),
                margin: EdgeInsets.all(18) ,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(18)
                ),
                child: Text("$exerciseName Exercises", style: TextStyle(color: Colors.white), textAlign: TextAlign.center,)),
          );
        });
  }
}
