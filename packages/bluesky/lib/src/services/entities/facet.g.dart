// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'facet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FacetImpl _$$FacetImplFromJson(Map json) => $checkedCreate(
      r'_$FacetImpl',
      json,
      ($checkedConvert) {
        final val = _$FacetImpl(
          type: $checkedConvert(r'$type', (v) => v as String?),
          index: $checkedConvert('index',
              (v) => ByteSlice.fromJson(Map<String, Object?>.from(v as Map))),
          features: $checkedConvert(
              'features',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      facetFeatureConverter.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {'type': r'$type'},
    );

Map<String, dynamic> _$$FacetImplToJson(_$FacetImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(r'$type', instance.type);
  val['index'] = instance.index.toJson();
  val['features'] =
      instance.features.map(facetFeatureConverter.toJson).toList();
  return val;
}