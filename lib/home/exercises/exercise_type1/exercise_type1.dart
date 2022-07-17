import 'package:flutter/material.dart';
import 'package:flutter_blood_bank_app/home/exercises/exercise_type1/exerciset_type1_details.dart';

class ExerciseType1Screen extends StatelessWidget {
static String ROUTE_NAME = 'exercise_type_1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Fat Loss',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Spacer(flex: 1,),
          InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(ExersiseType1Details.ROUTE_NAME,
                arguments: ExerciseType1DetailsArgs(
                    textType: 'Aerobic Exercise',
                    imagePath: 'assets/images/pic1.png',
                    content: 'Aerobic exercise tend to be longer but less intense.'
                        '\nIt includes activities like running, walking, long-distance swimming and biking.'
                        '\nTypically these activities will cause blood sugars to drop.',
                    question: 'Okay, so I want to go for a run. What do I need to do?',
                    answer: '- Figure out through trial and error whether to reduce or maintain your typical insulin intake beforehand.Every person is different.'
                        '\n- Be alert.The risk for hypoglycemia (low blood sugar) is higher if you are exercising over a long duration.'
                        '\n- Carry a fast-acting carb as a snack so you’re prepared if you become low'
                )
              );
            },
            child: Container(
                padding: EdgeInsets.all(18),
                margin: EdgeInsets.all(25) ,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(18)
                ),
                child: Text('Aerobic Exerc',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white
                ),)
            ),
          ),
          SizedBox(height: 25,),
          InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(ExersiseType1Details.ROUTE_NAME,
                arguments: ExerciseType1DetailsArgs(
                    textType: 'Anaerobic Exercise',
                    imagePath: 'assets/images/pic2.png',
                    content: 'Anaerobic exercise is generally shorter or in spurts but at high intensity.'
                        '\nThis includes training like sprinting, boxing, ice hockey and weight training.'
                        '\nThese workouts are great for building muscle and getting stronger.'
                        '\nBut because of the intensity, these kinds of activities can cause blood glucose levels to spike.',
                    question: 'Okay, so I want to lift weights. What do I need to do?',
                    answer: '- Work with your health care provider to determine how much to increase your insulin in anticipation of the rise in glucose that intense physical exertion can cause.'
                        '\n- Again, be alert. Especially at high intensities, blood glucose can rise quickly. Check often and stay in tune with your.')
              );

            },
            child: Container(
                padding: EdgeInsets.all(18),
                margin: EdgeInsets.all(25) ,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(18)
                ),
                child: Text('Anaerobic Exercise',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white
                  ),)
            ),
          ),
          SizedBox(height: 25,),
          InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(ExersiseType1Details.ROUTE_NAME,
                arguments: ExerciseType1DetailsArgs(
                    textType: 'Mixed Exercise Screen',
                    imagePath: 'assets/images/pic3.png',
                    content: 'Mixed exercise is a combination of the aerobic and anaerobic activities above.'
                        '\nSports like basketball or soccer fall under this.'
                        '\nBecause it is a mix of an activity that lowers your blood sugar levels and one that can cause them to spike,it’s easy to see why it’s difficult to manage.',
                    question: 'Okay, so it’s game day. What do I need to do?',
                    answer: '- Through trial and error,determine how to adjust your diabetes management.'
                        '\nTools like a continuous glucose monitor (CGM) can help track the fluctuations that may come with mixed exercise.'
                        '\n- Watch the weather.In hotter temperatures, athletes use glycogen stores more quickly.'
                        '\nPrepare by packing fast-acting sugars like sports drinks and glucose tablets.'
                        '\nPlus, don’t forget to drink water and stay hydrated!'
                        '\n- Be ready for game-day jitters.'
                        '\nSports can be stressful! With adrenaline running high and the game on the line, stress levels will often be heightened, affecting your blood sugar levels.'
                )
              );

            },
            child: Container(
                padding: EdgeInsets.all(18),
                margin: EdgeInsets.all(25) ,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(18)
                ),
                child: Text('Mixed Exercise',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white
                  ),)
            ),
          ),
          Spacer(flex: 1,),

        ],
      ),
    );
  }
}

