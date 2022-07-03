import 'package:flutter/material.dart';

class Exercises extends StatelessWidget {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
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
                Tab(child: Text("Fat Loss", style: TextStyle(color: Colors.black),),),
                Tab(child: Text("Muscle building", style: TextStyle(color: Colors.black))),
                Tab(child: Text("Transformation", style: TextStyle(color: Colors.black))),
                Tab(child: Text("Energy", style: TextStyle(color: Colors.black))),
              ],
            ),
            Expanded(
              child: TabBarView(children: [
                getListFromType(1),
                getListFromType(2),
                getListFromType(3),
                getListFromType(4)
              ]),
            )
          ],
        ),
      ),
    );
  }
  Widget getListFromType(int dietType){
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index){
          return Container(
              padding: EdgeInsets.all(18),
              margin: EdgeInsets.all(18) ,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(18)
              ),
              child: Text(" Exercises number  $index", style: TextStyle(color: Colors.white),));
        });
  }
}
