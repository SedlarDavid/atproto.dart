// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'posts_by_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostsByQuery _$$_PostsByQueryFromJson(Map json) => $checkedCreate(
      r'_$_PostsByQuery',
      json,
      ($checkedConvert) {
        final val = _$_PostsByQuery(
          posts: $checkedConvert(
              'posts',
              (v) => (v as List<dynamic>)
                  .map(
                      (e) => Post.fromJson(Map<String, Object?>.from(e as Map)))
                  .toList()),
          hitsTotal: $checkedConvert('hitsTotal', (v) => v as int? ?? 0),
          cursor: $checkedConvert('cursor', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_PostsByQueryToJson(_$_PostsByQuery instance) =>
    <String, dynamic>{
      'posts': instance.posts.map((e) => e.toJson()).toList(),
      'hitsTotal': instance.hitsTotal,
      'cursor': instance.cursor,
    };
