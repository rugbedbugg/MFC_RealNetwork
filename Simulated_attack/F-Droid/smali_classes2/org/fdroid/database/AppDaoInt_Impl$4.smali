.class Lorg/fdroid/database/AppDaoInt_Impl$4;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "AppDaoInt_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/AppDaoInt_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/database/AppDaoInt_Impl;


# direct methods
.method constructor <init>(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl$4;->this$0:Lorg/fdroid/database/AppDaoInt_Impl;

    .line 322
    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 322
    check-cast p2, Lorg/fdroid/database/AppMetadata;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/database/AppDaoInt_Impl$4;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/fdroid/database/AppMetadata;)V

    return-void
.end method

.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/fdroid/database/AppMetadata;)V
    .locals 4

    .line 332
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getRepoId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 333
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 334
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x3

    .line 338
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getAdded()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 v0, 0x4

    .line 339
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getLastUpdated()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 340
    sget-object v0, Lorg/fdroid/database/Converters;->INSTANCE:Lorg/fdroid/database/Converters;

    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getName()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fdroid/database/Converters;->localizedTextV2toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    if-nez v1, :cond_1

    .line 342
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 344
    :cond_1
    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 346
    :goto_1
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getSummary()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fdroid/database/Converters;->localizedTextV2toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    if-nez v1, :cond_2

    .line 348
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 350
    :cond_2
    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 352
    :goto_2
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getDescription()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fdroid/database/Converters;->localizedTextV2toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    if-nez v1, :cond_3

    .line 354
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    .line 356
    :cond_3
    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 358
    :goto_3
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getLocalizedName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    if-nez v1, :cond_4

    .line 359
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_4

    .line 361
    :cond_4
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getLocalizedName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 363
    :goto_4
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getLocalizedSummary()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    if-nez v1, :cond_5

    .line 364
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_5

    .line 366
    :cond_5
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getLocalizedSummary()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 368
    :goto_5
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getWebSite()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    if-nez v1, :cond_6

    .line 369
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_6

    .line 371
    :cond_6
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getWebSite()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 373
    :goto_6
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getChangelog()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    if-nez v1, :cond_7

    .line 374
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_7

    .line 376
    :cond_7
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getChangelog()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 378
    :goto_7
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getLicense()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    if-nez v1, :cond_8

    .line 379
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_8

    .line 381
    :cond_8
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getLicense()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 383
    :goto_8
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getSourceCode()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    if-nez v1, :cond_9

    .line 384
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_9

    .line 386
    :cond_9
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getSourceCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 388
    :goto_9
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getIssueTracker()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    if-nez v1, :cond_a

    .line 389
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_a

    .line 391
    :cond_a
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getIssueTracker()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 393
    :goto_a
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getTranslation()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    if-nez v1, :cond_b

    .line 394
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_b

    .line 396
    :cond_b
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getTranslation()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 398
    :goto_b
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getPreferredSigner()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    if-nez v1, :cond_c

    .line 399
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_c

    .line 401
    :cond_c
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getPreferredSigner()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 403
    :goto_c
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getVideo()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fdroid/database/Converters;->localizedTextV2toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    if-nez v1, :cond_d

    .line 405
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_d

    .line 407
    :cond_d
    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 409
    :goto_d
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getAuthorName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    if-nez v1, :cond_e

    .line 410
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_e

    .line 412
    :cond_e
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getAuthorName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 414
    :goto_e
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getAuthorEmail()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    if-nez v1, :cond_f

    .line 415
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_f

    .line 417
    :cond_f
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getAuthorEmail()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 419
    :goto_f
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getAuthorWebSite()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    if-nez v1, :cond_10

    .line 420
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_10

    .line 422
    :cond_10
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getAuthorWebSite()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 424
    :goto_10
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getAuthorPhone()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    if-nez v1, :cond_11

    .line 425
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_11

    .line 427
    :cond_11
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getAuthorPhone()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 429
    :goto_11
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getDonate()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fdroid/database/Converters;->listStringToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    if-nez v1, :cond_12

    .line 431
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_12

    .line 433
    :cond_12
    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 435
    :goto_12
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getLiberapayID()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    if-nez v1, :cond_13

    .line 436
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_13

    .line 438
    :cond_13
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getLiberapayID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 440
    :goto_13
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getLiberapay()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    if-nez v1, :cond_14

    .line 441
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_14

    .line 443
    :cond_14
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getLiberapay()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 445
    :goto_14
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getOpenCollective()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    if-nez v1, :cond_15

    .line 446
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_15

    .line 448
    :cond_15
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getOpenCollective()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 450
    :goto_15
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getBitcoin()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_16

    const/16 v1, 0x1a

    .line 451
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_16

    :cond_16
    const/16 v1, 0x1a

    .line 453
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getBitcoin()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 455
    :goto_16
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getLitecoin()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    const/16 v1, 0x1b

    .line 456
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_17

    :cond_17
    const/16 v1, 0x1b

    .line 458
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getLitecoin()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 460
    :goto_17
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getFlattrID()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_18

    const/16 v1, 0x1c

    .line 461
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_18

    :cond_18
    const/16 v1, 0x1c

    .line 463
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getFlattrID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 465
    :goto_18
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getCategories()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fdroid/database/Converters;->listStringToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    const/16 v0, 0x1d

    .line 467
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_19

    :cond_19
    const/16 v1, 0x1d

    .line 469
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 471
    :goto_19
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->isCompatible()Z

    move-result v0

    const/16 v1, 0x1e

    int-to-long v2, v0

    .line 472
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0x1f

    .line 473
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getRepoId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 474
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    const/16 p2, 0x20

    .line 475
    invoke-interface {p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1a

    :cond_1a
    const/16 v0, 0x20

    .line 477
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1a
    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "UPDATE OR ABORT `AppMetadata` SET `repoId` = ?,`packageName` = ?,`added` = ?,`lastUpdated` = ?,`name` = ?,`summary` = ?,`description` = ?,`localizedName` = ?,`localizedSummary` = ?,`webSite` = ?,`changelog` = ?,`license` = ?,`sourceCode` = ?,`issueTracker` = ?,`translation` = ?,`preferredSigner` = ?,`video` = ?,`authorName` = ?,`authorEmail` = ?,`authorWebSite` = ?,`authorPhone` = ?,`donate` = ?,`liberapayID` = ?,`liberapay` = ?,`openCollective` = ?,`bitcoin` = ?,`litecoin` = ?,`flattrID` = ?,`categories` = ?,`isCompatible` = ? WHERE `repoId` = ? AND `packageName` = ?"

    return-object v0
.end method
