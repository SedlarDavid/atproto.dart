// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'block_list_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BlockListRecord _$$_BlockListRecordFromJson(Map json) => $checkedCreate(
      r'_$_BlockListRecord',
      json,
      ($checkedConvert) {
        final val = _$_BlockListRecord(
          type: $checkedConvert(
              r'$type', (v) => v as String? ?? appBskyGraphListblock),
          subject: $checkedConvert(
              'subject', (v) => atUriConverter.fromJson(v as String)),
          createdAt:
              $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {'type': r'$type'},
    );

Map<String, dynamic> _$$_BlockListRecordToJson(_$_BlockListRecord instance) =>
    <String, dynamic>{
      r'$type': instance.type,
      'subject': atUriConverter.toJson(instance.subject),
      'createdAt': instance.createdAt.toIso8601String(),
    };
