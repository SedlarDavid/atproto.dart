// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MuteConvoOutputImpl _$$MuteConvoOutputImplFromJson(Map json) =>
    $checkedCreate(
      r'_$MuteConvoOutputImpl',
      json,
      ($checkedConvert) {
        final val = _$MuteConvoOutputImpl(
          convo: $checkedConvert('convo',
              (v) => ConvoView.fromJson(Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$MuteConvoOutputImplToJson(
        _$MuteConvoOutputImpl instance) =>
    <String, dynamic>{
      'convo': instance.convo.toJson(),
    };
