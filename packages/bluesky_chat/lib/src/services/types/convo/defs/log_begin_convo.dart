// Copyright 2024 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:atproto_core/atproto_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'log_begin_convo.freezed.dart';
part 'log_begin_convo.g.dart';

/// https://atprotodart.com/docs/lexicons/chat/bsky/convo/defs/#logbeginconvo
@freezed
class ConvoLogBeginConvo with _$ConvoLogBeginConvo {
  @jsonSerializable
  const factory ConvoLogBeginConvo({
    required String rev,
    required String convoId,
  }) = _ConvoLogBeginConvo;

  factory ConvoLogBeginConvo.fromJson(Map<String, Object?> json) =>
      _$ConvoLogBeginConvoFromJson(json);
}
