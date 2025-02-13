// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_associated.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileAssociated _$ProfileAssociatedFromJson(Map<String, dynamic> json) {
  return _ProfileAssociated.fromJson(json);
}

/// @nodoc
mixin _$ProfileAssociated {
  @typeKey
  String get type => throw _privateConstructorUsedError;
  int get lists => throw _privateConstructorUsedError;
  int get feedgens => throw _privateConstructorUsedError;
  int get starterPacks => throw _privateConstructorUsedError;
  bool get labeler => throw _privateConstructorUsedError;
  ActorProfileAssociatedChat? get chat => throw _privateConstructorUsedError;

  /// Serializes this ProfileAssociated to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileAssociated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileAssociatedCopyWith<ProfileAssociated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileAssociatedCopyWith<$Res> {
  factory $ProfileAssociatedCopyWith(
          ProfileAssociated value, $Res Function(ProfileAssociated) then) =
      _$ProfileAssociatedCopyWithImpl<$Res, ProfileAssociated>;
  @useResult
  $Res call(
      {@typeKey String type,
      int lists,
      int feedgens,
      int starterPacks,
      bool labeler,
      ActorProfileAssociatedChat? chat});

  $ActorProfileAssociatedChatCopyWith<$Res>? get chat;
}

/// @nodoc
class _$ProfileAssociatedCopyWithImpl<$Res, $Val extends ProfileAssociated>
    implements $ProfileAssociatedCopyWith<$Res> {
  _$ProfileAssociatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileAssociated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? lists = null,
    Object? feedgens = null,
    Object? starterPacks = null,
    Object? labeler = null,
    Object? chat = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      lists: null == lists
          ? _value.lists
          : lists // ignore: cast_nullable_to_non_nullable
              as int,
      feedgens: null == feedgens
          ? _value.feedgens
          : feedgens // ignore: cast_nullable_to_non_nullable
              as int,
      starterPacks: null == starterPacks
          ? _value.starterPacks
          : starterPacks // ignore: cast_nullable_to_non_nullable
              as int,
      labeler: null == labeler
          ? _value.labeler
          : labeler // ignore: cast_nullable_to_non_nullable
              as bool,
      chat: freezed == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as ActorProfileAssociatedChat?,
    ) as $Val);
  }

  /// Create a copy of ProfileAssociated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActorProfileAssociatedChatCopyWith<$Res>? get chat {
    if (_value.chat == null) {
      return null;
    }

    return $ActorProfileAssociatedChatCopyWith<$Res>(_value.chat!, (value) {
      return _then(_value.copyWith(chat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileAssociatedImplCopyWith<$Res>
    implements $ProfileAssociatedCopyWith<$Res> {
  factory _$$ProfileAssociatedImplCopyWith(_$ProfileAssociatedImpl value,
          $Res Function(_$ProfileAssociatedImpl) then) =
      __$$ProfileAssociatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@typeKey String type,
      int lists,
      int feedgens,
      int starterPacks,
      bool labeler,
      ActorProfileAssociatedChat? chat});

  @override
  $ActorProfileAssociatedChatCopyWith<$Res>? get chat;
}

/// @nodoc
class __$$ProfileAssociatedImplCopyWithImpl<$Res>
    extends _$ProfileAssociatedCopyWithImpl<$Res, _$ProfileAssociatedImpl>
    implements _$$ProfileAssociatedImplCopyWith<$Res> {
  __$$ProfileAssociatedImplCopyWithImpl(_$ProfileAssociatedImpl _value,
      $Res Function(_$ProfileAssociatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileAssociated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? lists = null,
    Object? feedgens = null,
    Object? starterPacks = null,
    Object? labeler = null,
    Object? chat = freezed,
  }) {
    return _then(_$ProfileAssociatedImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      lists: null == lists
          ? _value.lists
          : lists // ignore: cast_nullable_to_non_nullable
              as int,
      feedgens: null == feedgens
          ? _value.feedgens
          : feedgens // ignore: cast_nullable_to_non_nullable
              as int,
      starterPacks: null == starterPacks
          ? _value.starterPacks
          : starterPacks // ignore: cast_nullable_to_non_nullable
              as int,
      labeler: null == labeler
          ? _value.labeler
          : labeler // ignore: cast_nullable_to_non_nullable
              as bool,
      chat: freezed == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as ActorProfileAssociatedChat?,
    ));
  }
}

/// @nodoc

@jsonSerializable
class _$ProfileAssociatedImpl implements _ProfileAssociated {
  const _$ProfileAssociatedImpl(
      {@typeKey this.type = appBskyActorDefsProfileAssociated,
      this.lists = 0,
      this.feedgens = 0,
      this.starterPacks = 0,
      this.labeler = false,
      this.chat});

  factory _$ProfileAssociatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileAssociatedImplFromJson(json);

  @override
  @typeKey
  final String type;
  @override
  @JsonKey()
  final int lists;
  @override
  @JsonKey()
  final int feedgens;
  @override
  @JsonKey()
  final int starterPacks;
  @override
  @JsonKey()
  final bool labeler;
  @override
  final ActorProfileAssociatedChat? chat;

  @override
  String toString() {
    return 'ProfileAssociated(type: $type, lists: $lists, feedgens: $feedgens, starterPacks: $starterPacks, labeler: $labeler, chat: $chat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileAssociatedImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.lists, lists) || other.lists == lists) &&
            (identical(other.feedgens, feedgens) ||
                other.feedgens == feedgens) &&
            (identical(other.starterPacks, starterPacks) ||
                other.starterPacks == starterPacks) &&
            (identical(other.labeler, labeler) || other.labeler == labeler) &&
            (identical(other.chat, chat) || other.chat == chat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, lists, feedgens, starterPacks, labeler, chat);

  /// Create a copy of ProfileAssociated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileAssociatedImplCopyWith<_$ProfileAssociatedImpl> get copyWith =>
      __$$ProfileAssociatedImplCopyWithImpl<_$ProfileAssociatedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileAssociatedImplToJson(
      this,
    );
  }
}

abstract class _ProfileAssociated implements ProfileAssociated {
  const factory _ProfileAssociated(
      {@typeKey final String type,
      final int lists,
      final int feedgens,
      final int starterPacks,
      final bool labeler,
      final ActorProfileAssociatedChat? chat}) = _$ProfileAssociatedImpl;

  factory _ProfileAssociated.fromJson(Map<String, dynamic> json) =
      _$ProfileAssociatedImpl.fromJson;

  @override
  @typeKey
  String get type;
  @override
  int get lists;
  @override
  int get feedgens;
  @override
  int get starterPacks;
  @override
  bool get labeler;
  @override
  ActorProfileAssociatedChat? get chat;

  /// Create a copy of ProfileAssociated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileAssociatedImplCopyWith<_$ProfileAssociatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
