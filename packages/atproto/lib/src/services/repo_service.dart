// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🎯 Dart imports:
import 'dart:typed_data';

// 📦 Package imports:
import 'package:atproto_core/atproto_core.dart' as core;

// 🌎 Project imports:
import '../nsids.g.dart' as ns;
import 'base_service.dart';
import 'entities/batch_action.dart';
import 'entities/blob_data.dart';
import 'entities/create_action.dart';
import 'entities/delete_action.dart';
import 'entities/record.dart';
import 'entities/records.dart';
import 'entities/repo_info.dart';
import 'entities/strong_ref.dart';
import 'entities/update_action.dart';

/// Represents `com.atproto.repo.*` service.
final class RepoService extends ATProtoBaseService {
  RepoService({
    required super.did,
    required super.protocol,
    required super.service,
    required super.context,
    super.mockedGetClient,
    super.mockedPostClient,
  });

  /// https://atprotodart.com/docs/lexicons/com/atproto/repo/createRecord
  Future<core.XRPCResponse<StrongRef>> createRecord({
    required core.NSID collection,
    required Map<String, dynamic> record,
    String? rkey,
    bool? validate,
    String? swapRecordCid,
    String? swapCommitCid,
  }) async =>
      await super.post(
        ns.comAtprotoRepoCreateRecord,
        body: {
          'repo': did,
          'collection': collection.toString(),
          'rkey': rkey,
          'record': record,
          'validate': validate,
          'swapRecord': swapRecordCid,
          'swapCommit': swapCommitCid
        },
        to: StrongRef.fromJson,
      );

  /// https://atprotodart.com/docs/lexicons/com/atproto/repo/getRecord
  Future<core.XRPCResponse<Record>> getRecord({
    required core.AtUri uri,
    String? cid,
  }) async =>
      // ignore: deprecated_member_use_from_same_package
      await findRecord(
        uri: uri,
        cid: cid,
      );

  /// https://atprotodart.com/docs/lexicons/com/atproto/repo/listRecords
  Future<core.XRPCResponse<Records>> listRecords({
    required String repo,
    required core.NSID collection,
    int? limit,
    bool? reverse,
    String? rkeyStart,
    String? rkeyEnd,
    String? cursor,
  }) async =>
      // ignore: deprecated_member_use_from_same_package
      await findRecords(
        repo: repo,
        collection: collection,
        limit: limit,
        reverse: reverse,
        rkeyStart: rkeyStart,
        rkeyEnd: rkeyEnd,
        cursor: cursor,
      );

  /// https://atprotodart.com/docs/lexicons/com/atproto/repo/deleteRecord
  Future<core.XRPCResponse<core.EmptyData>> deleteRecord({
    required core.AtUri uri,
    String? swapRecordCid,
    String? swapCommitCid,
  }) async =>
      await super.post<core.EmptyData>(
        ns.comAtprotoRepoDeleteRecord,
        body: {
          'repo': did,
          'collection': uri.collection,
          'rkey': uri.rkey,
          'swapRecord': swapRecordCid,
          'swapCommit': swapCommitCid
        },
      );

  /// https://atprotodart.com/docs/lexicons/com/atproto/repo/putRecord
  Future<core.XRPCResponse<StrongRef>> putRecord({
    required core.AtUri uri,
    required Map<String, dynamic> record,
    bool? validate,
    String? swapRecordCid,
    String? swapCommitCid,
  }) async =>
      // ignore: deprecated_member_use_from_same_package
      await updateRecord(
        uri: uri,
        record: record,
        validate: validate,
        swapRecordCid: swapRecordCid,
        swapCommitCid: swapCommitCid,
      );

  /// https://atprotodart.com/docs/lexicons/com/atproto/repo/uploadBlob
  Future<core.XRPCResponse<BlobData>> uploadBlob(final Uint8List bytes) async =>
      await super.upload(
        ns.comAtprotoRepoUploadBlob,
        bytes,
        to: BlobData.fromJson,
      );

  /// https://atprotodart.com/docs/lexicons/com/atproto/repo/describeRepo
  Future<core.XRPCResponse<RepoInfo>> describeRepo({
    required String repo,
  }) async =>
      // ignore: deprecated_member_use_from_same_package
      await findRepoInfo(repo: repo);

  /// https://atprotodart.com/docs/lexicons/com/atproto/repo/applyWrites
  Future<core.XRPCResponse<core.EmptyData>> applyWrites({
    required List<BatchAction> actions,
    bool? validate,
    String? swapCommitCid,
  }) async =>
      // ignore: deprecated_member_use_from_same_package
      await updateBulk(
        actions: actions,
        validate: validate,
        swapCommitCid: swapCommitCid,
      );

  @Deprecated('Use .getRecord instead. Will be removed')
  Future<core.XRPCResponse<Record>> findRecord({
    required core.AtUri uri,
    String? cid,
  }) async =>
      await _findRecord(
        uri: uri,
        cid: cid,
        to: Record.fromJson,
      );

  @Deprecated('Use .listRecords instead. Will be removed')
  Future<core.XRPCResponse<Records>> findRecords({
    required String repo,
    required core.NSID collection,
    int? limit,
    bool? reverse,
    String? rkeyStart,
    String? rkeyEnd,
    String? cursor,
  }) async =>
      await _findRecords(
        repo: repo,
        collection: collection,
        limit: limit,
        reverse: reverse,
        rkeyStart: rkeyStart,
        rkeyEnd: rkeyEnd,
        cursor: cursor,
        to: Records.fromJson,
      );

  core.Pagination<Records> paginateRecords({
    required String repo,
    required core.NSID collection,
    int? limit,
    bool? reverse,
    String? rkeyStart,
    String? rkeyEnd,
    String? cursor,
  }) =>
      _paginateRecords(
        repo: repo,
        collection: collection,
        limit: limit,
        reverse: reverse,
        rkeyStart: rkeyStart,
        rkeyEnd: rkeyEnd,
        cursor: cursor,
        to: Records.fromJson,
      );

  @Deprecated('Use .putRecord instead. Will be removed')
  Future<core.XRPCResponse<StrongRef>> updateRecord({
    required core.AtUri uri,
    required Map<String, dynamic> record,
    bool? validate,
    String? swapRecordCid,
    String? swapCommitCid,
  }) async =>
      await super.post(
        ns.comAtprotoRepoPutRecord,
        body: {
          'repo': did,
          'collection': uri.collection,
          'rkey': uri.rkey,
          'record': record,
          'validate': validate,
          'swapRecord': swapRecordCid,
          'swapCommit': swapCommitCid
        },
        to: StrongRef.fromJson,
      );

  @Deprecated('Use .describeRepo instead. Will be removed')
  Future<core.XRPCResponse<RepoInfo>> findRepoInfo({
    required String repo,
  }) async =>
      await _findRepoInfo(
        repo: repo,
        to: RepoInfo.fromJson,
      );

  @Deprecated('Use .applyWrites instead. Will be removed')
  Future<core.XRPCResponse<core.EmptyData>> updateBulk({
    required List<BatchAction> actions,
    bool? validate,
    String? swapCommitCid,
  }) async =>
      await super.post(
        ns.comAtprotoRepoApplyWrites,
        body: {
          'repo': did,
          'writes': actions
              .map((e) => e.when(
                    create: (data) => data.toJson(),
                    update: (data) => data.toJson(),
                    delete: (data) => {
                      core.objectType: data.type,
                      'collection': data.uri.collection,
                      'rkey': data.uri.rkey,
                    },
                  ))
              .toList(),
          'validate': validate,
          'swapCommit': swapCommitCid,
        },
      );

  @Deprecated('Use .createRecordInBulk instead. Will be removed')
  Future<core.XRPCResponse<core.EmptyData>> createRecords({
    required List<CreateAction> actions,
    bool? validate,
    String? swapCommitCid,
  }) async =>
      await applyWrites(
        actions: actions.map((e) => BatchAction.create(data: e)).toList(),
        validate: validate,
        swapCommitCid: swapCommitCid,
      );

  @Deprecated('Use .updateRecordInBulk instead. Will be removed')
  Future<core.XRPCResponse<core.EmptyData>> updateRecords({
    required List<UpdateAction> actions,
    bool? validate,
    String? swapCommitCid,
  }) async =>
      await applyWrites(
        actions: actions.map((e) => BatchAction.update(data: e)).toList(),
        validate: validate,
        swapCommitCid: swapCommitCid,
      );

  @Deprecated('Use .deleteRecordInBulk instead. Will be removed')
  Future<core.XRPCResponse<core.EmptyData>> deleteRecords({
    required List<core.AtUri> uris,
    bool? validate,
    String? swapCommitCid,
  }) async =>
      await applyWrites(
        actions: uris
            .map((e) => BatchAction.delete(data: DeleteAction(uri: e)))
            .toList(),
        validate: validate,
        swapCommitCid: swapCommitCid,
      );

  Future<core.XRPCResponse<T>> _findRecord<T>({
    required core.AtUri uri,
    required String? cid,
    core.To<T>? to,
  }) async =>
      await super.get<T>(
        ns.comAtprotoRepoGetRecord,
        parameters: {
          'repo': uri.hostname,
          'collection': uri.collection,
          'rkey': uri.rkey,
          'cid': cid,
        },
        to: to,
      );

  Future<core.XRPCResponse<T>> _findRecords<T>({
    required String repo,
    required core.NSID collection,
    required int? limit,
    required bool? reverse,
    required String? rkeyStart,
    required String? rkeyEnd,
    required String? cursor,
    core.To<T>? to,
  }) async =>
      await super.get(
        ns.comAtprotoRepoListRecords,
        parameters: _buildListRecordsParam(
          repo: repo,
          collection: collection,
          limit: limit,
          reverse: reverse,
          rkeyStart: rkeyStart,
          rkeyEnd: rkeyEnd,
          cursor: cursor,
        ),
        to: to,
      );

  core.Pagination<T> _paginateRecords<T>({
    required String repo,
    required core.NSID collection,
    required int? limit,
    required bool? reverse,
    required String? rkeyStart,
    required String? rkeyEnd,
    required String? cursor,
    core.To<T>? to,
  }) =>
      super.paginate(
        ns.comAtprotoRepoListRecords,
        parameters: _buildListRecordsParam(
          repo: repo,
          collection: collection,
          limit: limit,
          reverse: reverse,
          rkeyStart: rkeyStart,
          rkeyEnd: rkeyEnd,
          cursor: cursor,
        ),
        to: to,
      );

  Future<core.XRPCResponse<T>> _findRepoInfo<T>({
    required String repo,
    core.To<T>? to,
  }) async =>
      await super.get(
        ns.comAtprotoRepoDescribeRepo,
        parameters: {
          'repo': repo,
        },
        to: to,
      );

  Map<String, dynamic> _buildListRecordsParam({
    required String repo,
    required core.NSID collection,
    required int? limit,
    required bool? reverse,
    required String? rkeyStart,
    required String? rkeyEnd,
    required String? cursor,
  }) =>
      {
        'repo': repo,
        'collection': collection,
        'limit': limit,
        'reverse': reverse,
        'rkeyStart': rkeyStart,
        'rkeyEnd': rkeyEnd,
        'cursor': cursor,
      };
}
