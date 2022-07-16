import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blood_bank_app/provider/auth_provider.dart';
import 'package:provider/provider.dart';

import '../data/Message.dart';
import '../data/user.dart';
import 'message_item.dart';

class ChatDetailsScreen extends StatefulWidget {
  MyUser receiver;
  ChatDetailsScreen({Key? key, required this.receiver}) : super(key: key);
  @override
  State<ChatDetailsScreen> createState() => _ChatDetailsScreenState();
}

class _ChatDetailsScreenState extends State<ChatDetailsScreen> {
  List<Message> messages = [];
  String messageContent = '';
  String? chatId;
  TextEditingController messageController = TextEditingController();
  late AuthProvider provider;
  @override
  Widget build(BuildContext context) {
    provider = Provider.of(context);
    if (chatId == null) {
      fetchChatId();
    }
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          splashRadius: 25,
          padding: EdgeInsets.zero,
          icon: const Icon(Icons.arrow_back, color: Colors.green),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        title: Row(
          children: [
            const CircleAvatar(
                radius: 20,
                backgroundColor: Colors.blue,
                child: Icon(Icons.person)),
            const SizedBox(
              width: 20,
            ),
            Text(
              widget.receiver.userName,
              textAlign: TextAlign.start,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                  stream: getAllMessagesStream(chatId),
                  builder: (context, asyncSnapshot) {
                    if (asyncSnapshot.hasData) {
                      messages = asyncSnapshot.data!.docs
                          .map((doc) {
                            return Message.fromJson(doc.data() as Map<String, dynamic>);
                          })
                          .toList()
                          .reversed
                          .toList();
                      return ListView.builder(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          itemCount: messages.length,
                          reverse: true,
                          itemBuilder: (context, index) {
                            return MessageItem(
                              message: messages[index],
                              rightSided: provider.user!.id ==
                                  messages[index].senderId,
                            );
                          });
                    } else if (asyncSnapshot.hasError) {
                      print("error ${asyncSnapshot.error}, ${asyncSnapshot.stackTrace}");
                      return const Center(
                          child: Text('Error while loading messages', style: TextStyle(color: Colors.red),));
                    } else {
                      return const Center(child:  CircularProgressIndicator());
                    }
                  }),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      border: Border.all(
                        color: Colors.grey[300]!,
                      ),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: TextField(
                      controller: messageController,
                      onChanged: (text) {
                        messageContent = text;
                      },
                      decoration: InputDecoration.collapsed(
                        hintText: 'Type a message...',
                        filled: true,
                        fillColor: Colors.grey[300],
                        hintStyle: TextStyle(
                          color: Colors.grey[500],
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    sendMessage();
                  },
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.white),
                    ),
                    child: const Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void sendMessage() async {
    Message message = Message(
        senderId: provider.user!.id,
        dateTime: DateTime.now().millisecondsSinceEpoch,
        content: messageContent,
        receiverId: widget.receiver.id);
    sendMessageViaFS(chatId!, message).then((_) {
      messageController.clear();
    });
  }
  static Future<void> sendMessageViaFS(String chatId, Message message) {
    return FirebaseFirestore.instance
        .collection("chats")
        .doc(chatId)
        .collection("messages")
        .doc()
        .set(message.toJson());
  }

  Future<String> getChatId() async {
    String firstPersonId = provider.user!.id, secondPersonId = widget.receiver.id;
    QuerySnapshot chatCollectionReference = await FirebaseFirestore.instance
        .collection("chats")
        .get();
    List<QueryDocumentSnapshot> chats = chatCollectionReference.docs;
    for (int i = 0; i < chats.length; i++) {

     Map<String, dynamic> chatAsJson = chats[i].data() as Map<String, dynamic>;
      if ((firstPersonId == chatAsJson['first_person'] ||
          firstPersonId == chatAsJson['second_person']) &&
          (secondPersonId == chatAsJson['first_person'] ||
              secondPersonId == chatAsJson['second_person'])) {
        chatId = chats[i].id;
      }
    }
    if(chatId != null ){
      return chatId!;
    }
    chatId = createChat(
          firstPersonId, secondPersonId);
    return chatId!;
  }

  fetchChatId() async {
    chatId = await getChatId();
    print("el chat id et3dl le $chatId");
    setState(() {});
  }

  getAllMessagesStream(String? chatId) {
    return FirebaseFirestore.instance
        .collection("chats")
        .doc(chatId)
        .collection("messages")
        .orderBy('date_time')
        .snapshots();
  }

  String createChat(String firstPersonId, String secondPersonId) {
    DocumentReference docRef = FirebaseFirestore.instance
        .collection("chats")
        .doc();
    docRef.set({
      'first_person': firstPersonId,
      'second_person': secondPersonId,
    });
    return docRef.id;
  }
}
