// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationImpl _$$NotificationImplFromJson(Map json) => $checkedCreate(
      r'_$NotificationImpl',
      json,
      ($checkedConvert) {
        final val = _$NotificationImpl(
          cid: $checkedConvert('cid', (v) => v as String),
          uri: $checkedConvert(
              'uri', (v) => const AtUriConverter().fromJson(v as String)),
          author: $checkedConvert('author',
              (v) => Actor.fromJson(Map<String, Object?>.from(v as Map))),
          reason: $checkedConvert(
              'reason',
              (v) =>
                  $enumDecodeNullable(_$NotificationReasonEnumMap, v) ??
                  NotificationReason.unknown),
          reasonSubject: $checkedConvert(
              'reasonSubject',
              (v) => _$JsonConverterFromJson<String, AtUri>(
                  v, const AtUriConverter().fromJson)),
          isRead: $checkedConvert('isRead', (v) => v as bool? ?? false),
          record: $checkedConvert(
              'record',
              (v) => (v as Map?)?.map(
                    (k, e) => MapEntry(k as String, e),
                  )),
          labels: $checkedConvert(
              'labels',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Label.fromJson(Map<String, Object?>.from(e as Map)))
                  .toList()),
          indexedAt:
              $checkedConvert('indexedAt', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$NotificationImplToJson(_$NotificationImpl instance) =>
    <String, dynamic>{
      'cid': instance.cid,
      'uri': const AtUriConverter().toJson(instance.uri),
      'author': instance.author.toJson(),
      'reason': _$NotificationReasonEnumMap[instance.reason]!,
      if (_$JsonConverterToJson<String, AtUri>(
              instance.reasonSubject, const AtUriConverter().toJson)
          case final value?)
        'reasonSubject': value,
      'isRead': instance.isRead,
      if (instance.record case final value?) 'record': value,
      if (instance.labels?.map((e) => e.toJson()).toList() case final value?)
        'labels': value,
      'indexedAt': instance.indexedAt.toIso8601String(),
    };

const _$NotificationReasonEnumMap = {
  NotificationReason.like: 'like',
  NotificationReason.repost: 'repost',
  NotificationReason.follow: 'follow',
  NotificationReason.mention: 'mention',
  NotificationReason.reply: 'reply',
  NotificationReason.quote: 'quote',
  NotificationReason.starterpackJoined: 'starterpackJoined',
  NotificationReason.verified: 'verified',
  NotificationReason.unverified: 'unverified',
  NotificationReason.likeViaRepost: 'likeViaRepost',
  NotificationReason.repostViaRepost: 'repostViaRepost',
  NotificationReason.subscribedPost: 'subscribedPost',
  NotificationReason.unknown: 'unknown',
};

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
