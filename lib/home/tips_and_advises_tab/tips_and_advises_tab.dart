import 'package:flutter/material.dart';
import 'package:flutter_blood_bank_app/home/tips_and_advises_tab/Tab1.dart';
import 'package:flutter_blood_bank_app/home/tips_and_advises_tab/Tab2.dart';

class TipsAndAdvisesTab extends StatelessWidget {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Important Tips"),
      ),
      body: DefaultTabController(
        length: 2,
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
                tabs: const [
                  Tab(child: Text("Tips and advises", style: TextStyle(color: Colors.black),),),
                  Tab(child: Text("What Are the Complications of Diabetes?", style: TextStyle(color: Colors.black))),
                ],
              ),
              Expanded(
                child: TabBarView(children: [
                  getListFromType(1),
                  getListFromType(2),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget getListFromType(int tipType){
   if (tipType == 1) {
     return Tab1();
   }else  {
     return Tab2();
   }
   }
}
