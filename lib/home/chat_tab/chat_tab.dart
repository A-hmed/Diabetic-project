import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blood_bank_app/provider/auth_provider.dart';
import 'package:provider/provider.dart';

import '../../data/user.dart';
import 'chat_item.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  Future<List<MyUser>> usersFuture = getAllUsers();
  List<MyUser> users = [];
  late AuthProvider provider;

  @override
  Widget build(BuildContext context) {
    provider = Provider.of(context);
    return FutureBuilder<List<MyUser>>(
        future: usersFuture,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            users = snapshot.data!;
            for (int i = 0; i < users.length; i++) {
              if (provider.user!.email == users[i].email) {
                users.removeAt(i);
              }
            }
            return SafeArea(
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.height * 0.03,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Community',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Expanded(
                      child: ListView.separated(
                          itemBuilder: (context, index) {
                            return ChatItem(users[index]);
                          },
                          separatorBuilder: (context, index) {
                            return const Divider(
                              color: Colors.grey,
                              thickness: 1,
                            );
                          },
                          itemCount: users.length),
                    ),
                  ],
                ),
              ),
            );
          } else if (snapshot.hasError) {
            print("--- ${snapshot.error}  \n ${snapshot.stackTrace}");
            return const Center(
                child: Text(
              'Error while loading your chats list',
            ));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }

  static Future<List<MyUser>> getAllUsers() async {
    QuerySnapshot<MyUser> usersRef = await MyUser.withConverter().get();
    usersRef.docs.forEach((element) {});
    return usersRef.docs.map((e) {
      return e.data();
    }).toList();
  }
}
