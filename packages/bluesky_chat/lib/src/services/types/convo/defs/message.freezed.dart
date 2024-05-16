// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConvoMessage _$ConvoMessageFromJson(Map<String, dynamic> json) {
  return _ConvoMessage.fromJson(json);
}

/// @nodoc
mixin _$ConvoMessage {
  String? get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  List<Facet>? get facets => throw _privateConstructorUsedError;
  @unionConvoMessageEmbedConverter
  UConvoMessageEmbed? get embed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConvoMessageCopyWith<ConvoMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConvoMessageCopyWith<$Res> {
  factory $ConvoMessageCopyWith(
          ConvoMessage value, $Res Function(ConvoMessage) then) =
      _$ConvoMessageCopyWithImpl<$Res, ConvoMessage>;
  @useResult
  $Res call(
      {String? id,
      String text,
      List<Facet>? facets,
      @unionConvoMessageEmbedConverter UConvoMessageEmbed? embed});

  $UConvoMessageEmbedCopyWith<$Res>? get embed;
}

/// @nodoc
class _$ConvoMessageCopyWithImpl<$Res, $Val extends ConvoMessage>
    implements $ConvoMessageCopyWith<$Res> {
  _$ConvoMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? text = null,
    Object? facets = freezed,
    Object? embed = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      facets: freezed == facets
          ? _value.facets
          : facets // ignore: cast_nullable_to_non_nullable
              as List<Facet>?,
      embed: freezed == embed
          ? _value.embed
          : embed // ignore: cast_nullable_to_non_nullable
              as UConvoMessageEmbed?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UConvoMessageEmbedCopyWith<$Res>? get embed {
    if (_value.embed == null) {
      return null;
    }

    return $UConvoMessageEmbedCopyWith<$Res>(_value.embed!, (value) {
      return _then(_value.copyWith(embed: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConvoMessageImplCopyWith<$Res>
    implements $ConvoMessageCopyWith<$Res> {
  factory _$$ConvoMessageImplCopyWith(
          _$ConvoMessageImpl value, $Res Function(_$ConvoMessageImpl) then) =
      __$$ConvoMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String text,
      List<Facet>? facets,
      @unionConvoMessageEmbedConverter UConvoMessageEmbed? embed});

  @override
  $UConvoMessageEmbedCopyWith<$Res>? get embed;
}

/// @nodoc
class __$$ConvoMessageImplCopyWithImpl<$Res>
    extends _$ConvoMessageCopyWithImpl<$Res, _$ConvoMessageImpl>
    implements _$$ConvoMessageImplCopyWith<$Res> {
  __$$ConvoMessageImplCopyWithImpl(
      _$ConvoMessageImpl _value, $Res Function(_$ConvoMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? text = null,
    Object? facets = freezed,
    Object? embed = freezed,
  }) {
    return _then(_$ConvoMessageImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      facets: freezed == facets
          ? _value._facets
          : facets // ignore: cast_nullable_to_non_nullable
              as List<Facet>?,
      embed: freezed == embed
          ? _value.embed
          : embed // ignore: cast_nullable_to_non_nullable
              as UConvoMessageEmbed?,
    ));
  }
}

/// @nodoc

@jsonSerializable
class _$ConvoMessageImpl implements _ConvoMessage {
  const _$ConvoMessageImpl(
      {this.id,
      required this.text,
      final List<Facet>? facets,
      @unionConvoMessageEmbedConverter this.embed})
      : _facets = facets;

  factory _$ConvoMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConvoMessageImplFromJson(json);

  @override
  final String? id;
  @override
  final String text;
  final List<Facet>? _facets;
  @override
  List<Facet>? get facets {
    final value = _facets;
    if (value == null) return null;
    if (_facets is EqualUnmodifiableListView) return _facets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @unionConvoMessageEmbedConverter
  final UConvoMessageEmbed? embed;

  @override
  String toString() {
    return 'ConvoMessage(id: $id, text: $text, facets: $facets, embed: $embed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConvoMessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(other._facets, _facets) &&
            (identical(other.embed, embed) || other.embed == embed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, text,
      const DeepCollectionEquality().hash(_facets), embed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConvoMessageImplCopyWith<_$ConvoMessageImpl> get copyWith =>
      __$$ConvoMessageImplCopyWithImpl<_$ConvoMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConvoMessageImplToJson(
      this,
    );
  }
}

abstract class _ConvoMessage implements ConvoMessage {
  const factory _ConvoMessage(
          {final String? id,
          required final String text,
          final List<Facet>? facets,
          @unionConvoMessageEmbedConverter final UConvoMessageEmbed? embed}) =
      _$ConvoMessageImpl;

  factory _ConvoMessage.fromJson(Map<String, dynamic> json) =
      _$ConvoMessageImpl.fromJson;

  @override
  String? get id;
  @override
  String get text;
  @override
  List<Facet>? get facets;
  @override
  @unionConvoMessageEmbedConverter
  UConvoMessageEmbed? get embed;
  @override
  @JsonKey(ignore: true)
  _$$ConvoMessageImplCopyWith<_$ConvoMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
