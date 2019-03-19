

class ConversationList extends Object {
  List<Conversations> conversationList;
  ConversationList({this.conversationList});

  factory ConversationList.fromJson(Map<String, dynamic> json) {
    return ConversationList(
        conversationList: (json['conversationList'] as List)
            ?.map((e) => e == null
            ? null
            : Conversations.fromJson(e as Map<String, dynamic>))
            ?.toList());
  }
}



class Conversations extends Object{
  Conversations({this.identifer,this.peer,this.type});
  String identifer;
  String peer;
  String type;

  factory Conversations.fromJson(Map<String, dynamic> json) { 
    return Conversations(
        identifer: json['identifer'] as String,
        peer: json['peer'] as String,
        type: json['type'] as String);
  }
}

