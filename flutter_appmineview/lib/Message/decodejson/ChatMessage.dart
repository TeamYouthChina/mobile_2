import 'package:json_annotation/json_annotation.dart';

part 'ChatMessage.g.dart';



@JsonSerializable()
class ChatMessageList extends Object {
  final List<ChatMessage> chatMessageList;
  ChatMessageList({this.chatMessageList});

  factory ChatMessageList.fromJson(Map<String, dynamic> json) => _$ChatMessageListFromJson(json);
}

@JsonSerializable()
class ChatMessage extends Object{
  ChatMessage({this.message,this.senderProfile,this.timConversation});
  final Message message;
  final SenderProfile senderProfile;
  final TimConversation timConversation;

  factory ChatMessage.fromJson(Map<String, dynamic> json) => _$ChatMessageFromJson(json);
}

@JsonSerializable()
class Message extends Object {
  Message({this.text,this.identifier,this.type});
  final String text;
  final String identifier;
  final String type;

  factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);
}

@JsonSerializable()
class TimConversation extends Object {
  final String peer;
  TimConversation({this.peer});
  factory TimConversation.fromJson(Map<String, dynamic> json) => _$TimConversationFromJson(json);
}

@JsonSerializable()
class SenderProfile extends Object {
  SenderProfile();
factory SenderProfile.fromJson(Map<String, dynamic> json) => _$SenderProfileFromJson(json);
}

class Conversationlist extends Object {
  List<Conversation> conversationlist;
  Conversationlist({this.conversationlist});

  factory Conversationlist.fromJson(List<dynamic> parsedJson) {

    List<Conversation> conversationlist = new List<Conversation>();
    conversationlist = parsedJson.map((i)=>Conversation.fromJson(i)).toList();

    return new Conversationlist(
        conversationlist: conversationlist
    );
  }
}

@JsonSerializable()
class Conversation extends Object {
  String identifer;
  String peer;
  String type;

  Conversation({
    this.identifer,
    this.peer,
    this.type
  });

  factory Conversation.fromJson(Map<String, dynamic> json)=> _$ConversationFromJson(json);
}
