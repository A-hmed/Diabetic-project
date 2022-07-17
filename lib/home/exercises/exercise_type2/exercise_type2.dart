import 'package:flutter/material.dart';

class ExerciseType2Screen extends StatelessWidget {
  static String ROUTE_NAME = 'exercise_type_2';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Energy',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '1- Walking',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '-You don’t need a gym membership or expensive exercise equipment to get moving.'
                '\n-If you have a supportive pair of shoes and a safe place to walk, you can start today.'
                '\n-In fact, you can meet your recommended minimum target for aerobic fitness by going for a brisk 30-minute walk five days per week.'
                '\n-According to a 2021 review, walking can help people with type 2 diabetes lower their blood pressure, HbA1c levels, and body mass index.',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                '2- Cycling',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '-Roughly half of people with type 2 diabetesTrusted Source have arthritis.'
                '\n-The two conditions have several risk factors in common, including obesity.'
                '\n-Diabetic neuropathy, a condition that occurs when the nerves become damaged,can also cause joint pain in people with type 2 diabetes.'
                '\nIf you have lower joint pain, consider choosing low impact exercise.'
                '\nCycling, for example, can help you meet your fitness goals while minimizing strain on your joints.',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                '3- Swimming',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '-Aquatic activities provide another joint-friendly exercise option.'
                '\n-For example,swimming,water aerobics, aqua jogging,and other aquatic activities can give your heart,lungs,'
                '\nand muscles a workout, while putting little stress on your joints.'
                '\n-A 2017 reviewTrusted Source found that aquatic exercise can help lower blood sugar levels, much like land based exercise does.',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                '4- Team sports',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '-If you find it hard to motivate yourself to exercise,it might help to join a recreational sports team.'
                '\n-The opportunity to socialize with teammates and the commitment you make to them might help you find the motivation you need to show up each week.'
                '\n-Many recreational sports offer a good aerobic workout. Consider trying basketball, soccer, softball, pairs tennis, or ultimate Frisbee.',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                '5- Aerobic dance',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '-Signing up for an aerobic dance or other fitness class might also help you meet your exercise goals.'
                '\n-For instance, Zumba is a fitness program that combines dance and aerobic movements for a fast-paced workout.'
                '\n-A 2015 studyTrusted Source found that women with type 2 diabetes were more motivated to exercise after taking part in Zumba classes for 16 weeks.'
                '\n-Participants also improved their aerobic fitness and lost weight.',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                '6- Weightlifting',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '-Weightlifting and other strengthening activities help build your muscle mass, which can increase the number of calories you burn each day.'
                '\n-Strength training may also help improve your blood sugar control, according to the ADA.'
                '\n-If you want to incorporate weightlifting into your weekly exercise routine, you can use weight machines,'
                '\nfree weights, or even heavy household objects, such as canned goods or water bottles.'
                '\n-To learn how to lift weights safely and effectively, consider joining a weightlifting class or asking a professional fitness trainer for guidance.',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                '7- Resistance band exercises',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '-Weights aren’t the only tool you can use to strengthen your muscles.'
                '\nYou can also perform a wide variety of strengthening activities with resistance bands.'
                '\n-To learn how to incorporate them into your workouts, speak with a professional trainer,'
                '\ntake a resistance band class, or watch a resistance band workout video.'
                '\nIn addition to increasing your strength, exercising with resistance bands may provide modest benefits to your blood sugar control, according to a 2018 study.',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                '8- Calisthenics',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '-In calisthenics, you use your own bodyweight to strengthen your muscles.'
                '\n-Common calisthenic exercises include pushups, pullups, squats, lunges, and abdominal crunches.'
                '\n-Whether you choose to strengthen your muscles with weights, resistance bands, or your own body weight,'
                '\ntry to work out every major muscle group in your body.'
                '\nTo give your body time to recover, experts suggest taking a day off from muscle-strengthening activities between each session of strength training.',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                '9- Pilates',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '-Pilates is a popular fitness program that’s designed to improve core strength,coordination, and balance.'
                '\n-According to a 2020 study of older adult women with type 2 diabetes, it may also help improve blood sugar control.'
                '\nConsider signing up for a Pilates class at your local gym or Pilates studio.'
                '\n Many instructional videos and books are also available.',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                '10- Yoga',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '-According to a 2016 review, yoga can help people with type 2 diabetes manage their blood sugar,'
                '\ncholesterol levels, and weight.'
                '\nIt might also help lower your blood pressure,improve the quality of your sleep, and boost your mood.',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
