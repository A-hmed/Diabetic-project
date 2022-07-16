class Message {
  String senderId;
  String receiverId;
  String content;
  int dateTime;

  Message({required this.senderId, required this.receiverId, required this.content, required this.dateTime});

  Message.fromJson(Map<String, dynamic> json)
      : this(
            senderId: json['sender_id'] as String,
            receiverId: json['receiver_id'] as String,
            content: json['content'] as String,
            dateTime: json['date_time'] as int);

  Map<String, dynamic> toJson() {
    return {
      'sender_id': senderId,
      'receiver_id': receiverId,
      'content': content,
      'date_time': dateTime
    };
  }
}