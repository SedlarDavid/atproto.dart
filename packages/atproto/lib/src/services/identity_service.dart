// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:atproto_core/atproto_core.dart' as core;

// 🌎 Project imports:
import '../nsids.g.dart' as ns;
import 'base_service.dart';
import 'entities/did.dart';

/// Represents `com.atproto.identity.*` service.
sealed class IdentityService {
  /// Returns the new instance of [IdentityService].
  factory IdentityService({
    required String did,
    required core.Protocol protocol,
    required String service,
    required core.ClientContext context,
    final core.GetClient? mockedGetClient,
    final core.PostClient? mockedPostClient,
  }) =>
      _IdentityService(
        did: did,
        protocol: protocol,
        service: service,
        context: context,
        mockedGetClient: mockedGetClient,
        mockedPostClient: mockedPostClient,
      );

  /// Provides the DID of a repo.
  ///
  /// ## Parameters
  ///
  /// - [handle]: The handle to resolve.
  ///
  /// ## Lexicon
  ///
  /// - com.atproto.identity.resolveHandle
  ///
  /// ## Reference
  ///
  /// - https://github.com/bluesky-social/atproto/blob/main/lexicons/com/atproto/identity/resolveHandle.json
  Future<core.XRPCResponse<DID>> findDID({
    required String handle,
  });

  /// Updates the handle of the account.
  ///
  /// ## Parameters
  ///
  /// - [handle]: The handle to be updated.
  ///
  /// ## Lexicon
  ///
  /// - com.atproto.identity.updateHandle
  ///
  /// ## Reference
  ///
  /// - https://github.com/bluesky-social/atproto/blob/main/lexicons/com/atproto/identity/updateHandle.json
  Future<core.XRPCResponse<core.EmptyData>> updateHandle({
    required String handle,
  });
}

final class _IdentityService extends ATProtoBaseService
    implements IdentityService {
  /// Returns the new instance of [_IdentityService].
  _IdentityService({
    required super.did,
    required super.protocol,
    required super.service,
    required super.context,
    super.mockedGetClient,
    super.mockedPostClient,
  });

  @override
  Future<core.XRPCResponse<DID>> findDID({
    required String handle,
  }) async =>
      await _findDID(
        handle: handle,
        to: DID.fromJson,
      );

  @override
  Future<core.XRPCResponse<core.EmptyData>> updateHandle({
    required String handle,
  }) async =>
      await super.post(
        ns.comAtprotoIdentityUpdateHandle,
        body: {
          'handle': handle,
        },
      );

  Future<core.XRPCResponse<T>> _findDID<T>({
    required String handle,
    core.To<T>? to,
  }) async =>
      await super.get(
        ns.comAtprotoIdentityResolveHandle,
        parameters: {
          'handle': handle,
        },
        to: to,
      );
}