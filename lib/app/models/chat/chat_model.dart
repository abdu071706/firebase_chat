class ChatModel {
  String? senderid;
  String? sender;
  String? sms;
  String? smsid;
  ChatModel({
    this.sender = '',
    this.senderid = '',
    this.sms = '',
    this.smsid = '',
  });

  Map<String, dynamic> toJson() => {
        'sender': sender,
        'senderid': senderid,
        'sms': sms,
        'smsid': smsid,
      };
  factory ChatModel.fromJson(Map<String, dynamic> json) => ChatModel(
        sender: json['sender'],
        senderid: json['senderid'],
        sms: json['sms'],
        smsid: json['smsid'],
      );
}

final ChatModel chatModel = ChatModel();
