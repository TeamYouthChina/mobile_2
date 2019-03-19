// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ChatMessage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatMessageList _$ChatMessageListFromJson(Map<String, dynamic> json) {
  return ChatMessageList(
      chatMessageList: (json['chatMessageList'] as List)
          ?.map((e) => e == null
              ? null
              : ChatMessage.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$ChatMessageListToJson(ChatMessageList instance) =>
    <String, dynamic>{'chatMessageList': instance.chatMessageList};

ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) {
  return ChatMessage(
      message: json['message'] == null
          ? null
          : Message.fromJson(json['message'] as Map<String, dynamic>),
      senderProfile: json['senderProfile'] == null
          ? null
          : SenderProfile.fromJson(
              json['senderProfile'] as Map<String, dynamic>),
      timConversation: json['timConversation'] == null
          ? null
          : TimConversation.fromJson(
              json['timConversation'] as Map<String, dynamic>));
}

Map<String, dynamic> _$ChatMessageToJson(ChatMessage instance) =>
    <String, dynamic>{
      'message': instance.message,
      'senderProfile': instance.senderProfile,
      'timConversation': instance.timConversation
    };

Message _$MessageFromJson(Map<String, dynamic> json) {
  return Message(
      text: json['text'] as String,
      identifier: json['identifier'] as String,
      type: json['type'] as String);
}

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'text': instance.text,
      'identifier': instance.identifier,
      'type': instance.type
    };

TimConversation _$TimConversationFromJson(Map<String, dynamic> json) {
  return TimConversation(peer: json['peer'] as String);
}

Map<String, dynamic> _$TimConversationToJson(TimConversation instance) =>
    <String, dynamic>{'peer': instance.peer};

SenderProfile _$SenderProfileFromJson(Map<String, dynamic> json) {
  return SenderProfile();
}

Map<String, dynamic> _$SenderProfileToJson(SenderProfile instance) =>
    <String, dynamic>{};

Conversation _$ConversationFromJson(Map<String, dynamic> json) {
  return Conversation(
      identifer: json['identifer'] as String,
      peer: json['peer'] as String,
      type: json['type'] as String);
}

Map<String, dynamic> _$ConversationToJson(Conversation instance) =>
    <String, dynamic>{
      'identifer': instance.identifer,
      'peer': instance.peer,
      'type': instance.type
    };
