import 'package:flutter/material.dart';

class Tab2 extends StatefulWidget {
  @override
  State<Tab2> createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
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
      "Taking care of yourself when you have diabetes takes effort. You need to check your blood sugar, eat right, stay active, and take your medications. It makes a big difference, because it can help you avoid major problems throughout your body, even in places you might not expect. Stick to your treatment plan so you can help slow them down or prevent them altogether.  ";
  String answer2=
      "Diabetes makes you more likely to get infections inside your mouth, like gum disease or thrush, a fungal infection that can cause painful white sores. Uncontrolled high blood sugar can also make you more likely to have plaque and cavities. A 2015 study found that people with diabetes lose twice as many teeth as those without the disease. Make sure you tell your dentist about your condition, and keep up with brushing, flossing, and rinsing with antiseptic mouthwash. Watch for bleeding gums or other signs of gum disease.";
  String answer3=
      "Diabetes can lead to glaucoma (more pressure in the eye) and cataracts (clouding of your eye’s lens). It also can harm the blood vessels in the retina at the back of your eye, a problem that doctors call diabetic retinopathy. All of these conditions can make your vision worse and even lead to blindness. By the time you notice your eyesight fading, your eyes may already have serious damage. So see your eye doctor regularly.";
  String answer4=
      "Many people with diabetes get nerve damage, called neuropathy. It can happen anywhere in your body, but it most often affects your arms, legs, hands, and feet. Doctors call this peripheral neuropathy. Symptoms can include a tingling feeling, numbness, sensitivity, or pain. Another kind, called autonomic neuropathy, can affect urination, sex, digestion, and other body functions. It’s less likely if you aren’t overweight, and if you manage your blood pressure and blood sugar.";
  String answer6=
      "Many of these changes happen because of infections, which are more likely with diabetes. Your skin may become itchy, it may feel thinner or thicker, or you may notice scaly or discolored patches. Blood circulation and nerve problems caused by diabetes can also affect your skin. It helps to stay at a healthy weight and keep your blood sugar under control. If you get sores or blisters because of an infection, your doctor may prescribe antibiotics, creams, or other medicine.";
  String answer5=
      "If diabetes damages nerves in your feet, numbness can make you less likely to notice an injury or infection. Your condition can also make it harder for blood to flow in that area. Together, these problems can eventually cause so much harm that your toes or feet need to be amputated. Quit smoking and get exercise to make these issues less likely. Also, check your feet daily, keep them clean and moisturized, and wear shoes that fit well and protect your feet.";
  String answer7=
  "Your vagus nerve helps move food through your digestive system. If diabetes damages it, digestion slows down. You can get heartburn, nausea, vomiting, bloating, feel too full after you eat, and lose your appetite. Manage your blood sugar to help prevent the problem. Even more commonly, nerve damage can affect your bowels, making you constipated or causing diarrhea. A healthy diet or fiber supplements can help keep you regular.";
  String answer8=
"These happen much more often among people with diabetes, and they also tend to happen at a younger age. A stroke happens when one of the vessels that sends blood to your brain gets weak, injured, or blocked. When brain tissue doesn't get enough blood, it can become permanently damaged within minutes. What can you do to prevent a stroke? Watch your blood sugar, cholesterol, and blood pressure. High numbers can mean higher risk. Exercise, stay at a healthy weight, and most importantly, avoid tobacco smoke.";
  String answer9=
      "The wear and tear on your blood vessels from diabetes means a lot of extra work for your heart. And people with the disease are more likely to be overweight or have other conditions, like high blood pressure and high cholesterol. All that adds up to a serious chance for heart disease. That's why it's key to follow a ticker-friendly lifestyle -- exercise, eat a healthy diet, get regular cholesterol and blood pressure screening tests, and say no to smoking and secondhand smoke.";
  String answer10=
      "Your kidneys are filled with tiny blood vessels that filter out waste, which then leaves your body when you pee. High blood sugar overworks these filters. Over time, they can have problems and stop working. The better you control your blood sugar -- and your blood pressure, which also makes kidney disease more likely -- the better your chances are at keeping your kidneys healthy. Even if you show symptoms of kidney disease, it's still important to manage your blood sugar.";
  String answer11=
      "When diabetes damages your nerves and blood vessels, that can cut blood flow, which can lead to erectile dysfunction for men. Women may have trouble getting aroused, feel discomfort or pain during sex, or have less sensation. Tight control of your blood sugar helps, and so can lifestyle changes that ease the pressure on your blood vessels, like exercising, losing extra weight, and quitting smoking.";
  String answer12=
      "Diabetes makes you more likely to get infections more often and to have complications. People with the disease face higher chances of getting gum disease, respiratory infections, the flu, pneumonia, urinary tract infections, yeast infections, and more. Make sure you stay up to date on vaccines, including immunizations for the flu and pneumonia";


  void fetchFaqs() {
    faqList = ["You're in Control",
      'Gum Disease and Cavities',
      'Problems With Vision',
      'Damaged Nerves',
      'Foot Problems',
      'Skin Conditions',
      'Digestive Trouble',
      'Strokes',
      'Heart Disease',
      "Kidney Disease",
      'Problems With Sexs',
      'Infections'
    ];
    faqContent = [answer1, answer2, answer3,answer4, answer5, answer6,answer7, answer8, answer9,answer10, answer11, answer12];

  }
}
