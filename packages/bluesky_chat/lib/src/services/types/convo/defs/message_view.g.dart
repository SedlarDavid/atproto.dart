// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'message_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageViewImpl _$$MessageViewImplFromJson(Map json) => $checkedCreate(
      r'_$MessageViewImpl',
      json,
      ($checkedConvert) {
        final val = _$MessageViewImpl(
          id: $checkedConvert('id', (v) => v as String),
          rev: $checkedConvert('rev', (v) => v as String),
          text: $checkedConvert('text', (v) => v as String),
          facets: $checkedConvert(
              'facets',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Facet.fromJson(Map<String, Object?>.from(e as Map)))
                  .toList()),
          embed: $checkedConvert(
              'embed',
              (v) => _$JsonConverterFromJson<Map<String, dynamic>,
                      UConvoMessageEmbed>(
                  v, unionConvoMessageEmbedConverter.fromJson)),
          sender: $checkedConvert(
              'sender',
              (v) => MessageViewSender.fromJson(
                  Map<String, Object?>.from(v as Map))),
          sentAt: $checkedConvert('sentAt', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$MessageViewImplToJson(_$MessageViewImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'rev': instance.rev,
    'text': instance.text,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('facets', instance.facets?.map((e) => e.toJson()).toList());
  writeNotNull(
      'embed',
      _$JsonConverterToJson<Map<String, dynamic>, UConvoMessageEmbed>(
          instance.embed, unionConvoMessageEmbedConverter.toJson));
  val['sender'] = instance.sender.toJson();
  val['sentAt'] = instance.sentAt.toIso8601String();
  return val;
}

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
