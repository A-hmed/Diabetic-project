import 'package:flutter/material.dart';

class Tab1 extends StatefulWidget {
  @override
  State<Tab1> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  List faqList = [];

  List faqContent = [];

  int? expandedTile;

  @override
  Widget build(BuildContext context) {
    fetchFaqs();
    return Container(
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) => Container(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16.5),
                  margin: EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[300],
                  ),
                  child: Theme(
                    data: Theme.of(context)
                        .copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      tilePadding: EdgeInsets.zero,
                      onExpansionChanged: (isExpanded) {
                        setState(() {
                          if (isExpanded) {
                            expandedTile = index;
                          } else {
                            expandedTile = null;
                          }
                        });
                      },
                      title: Text(
                        faqList[index],
                      ),
                      trailing: Icon(
                        expandedTile == index
                            ? Icons.arrow_drop_up
                            : Icons.arrow_drop_down,
                      ),
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            faqContent[index],
                          ),
                        ),
                      ],
                    ),
                  )),
              itemCount: faqList.length,
            ),
          ),
        ],
      ),
    );
  }
  String answer1=
      "Diabetes doesn't mean you have to cut carbs completely. Choose carbohydrates that break down in the body slowly,\n providing steady energy. Reach for whole grains, beans, nuts, and fresh vegetables and fruits.\n Yes, you can eat fruit even though it's sweet. It's about eating the right amounts of carbohydrates at each meal. A registered dietitian can help you learn how much is right for you."
  ;
  String answer2=
      "Start small. If you are overweight, shedding just a few pounds can improve the body's ability to use insulin. It'll help lower your blood sugar and improve your blood pressure and blood fats. You'll also have more energy. Ready? Aim to burn more calories than you eat. To start, try cutting excess fat, sugar, and calories from your diet.";

  String answer3=
      "Getting too much or too little sleep can increase your appetite and cravings for high-carb foods. That can lead to weight gain, increasing your risk for complications such as heart disease. So shoot for seven or eight hours of sleep a night. If you have sleep apnea, treating it can improve your sleep and lower your blood sugar levels.";
  String answer4=
      "Pick something you like -- walking, dancing, biking, or just marching in place while you're on the phone. Do it a half-hour a day; work up to that if you need to. Exercise can help you lower your cardiovascular risks, cholesterol, and blood pressure levels, and keep your weight down. Exercise also relieves stress and may help you cut back on diabetes medication.";
  String answer6=
      "When you have diabetes, stress can cause your blood glucose levels to rise. Get rid of whatever physical or mental stresses you can. Learn coping techniques to deal with others. Relaxation techniques such as breathing exercises, yoga, and meditation may be especially effective if you have type 2 diabetes.";
  String answer5=
      "You know you're supposed to check it. And actually checking your blood glucose levels can help you avoid diabetes complications, like nerve pain, or keep them from getting worse. Checking it can also help you see how foods and activities affect you, and if your treatment plan is working. Your doctor can help you set a target glucose level range. The closer you get to your target, the better you'll feel.";
  String answer7=
      "Reduce the salt in your diet. It may help lower blood pressure and protect your kidneys. Not salting the food on your plate may not be enough. Most of the salt in Americans' diets comes from processed foods. Avoid convenience foods and use fresh ingredients when you can. Season with herbs and spices instead of salt when you cook."
  "\nAdults age 51 and older, and individuals with high blood pressure, diabetes, or chronic kidney disease should talk with their doctor about how much to reduce their sodium intake. In general, people with diabetes should decrease to less than 2,300 mgs per day, however your doctor may recommend lower amounts.";
  String answer8=
      "Heart disease can be a serious diabetes complication. Keep an eye on your risk by getting these ABCs checked:  A1C level."
  "\nThis is a measure of your average blood sugar control for the last 2-3 months. You may need it checked two or more times a year. Talk to your doctor about setting a goal.  Blood pressure."
  "\nGoal: below 140/80 mm Hg.  Cholesterol. Goal: LDL to 100 mg/d or lessl; HDL above 40 mg/dl in men and greater than 50 in women; and triglycerides below 150 mg/dl.";
  String answer9=
      "Diabetes raises your risk of infection and slows healing, so treat even simple cuts and scrapes quickly. Properly clean your wound and use an antibiotic cream and sterile bandage. See a doctor if it's not better in a few days. Check your feet every day for blisters, cuts, sores, redness, or swelling. Moisturize them to prevent cracks.";
  String answer10=
      "People with diabetes who smoke are two times more likely to die prematurely than those who don't. Quitting helps your heart and lungs. It lowers your blood pressure and risk of stroke, heart attack, nerve damage, and kidney disease. Ask your doctor about help for quitting tobacco.";
  String answer11=
      "There's no single diabetes diet. But here are basics to keep in mind: Enjoy super foods like berries, sweet potatoes, fish with omega-3 fatty acids, and dark green, leafy vegetables. Look at food labels and avoid saturated fat and trans fats. Instead, opt for mono and polyunsaturated fats like olive oil. A registered dietitian can give you personalized advice.";
  String answer12=
      "Expect to see your doctor two to four times a year. If you take insulin or need help balancing your blood sugar levels, you may need to visit more often. Also get a yearly physical and eye exam. You should be screened for eye, nerve, and kidney damage, and other complications. See a dentist twice a year. And be sure to tell all health care providers that you have diabetes.";


  void fetchFaqs() {
    faqList = ['Choose Carbs Carefully',
      'Lose Weight If You Need To',
      'Get Enough Sleep',
      'Be Active: Exercise and Diabetes',
      'Monitor Your Blood Sugar Daily',
      'Manage Stress',
      'Say No to Salt',
      'Heart Disease Risk and Diabetes',
      'Take Care of Bumps and Bruises',
      'Break Your Smoking Habit',
      "Pick Super Foods, Don't Supersize",
      'Set Up Doctor Visits'
    ];
    faqContent = [answer1, answer2, answer3,answer4, answer5, answer6,answer7, answer8, answer9,answer10, answer11, answer12];

  }
}
