// Copyright 2023 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:xrpc/xrpc.dart' as xrpc;

import '../create_record_command.dart';

/// `app.bsky.feed.post`
class PostCommand extends CreateRecordCommand {
  /// Returns the new instance of [PostCommand].
  PostCommand() {
    argParser
      ..addOption(
        'text',
        help: 'Text to be posted to Bluesky Social.',
        defaultsTo: '',
      )
      ..addOption(
        'created-at',
        help: 'Date and time the post is created in ISO 8601 format.',
        defaultsTo: DateTime.now().toUtc().toIso8601String(),
      );
  }

  @override
  String get name => 'post';

  @override
  String get description => 'Post to Bluesky Social.';

  @override
  final String invocation = 'bsky post [text] [created-at]';

  @override
  xrpc.NSID get collection => xrpc.NSID.create(
        'feed.bsky.app',
        'post',
      );

  @override
  Map<String, dynamic> get record => {
        'text': argResults!['text'],
        'createdAt': argResults!['created-at'],
      };
}