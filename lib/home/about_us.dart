import 'package:flutter/material.dart';
import 'package:flutter_blood_bank_app/bottom_sheet/rating_bottom_sheet.dart';

class AboutUs extends StatefulWidget {
  AboutUs({Key? key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
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
            SizedBox(height: MediaQuery.of(context).size.height * 0.07,),
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
            InkWell(
              onTap: (){
                 showModalBottomSheet(context: context, builder: (context){
                   return EndEpisodeBottomSheet();
                 });
              },
              child: Text('Rate Us',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  decoration: TextDecoration.underline
                ),
              ),
            )
          ],
        ),
    );
  }
  String answer1=
      "This application should cover patient with diabetic daises"
      "\nAnd result for that the patient have a normal life with the daises"
      "\nBy control the sugar measurement in the blood  with recommendation activity with patient like (food/ exercise/ and advice)"
      "\nAnd make connection with doctor more easier to take appointment"
      "\nOr take advice from another patient by chatting to make a communication"
  ;
  String answer2=
      "\nSara Ebrahim Mohamed"
      "\nMohamed Hussein Mohamed"
      "\nSara Abdel Nasar Ali"
      "\nSamar Mahmoud taha";
  String answer3=
      "Its assemble to future of health care prediction with some hardware"
      "\nAnd high sensors the patient will have a normal live without any risk … by analysis his blood with connection alarm for any dangerous prediction ";

  void fetchFaqs() {
    faqList = ['About SMDS', 'TEAM', 'Our  app future'];
    faqContent = [answer1, answer2, answer3];

  }
}
