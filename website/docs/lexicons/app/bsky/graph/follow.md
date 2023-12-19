---
title: follow
description: app.bsky.graph.follow
---

# [app.bsky.graph.follow](https://github.com/myConsciousness/atproto.dart/blob/main/lexicons/app/bsky/graph/follow.json)

## #main

### Input (Record)

A declaration of a social follow.

Use [com.atproto.repo.createRecord](../../../../lexicons/com/atproto/repo/createRecord.md#main) to create a record.

| Property | Type | Known Values | Required | Description |
| --- | --- | --- | :---: | --- |
| **subject** | string ([did](https://atproto.com/specs/did)) | - | ✅ | - |
| **createdAt** | string ([datetime](https://atproto.com/specs/lexicon#datetime)) | - | ✅ | - |

### Output ([com.atproto.repo.strongRef](../../../../lexicons/com/atproto/repo/strongRef.md#main))