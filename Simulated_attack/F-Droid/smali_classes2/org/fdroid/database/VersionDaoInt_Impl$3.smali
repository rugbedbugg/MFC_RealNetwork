.class Lorg/fdroid/database/VersionDaoInt_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "VersionDaoInt_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/VersionDaoInt_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/database/VersionDaoInt_Impl;


# direct methods
.method constructor <init>(Lorg/fdroid/database/VersionDaoInt_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/database/VersionDaoInt_Impl$3;->this$0:Lorg/fdroid/database/VersionDaoInt_Impl;

    .line 239
    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 239
    check-cast p2, Lorg/fdroid/database/Version;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/database/VersionDaoInt_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/fdroid/database/Version;)V

    return-void
.end method

.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/fdroid/database/Version;)V
    .locals 7

    .line 249
    invoke-virtual {p2}, Lorg/fdroid/database/Version;->getRepoId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 250
    invoke-virtual {p2}, Lorg/fdroid/database/Version;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 251
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {p2}, Lorg/fdroid/database/Version;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 255
    :goto_0
    invoke-virtual {p2}, Lorg/fdroid/database/Version;->getVersionId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 256
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 258
    :cond_1
    invoke-virtual {p2}, Lorg/fdroid/database/Version;->getVersionId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x4

    .line 260
    invoke-virtual {p2}, Lorg/fdroid/database/Version;->getAdded()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 261
    sget-object v0, Lorg/fdroid/database/Converters;->INSTANCE:Lorg/fdroid/database/Converters;

    invoke-virtual {p2}, Lorg/fdroid/database/Version;->getReleaseChannels()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fdroid/database/Converters;->listStringToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    if-nez v1, :cond_2

    .line 263
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 265
    :cond_2
    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 267
    :goto_2
    invoke-virtual {p2}, Lorg/fdroid/database/Version;->getAntiFeatures()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fdroid/database/Converters;->mapOfLocalizedTextV2toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    if-nez v1, :cond_3

    .line 269
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    .line 271
    :cond_3
    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 273
    :goto_3
    invoke-virtual {p2}, Lorg/fdroid/database/Version;->getWhatsNew()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fdroid/database/Converters;->localizedTextV2toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    if-nez v1, :cond_4

    .line 275
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_4

    .line 277
    :cond_4
    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 279
    :goto_4
    invoke-virtual {p2}, Lorg/fdroid/database/Version;->isCompatible()Z

    move-result v1

    const/16 v2, 0x8

    int-to-long v3, v1

    .line 280
    invoke-interface {p1, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 281
    invoke-virtual {p2}, Lorg/fdroid/database/Version;->getFile()Lorg/fdroid/index/v2/FileV1;

    move-result-object v1

    .line 282
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV1;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    if-nez v2, :cond_5

    .line 283
    invoke-interface {p1, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_5

    .line 285
    :cond_5
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV1;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 287
    :goto_5
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV1;->getSha256()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    if-nez v2, :cond_6

    .line 288
    invoke-interface {p1, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_6

    .line 290
    :cond_6
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV1;->getSha256()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 292
    :goto_6
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV1;->getSize()Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0xb

    if-nez v2, :cond_7

    .line 293
    invoke-interface {p1, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_7

    .line 295
    :cond_7
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV1;->getSize()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {p1, v3, v4, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 297
    :goto_7
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV1;->getIpfsCidV1()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    if-nez v2, :cond_8

    .line 298
    invoke-interface {p1, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_8

    .line 300
    :cond_8
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV1;->getIpfsCidV1()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 302
    :goto_8
    invoke-virtual {p2}, Lorg/fdroid/database/Version;->getSrc()Lorg/fdroid/index/v2/FileV2;

    move-result-object v1

    const/16 v2, 0x10

    const/16 v3, 0xf

    const/16 v4, 0xe

    const/16 v5, 0xd

    if-eqz v1, :cond_d

    .line 304
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV2;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_9

    .line 305
    invoke-interface {p1, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_9

    .line 307
    :cond_9
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV2;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 309
    :goto_9
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV2;->getSha256()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_a

    .line 310
    invoke-interface {p1, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_a

    .line 312
    :cond_a
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV2;->getSha256()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 314
    :goto_a
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV2;->getSize()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_b

    .line 315
    invoke-interface {p1, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_b

    .line 317
    :cond_b
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV2;->getSize()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {p1, v3, v4, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 319
    :goto_b
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV2;->getIpfsCidV1()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    .line 320
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_c

    .line 322
    :cond_c
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV2;->getIpfsCidV1()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    goto :goto_c

    .line 325
    :cond_d
    invoke-interface {p1, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    .line 326
    invoke-interface {p1, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    .line 327
    invoke-interface {p1, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    .line 328
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    .line 330
    :goto_c
    invoke-virtual {p2}, Lorg/fdroid/database/Version;->getManifest()Lorg/fdroid/database/AppManifest;

    move-result-object v1

    .line 331
    invoke-virtual {v1}, Lorg/fdroid/database/AppManifest;->getVersionName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x11

    if-nez v2, :cond_e

    .line 332
    invoke-interface {p1, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_d

    .line 334
    :cond_e
    invoke-virtual {v1}, Lorg/fdroid/database/AppManifest;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_d
    const/16 v2, 0x12

    .line 336
    invoke-virtual {v1}, Lorg/fdroid/database/AppManifest;->getVersionCode()J

    move-result-wide v3

    invoke-interface {p1, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 337
    invoke-virtual {v1}, Lorg/fdroid/database/AppManifest;->getMaxSdkVersion()Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x13

    if-nez v2, :cond_f

    .line 338
    invoke-interface {p1, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_e

    .line 340
    :cond_f
    invoke-virtual {v1}, Lorg/fdroid/database/AppManifest;->getMaxSdkVersion()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    invoke-interface {p1, v3, v4, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 342
    :goto_e
    invoke-virtual {v1}, Lorg/fdroid/database/AppManifest;->getNativecode()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/fdroid/database/Converters;->listStringToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x14

    if-nez v2, :cond_10

    .line 344
    invoke-interface {p1, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_f

    .line 346
    :cond_10
    invoke-interface {p1, v3, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 348
    :goto_f
    invoke-virtual {v1}, Lorg/fdroid/database/AppManifest;->getFeatures()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/fdroid/database/Converters;->listStringToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x15

    if-nez v2, :cond_11

    .line 350
    invoke-interface {p1, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_10

    .line 352
    :cond_11
    invoke-interface {p1, v3, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 354
    :goto_10
    invoke-virtual {v1}, Lorg/fdroid/database/AppManifest;->getUsesSdk()Lorg/fdroid/index/v2/UsesSdkV2;

    move-result-object v2

    const/16 v3, 0x17

    const/16 v4, 0x16

    if-eqz v2, :cond_12

    .line 356
    invoke-virtual {v2}, Lorg/fdroid/index/v2/UsesSdkV2;->getMinSdkVersion()I

    move-result v5

    int-to-long v5, v5

    invoke-interface {p1, v4, v5, v6}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 357
    invoke-virtual {v2}, Lorg/fdroid/index/v2/UsesSdkV2;->getTargetSdkVersion()I

    move-result v2

    int-to-long v4, v2

    invoke-interface {p1, v3, v4, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    goto :goto_11

    .line 359
    :cond_12
    invoke-interface {p1, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    .line 360
    invoke-interface {p1, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    .line 362
    :goto_11
    invoke-virtual {v1}, Lorg/fdroid/database/AppManifest;->getSigner()Lorg/fdroid/index/v2/SignerV2;

    move-result-object v1

    const/16 v2, 0x19

    const/16 v3, 0x18

    if-eqz v1, :cond_14

    .line 364
    invoke-virtual {v1}, Lorg/fdroid/index/v2/SignerV2;->getSha256()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/fdroid/database/Converters;->listStringToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    .line 366
    invoke-interface {p1, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_12

    .line 368
    :cond_13
    invoke-interface {p1, v3, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 370
    :goto_12
    invoke-virtual {v1}, Lorg/fdroid/index/v2/SignerV2;->getHasMultipleSigners()Z

    move-result v0

    int-to-long v0, v0

    .line 371
    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    goto :goto_13

    .line 373
    :cond_14
    invoke-interface {p1, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    .line 374
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    :goto_13
    const/16 v0, 0x1a

    .line 376
    invoke-virtual {p2}, Lorg/fdroid/database/Version;->getRepoId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 377
    invoke-virtual {p2}, Lorg/fdroid/database/Version;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1b

    if-nez v0, :cond_15

    .line 378
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_14

    .line 380
    :cond_15
    invoke-virtual {p2}, Lorg/fdroid/database/Version;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 382
    :goto_14
    invoke-virtual {p2}, Lorg/fdroid/database/Version;->getVersionId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    const/16 p2, 0x1c

    .line 383
    invoke-interface {p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_15

    :cond_16
    const/16 v0, 0x1c

    .line 385
    invoke-virtual {p2}, Lorg/fdroid/database/Version;->getVersionId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_15
    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "UPDATE OR ABORT `Version` SET `repoId` = ?,`packageName` = ?,`versionId` = ?,`added` = ?,`releaseChannels` = ?,`antiFeatures` = ?,`whatsNew` = ?,`isCompatible` = ?,`file_name` = ?,`file_sha256` = ?,`file_size` = ?,`file_ipfsCidV1` = ?,`src_name` = ?,`src_sha256` = ?,`src_size` = ?,`src_ipfsCidV1` = ?,`manifest_versionName` = ?,`manifest_versionCode` = ?,`manifest_maxSdkVersion` = ?,`manifest_nativecode` = ?,`manifest_features` = ?,`manifest_usesSdk_minSdkVersion` = ?,`manifest_usesSdk_targetSdkVersion` = ?,`manifest_signer_sha256` = ?,`manifest_signer_hasMultipleSigners` = ? WHERE `repoId` = ? AND `packageName` = ? AND `versionId` = ?"

    return-object v0
.end method
