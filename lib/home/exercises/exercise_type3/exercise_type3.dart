import 'package:flutter/material.dart';

class ExerciseType3Screen extends StatelessWidget {
  static String ROUTE_NAME = 'exercise_type3';
  List<String> title = [
    'Walk',
    'Dance',
    'Swim',
    'Bike',
    'Climb Stairs',
    'Strength Training',
    'Gardening',
    'Yoga',
    'Tai Chi'
  ];
  List<String> imagePath = [
    'assets/images/pic4.png',
    'assets/images/pic5.png',
    'assets/images/pic6.png',
    'assets/images/pic7.png',
    'assets/images/pic8.png',
    'assets/images/pic9.png',
    'assets/images/pic10.png',
    'assets/images/pic11.png',
    'assets/images/pic10.png',
  ];
  List<String> content = [
    'It’s a simple way to get exercise and fresh air.'
        '\nIt can lower your stress, too.'
        '\nA brisk stroll of 30 minutes to an hour 3 or 4 times a week is one way to hit your target.'
        '\nIt’s easy to get started: Take Fido around the neighborhood or walk to the store instead of driving.'
        '\nOnce you’ve made it a habit, it can be rewarding -- and motivating -- to track your steps and your progress.',
    'This can be a fun way to get your exercise.'
        '\nJust shake your groove thing for 25 minutes, 3 days a week to help your heart, lower your blood sugar,'
        '\nease stress levels, and burn calories.'
        '\nYou don’t need a partner to get started, either.'
        '\nA chair can be good support if you need it.',
    'This is one aerobic exercise that doesn’t strain your joints like other ones can.'
        '\nIt also lets you work muscles in your upper and lower body at the same time.'
        '\nHitting the water is also good for your heart.'
        '\nIt can also lower cholesterol and help you burn serious calories.'
        '\nIf a lifeguard is on duty, let them know you have diabetes.',
    'Fighting diabetes can be as easy as riding a bicycle.'
        '\nWhether you use a stationary one or hit the road, 30 minutes a day 3 to 5 times a week can get your heart rate up,'
        '\nburn blood sugar, and help you lose weight without hurting your knees or other joints.',
    'This can be a healthy and easy way to burn calories and get your heart and lungs working faster, especially if you have type 2 diabetes.'
        '\nGoing up and down stairs for 3 minutes about an hour or two after a meal is a good way to burn off blood sugar.'
        '\nYou can do it anywhere there’s a staircase, like when you need a break from work.',
    'You do this with free weights or resistance bands.'
        '\nIt can lower your blood sugar and help make your muscles and bones stronger.'
        '\nYou get the most out of it if you do it twice a week -- in addition to your aerobic stuff.'
        '\nYou can do many of these exercises at home, like:'
        '\n-Lifting canned goods or water bottles\n-Push-ups\n-Sit-ups\n-Squats\n-Lunges.',
    'If the idea of traditional exercise isn’t for you, don’t worry.'
        '\nTime in your garden counts as both aerobic activity and strength training.'
        '\nIt gets your blood going (since you’re walking, kneeling, and bending).'
        '\nIt also builds muscles and helps your bones (since you’re digging, lifting, and raking).'
        '\nYou’re also outside, where your stress levels can be lower.',
    'It’s worked for some 5,000 years as a low-impact exercise that can make you stronger and more flexible.'
        '\nYoga can also help with balance. The motions, poses, and focus on breathing may also ease stress and help build muscle.'
        '\nThat can keep your blood sugar levels more stable.',
    'This ancient Chinese art uses slow, controlled movements -- along with visualization and deep breathing -- to build strength.'
        '\nIt can also help with mobility, balance, and flexibility. This gentle exercise can also lower your stress level.'
        '\nIt may also help prevent nerve damage in your feet.\n\nAt least 30 minutes of aerobic activity 5 days a week can help the insulin in your body work better.'
        '\nWe’re talking exercise that gets your heart and lungs going and kicks your blood flow into a higher gear.'
        '\nIf you haven’t been active in a while, start with 5 to 10 minutes a day and build up over time.'
        '\nTalk with your doctor before you start.'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Transformation',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(24),
        child: ListView.builder(
            itemCount: 9,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    '${title[index]}',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '${content[index]}',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Image.asset('${imagePath[index]}'),
                ],
              );
            }),
      ),
    );
  }
}
