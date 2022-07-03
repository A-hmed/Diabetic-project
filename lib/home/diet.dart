import 'package:flutter/material.dart';

class Diet extends StatelessWidget {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
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
                Tab(child: Text("Diet Type 1", style: TextStyle(color: Colors.black),),),
                Tab(child: Text("Diet Type 2", style: TextStyle(color: Colors.black))),
                Tab(child: Text("Diet Type 3", style: TextStyle(color: Colors.black))),
              ],
            ),
            Expanded(
              child: TabBarView(children: [
                getListFromType(1),
                getListFromType(2),
                getListFromType(3)

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
          child: Text("Diet Number $index", style: TextStyle(color: Colors.white),));
    });
  }
}
