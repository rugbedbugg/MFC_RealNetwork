.class public final Lorg/fdroid/database/Repository;
.super Ljava/lang/Object;
.source "Repository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u00081\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0008\u0018\u00002\u00020\u0001B_\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0010BO\u0008\u0000\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014\u0012\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0014\u0012\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0014\u0012\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u0014\u0012\u0006\u0010\u001c\u001a\u00020\u001d\u00a2\u0006\u0002\u0010\u001eJ\u000e\u0010J\u001a\u00020\u0012H\u00c0\u0003\u00a2\u0006\u0002\u0008KJ\u0014\u0010L\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014H\u00c0\u0003\u00a2\u0006\u0002\u0008MJ\u0014\u0010N\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0014H\u00c0\u0003\u00a2\u0006\u0002\u0008OJ\u0014\u0010P\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0014H\u00c0\u0003\u00a2\u0006\u0002\u0008QJ\u0014\u0010R\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u0014H\u00c0\u0003\u00a2\u0006\u0002\u0008SJ\u000e\u0010T\u001a\u00020\u001dH\u00c0\u0003\u00a2\u0006\u0002\u0008UJ]\u0010V\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\u000e\u0008\u0002\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u000e\u0008\u0002\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00142\u000e\u0008\u0002\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00142\u000e\u0008\u0002\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u00142\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001dH\u00c6\u0001J\u0013\u0010W\u001a\u00020(2\u0008\u0010X\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\u0018\u0010Y\u001a\u0008\u0012\u0004\u0012\u00020Z0\u00142\u0008\u0008\u0002\u0010[\u001a\u00020(H\u0007J\u0012\u0010\\\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00170]J\u0012\u0010^\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00190]J\u0010\u0010_\u001a\u0004\u0018\u00010\u00052\u0006\u0010`\u001a\u00020aJ\u0010\u0010b\u001a\u0004\u0018\u00010c2\u0006\u0010`\u001a\u00020aJ\u000c\u0010d\u001a\u0008\u0012\u0004\u0012\u00020Z0\u0014J\u0010\u0010e\u001a\u0004\u0018\u00010\u00052\u0006\u0010`\u001a\u00020aJ\u0012\u0010f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u001b0]J\t\u0010g\u001a\u00020\u000cH\u00d6\u0001J\t\u0010h\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 R\u001c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00148\u0000X\u0081\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u001c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00148\u0000X\u0081\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\"R\u0011\u0010\t\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010 R\u0017\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\"R\u0011\u0010\'\u001a\u00020(8F\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010*R\u001d\u0010+\u001a\u0004\u0018\u00010\u00058FX\u0087\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010.\u001a\u0004\u0008,\u0010 R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008/\u00100R\u0011\u00101\u001a\u00020(8F\u00a2\u0006\u0006\u001a\u0004\u00081\u0010*R\u001c\u00102\u001a\u0004\u0018\u00010\u00058FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u00083\u00104\u001a\u0004\u00085\u0010 R\u0013\u0010\r\u001a\u0004\u0018\u00010\u00038F\u00a2\u0006\u0006\u001a\u0004\u00086\u00107R\u001c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00148\u0000X\u0081\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u0010\"R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0006\u001a\u0004\u00089\u0010 R\u0016\u0010\u001c\u001a\u00020\u001d8\u0000X\u0081\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008:\u0010;R\u001c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u00148\u0000X\u0081\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008<\u0010\"R\u0011\u0010\u0002\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008=\u0010>R\u0016\u0010\u0011\u001a\u00020\u00128\u0000X\u0081\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008?\u0010@R\u0011\u0010\u0006\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008A\u0010>R\u0017\u0010B\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008C\u0010\"R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008D\u0010 R\u0011\u0010\n\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008E\u0010>R\u0013\u0010F\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008G\u0010 R\u0011\u0010\u000b\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008H\u0010I\u00a8\u0006i"
    }
    d2 = {
        "Lorg/fdroid/database/Repository;",
        "",
        "repoId",
        "",
        "address",
        "",
        "timestamp",
        "formatVersion",
        "Lorg/fdroid/index/IndexFormatVersion;",
        "certificate",
        "version",
        "weight",
        "",
        "lastUpdated",
        "username",
        "password",
        "(JLjava/lang/String;JLorg/fdroid/index/IndexFormatVersion;Ljava/lang/String;JIJLjava/lang/String;Ljava/lang/String;)V",
        "repository",
        "Lorg/fdroid/database/CoreRepository;",
        "mirrors",
        "",
        "Lorg/fdroid/database/Mirror;",
        "antiFeatures",
        "Lorg/fdroid/database/AntiFeature;",
        "categories",
        "Lorg/fdroid/database/Category;",
        "releaseChannels",
        "Lorg/fdroid/database/ReleaseChannel;",
        "preferences",
        "Lorg/fdroid/database/RepositoryPreferences;",
        "(Lorg/fdroid/database/CoreRepository;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/fdroid/database/RepositoryPreferences;)V",
        "getAddress",
        "()Ljava/lang/String;",
        "getAntiFeatures$database_release",
        "()Ljava/util/List;",
        "getCategories$database_release",
        "getCertificate",
        "disabledMirrors",
        "getDisabledMirrors",
        "enabled",
        "",
        "getEnabled",
        "()Z",
        "fingerprint",
        "getFingerprint",
        "fingerprint$delegate",
        "Lkotlin/Lazy;",
        "getFormatVersion",
        "()Lorg/fdroid/index/IndexFormatVersion;",
        "isArchiveRepo",
        "lastETag",
        "getLastETag$annotations",
        "()V",
        "getLastETag",
        "getLastUpdated",
        "()Ljava/lang/Long;",
        "getMirrors$database_release",
        "getPassword",
        "getPreferences$database_release",
        "()Lorg/fdroid/database/RepositoryPreferences;",
        "getReleaseChannels$database_release",
        "getRepoId",
        "()J",
        "getRepository$database_release",
        "()Lorg/fdroid/database/CoreRepository;",
        "getTimestamp",
        "userMirrors",
        "getUserMirrors",
        "getUsername",
        "getVersion",
        "webBaseUrl",
        "getWebBaseUrl",
        "getWeight",
        "()I",
        "component1",
        "component1$database_release",
        "component2",
        "component2$database_release",
        "component3",
        "component3$database_release",
        "component4",
        "component4$database_release",
        "component5",
        "component5$database_release",
        "component6",
        "component6$database_release",
        "copy",
        "equals",
        "other",
        "getAllMirrors",
        "Lorg/fdroid/download/Mirror;",
        "includeUserMirrors",
        "getAntiFeatures",
        "",
        "getCategories",
        "getDescription",
        "localeList",
        "Landroidx/core/os/LocaleListCompat;",
        "getIcon",
        "Lorg/fdroid/index/v2/FileV2;",
        "getMirrors",
        "getName",
        "getReleaseChannels",
        "hashCode",
        "toString",
        "database_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final antiFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/database/AntiFeature;",
            ">;"
        }
    .end annotation
.end field

.field private final categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/database/Category;",
            ">;"
        }
    .end annotation
.end field

.field private final fingerprint$delegate:Lkotlin/Lazy;

.field private final mirrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/database/Mirror;",
            ">;"
        }
    .end annotation
.end field

.field private final preferences:Lorg/fdroid/database/RepositoryPreferences;

.field private final releaseChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/database/ReleaseChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final repository:Lorg/fdroid/database/CoreRepository;


# direct methods
.method public constructor <init>(JLjava/lang/String;JLorg/fdroid/index/IndexFormatVersion;Ljava/lang/String;JIJ)V
    .locals 17

    .line 0
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move-wide/from16 v11, p11

    const-string v13, "address"

    move-object/from16 v14, p3

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "formatVersion"

    move-object/from16 v14, p6

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "certificate"

    move-object/from16 v14, p7

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x300

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v16}, Lorg/fdroid/database/Repository;-><init>(JLjava/lang/String;JLorg/fdroid/index/IndexFormatVersion;Ljava/lang/String;JIJLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JLorg/fdroid/index/IndexFormatVersion;Ljava/lang/String;JIJLjava/lang/String;)V
    .locals 17

    .line 0
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move-wide/from16 v11, p11

    move-object/from16 v13, p13

    const-string v14, "address"

    move-object/from16 v15, p3

    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "formatVersion"

    move-object/from16 v15, p6

    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "certificate"

    move-object/from16 v15, p7

    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x0

    const/16 v15, 0x200

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v16}, Lorg/fdroid/database/Repository;-><init>(JLjava/lang/String;JLorg/fdroid/index/IndexFormatVersion;Ljava/lang/String;JIJLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JLorg/fdroid/index/IndexFormatVersion;Ljava/lang/String;JIJLjava/lang/String;Ljava/lang/String;)V
    .locals 19

    const-string v0, "address"

    move-object/from16 v6, p3

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formatVersion"

    move-object/from16 v11, p6

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "certificate"

    move-object/from16 v14, p7

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    new-instance v0, Lorg/fdroid/database/CoreRepository;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 117
    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/16 v1, 0x2a

    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    const/16 v15, 0x212

    const/16 v16, 0x0

    move-object v1, v0

    move-wide/from16 v2, p1

    move-wide/from16 v8, p4

    .line 109
    invoke-direct/range {v1 .. v16}, Lorg/fdroid/database/CoreRepository;-><init>(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Lorg/fdroid/index/IndexFormatVersion;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 119
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 120
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 121
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 122
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 123
    new-instance v18, Lorg/fdroid/database/RepositoryPreferences;

    const/4 v9, 0x0

    .line 126
    invoke-static/range {p11 .. p12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x74

    const/16 v17, 0x0

    move-object/from16 v5, v18

    move-wide/from16 v6, p1

    move/from16 v8, p10

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    .line 123
    invoke-direct/range {v5 .. v17}, Lorg/fdroid/database/RepositoryPreferences;-><init>(JIZLjava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 p1, p0

    move-object/from16 p2, v0

    move-object/from16 p3, v1

    move-object/from16 p4, v2

    move-object/from16 p5, v3

    move-object/from16 p6, v4

    move-object/from16 p7, v18

    .line 108
    invoke-direct/range {p1 .. p7}, Lorg/fdroid/database/Repository;-><init>(Lorg/fdroid/database/CoreRepository;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/fdroid/database/RepositoryPreferences;)V

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;JLorg/fdroid/index/IndexFormatVersion;Ljava/lang/String;JIJLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 18

    move/from16 v0, p15

    and-int/lit16 v1, v0, 0x100

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object/from16 v16, v2

    goto :goto_0

    :cond_0
    move-object/from16 v16, p13

    :goto_0
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1

    move-object/from16 v17, v2

    goto :goto_1

    :cond_1
    move-object/from16 v17, p14

    :goto_1
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-wide/from16 v11, p8

    move/from16 v13, p10

    move-wide/from16 v14, p11

    .line 97
    invoke-direct/range {v3 .. v17}, Lorg/fdroid/database/Repository;-><init>(JLjava/lang/String;JLorg/fdroid/index/IndexFormatVersion;Ljava/lang/String;JIJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/fdroid/database/CoreRepository;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/fdroid/database/RepositoryPreferences;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/database/CoreRepository;",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Mirror;",
            ">;",
            "Ljava/util/List<",
            "Lorg/fdroid/database/AntiFeature;",
            ">;",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Category;",
            ">;",
            "Ljava/util/List<",
            "Lorg/fdroid/database/ReleaseChannel;",
            ">;",
            "Lorg/fdroid/database/RepositoryPreferences;",
            ")V"
        }
    .end annotation

    const-string v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mirrors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "antiFeatures"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categories"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "releaseChannels"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferences"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/database/Repository;->repository:Lorg/fdroid/database/CoreRepository;

    iput-object p2, p0, Lorg/fdroid/database/Repository;->mirrors:Ljava/util/List;

    iput-object p3, p0, Lorg/fdroid/database/Repository;->antiFeatures:Ljava/util/List;

    iput-object p4, p0, Lorg/fdroid/database/Repository;->categories:Ljava/util/List;

    iput-object p5, p0, Lorg/fdroid/database/Repository;->releaseChannels:Ljava/util/List;

    iput-object p6, p0, Lorg/fdroid/database/Repository;->preferences:Lorg/fdroid/database/RepositoryPreferences;

    .line 187
    new-instance p1, Lorg/fdroid/database/Repository$fingerprint$2;

    invoke-direct {p1, p0}, Lorg/fdroid/database/Repository$fingerprint$2;-><init>(Lorg/fdroid/database/Repository;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/database/Repository;->fingerprint$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic copy$default(Lorg/fdroid/database/Repository;Lorg/fdroid/database/CoreRepository;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/fdroid/database/RepositoryPreferences;ILjava/lang/Object;)Lorg/fdroid/database/Repository;
    .locals 4

    .line 0
    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lorg/fdroid/database/Repository;->repository:Lorg/fdroid/database/CoreRepository;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lorg/fdroid/database/Repository;->mirrors:Ljava/util/List;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lorg/fdroid/database/Repository;->antiFeatures:Ljava/util/List;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lorg/fdroid/database/Repository;->categories:Ljava/util/List;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lorg/fdroid/database/Repository;->releaseChannels:Ljava/util/List;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lorg/fdroid/database/Repository;->preferences:Lorg/fdroid/database/RepositoryPreferences;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lorg/fdroid/database/Repository;->copy(Lorg/fdroid/database/CoreRepository;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/fdroid/database/RepositoryPreferences;)Lorg/fdroid/database/Repository;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getAllMirrors$default(Lorg/fdroid/database/Repository;ZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 204
    :cond_0
    invoke-virtual {p0, p1}, Lorg/fdroid/database/Repository;->getAllMirrors(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getLastETag$annotations()V
    .locals 0

    .line 0
    return-void
.end method


# virtual methods
.method public final component1$database_release()Lorg/fdroid/database/CoreRepository;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/Repository;->repository:Lorg/fdroid/database/CoreRepository;

    return-object v0
.end method

.method public final component2$database_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Mirror;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/Repository;->mirrors:Ljava/util/List;

    return-object v0
.end method

.method public final component3$database_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/database/AntiFeature;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/Repository;->antiFeatures:Ljava/util/List;

    return-object v0
.end method

.method public final component4$database_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Category;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/Repository;->categories:Ljava/util/List;

    return-object v0
.end method

.method public final component5$database_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/database/ReleaseChannel;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/Repository;->releaseChannels:Ljava/util/List;

    return-object v0
.end method

.method public final component6$database_release()Lorg/fdroid/database/RepositoryPreferences;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/Repository;->preferences:Lorg/fdroid/database/RepositoryPreferences;

    return-object v0
.end method

.method public final copy(Lorg/fdroid/database/CoreRepository;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/fdroid/database/RepositoryPreferences;)Lorg/fdroid/database/Repository;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/database/CoreRepository;",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Mirror;",
            ">;",
            "Ljava/util/List<",
            "Lorg/fdroid/database/AntiFeature;",
            ">;",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Category;",
            ">;",
            "Ljava/util/List<",
            "Lorg/fdroid/database/ReleaseChannel;",
            ">;",
            "Lorg/fdroid/database/RepositoryPreferences;",
            ")",
            "Lorg/fdroid/database/Repository;"
        }
    .end annotation

    .line 0
    const-string v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mirrors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "antiFeatures"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categories"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "releaseChannels"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferences"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/fdroid/database/Repository;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/fdroid/database/Repository;-><init>(Lorg/fdroid/database/CoreRepository;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/fdroid/database/RepositoryPreferences;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/fdroid/database/Repository;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/fdroid/database/Repository;

    iget-object v1, p0, Lorg/fdroid/database/Repository;->repository:Lorg/fdroid/database/CoreRepository;

    iget-object v3, p1, Lorg/fdroid/database/Repository;->repository:Lorg/fdroid/database/CoreRepository;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/fdroid/database/Repository;->mirrors:Ljava/util/List;

    iget-object v3, p1, Lorg/fdroid/database/Repository;->mirrors:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/fdroid/database/Repository;->antiFeatures:Ljava/util/List;

    iget-object v3, p1, Lorg/fdroid/database/Repository;->antiFeatures:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/fdroid/database/Repository;->categories:Ljava/util/List;

    iget-object v3, p1, Lorg/fdroid/database/Repository;->categories:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lorg/fdroid/database/Repository;->releaseChannels:Ljava/util/List;

    iget-object v3, p1, Lorg/fdroid/database/Repository;->releaseChannels:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lorg/fdroid/database/Repository;->preferences:Lorg/fdroid/database/RepositoryPreferences;

    iget-object p1, p1, Lorg/fdroid/database/Repository;->preferences:Lorg/fdroid/database/RepositoryPreferences;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/Repository;->repository:Lorg/fdroid/database/CoreRepository;

    .line 133
    invoke-virtual {v0}, Lorg/fdroid/database/CoreRepository;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAllMirrors()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/download/Mirror;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lorg/fdroid/database/Repository;->getAllMirrors$default(Lorg/fdroid/database/Repository;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getAllMirrors(Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lorg/fdroid/download/Mirror;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/database/Repository;->mirrors:Ljava/util/List;

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1621
    check-cast v3, Lorg/fdroid/database/Mirror;

    .line 206
    invoke-virtual {v3}, Lorg/fdroid/database/Mirror;->toDownloadMirror()Lorg/fdroid/download/Mirror;

    move-result-object v3

    .line 1621
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 207
    invoke-virtual {p0}, Lorg/fdroid/database/Repository;->getUserMirrors()Ljava/util/List;

    move-result-object p1

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 208
    new-instance v2, Lorg/fdroid/download/Mirror;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lorg/fdroid/download/Mirror;-><init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1621
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 209
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 205
    :cond_2
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 212
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/fdroid/download/Mirror;

    invoke-virtual {v2}, Lorg/fdroid/download/Mirror;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    goto :goto_3

    .line 213
    :cond_5
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 214
    new-instance v6, Lorg/fdroid/download/Mirror;

    invoke-virtual {p0}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/fdroid/download/Mirror;-><init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_3
    return-object p1
.end method

.method public final getAntiFeatures()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/database/AntiFeature;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/database/Repository;->antiFeatures:Ljava/util/List;

    const/16 v1, 0xa

    .line 1194
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 1195
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1222
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1223
    move-object v3, v1

    check-cast v3, Lorg/fdroid/database/AntiFeature;

    .line 157
    invoke-virtual {v3}, Lorg/fdroid/database/AntiFeature;->getId$database_release()Ljava/lang/String;

    move-result-object v3

    .line 1223
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public final getAntiFeatures$database_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/database/AntiFeature;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/Repository;->antiFeatures:Ljava/util/List;

    return-object v0
.end method

.method public final getCategories()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/database/Category;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/database/Repository;->categories:Ljava/util/List;

    const/16 v1, 0xa

    .line 1194
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 1195
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1222
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1223
    move-object v3, v1

    check-cast v3, Lorg/fdroid/database/Category;

    .line 161
    invoke-virtual {v3}, Lorg/fdroid/database/Category;->getId()Ljava/lang/String;

    move-result-object v3

    .line 1223
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public final getCategories$database_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Category;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/Repository;->categories:Ljava/util/List;

    return-object v0
.end method

.method public final getCertificate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/Repository;->repository:Lorg/fdroid/database/CoreRepository;

    .line 138
    invoke-virtual {v0}, Lorg/fdroid/database/CoreRepository;->getCertificate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDescription(Landroidx/core/os/LocaleListCompat;)Ljava/lang/String;
    .locals 2

    const-string v0, "localeList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    sget-object v0, Lorg/fdroid/LocaleChooser;->INSTANCE:Lorg/fdroid/LocaleChooser;

    iget-object v1, p0, Lorg/fdroid/database/Repository;->repository:Lorg/fdroid/database/CoreRepository;

    invoke-virtual {v1}, Lorg/fdroid/database/CoreRepository;->getDescription()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/fdroid/LocaleChooser;->getBestLocale(Ljava/util/Map;Landroidx/core/os/LocaleListCompat;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getDisabledMirrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/database/Repository;->preferences:Lorg/fdroid/database/RepositoryPreferences;

    .line 172
    invoke-virtual {v0}, Lorg/fdroid/database/RepositoryPreferences;->getDisabledMirrors()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/Repository;->preferences:Lorg/fdroid/database/RepositoryPreferences;

    .line 169
    invoke-virtual {v0}, Lorg/fdroid/database/RepositoryPreferences;->getEnabled()Z

    move-result v0

    return v0
.end method

.method public final getFingerprint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/Repository;->fingerprint$delegate:Lkotlin/Lazy;

    .line 187
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getFormatVersion()Lorg/fdroid/index/IndexFormatVersion;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/Repository;->repository:Lorg/fdroid/database/CoreRepository;

    .line 137
    invoke-virtual {v0}, Lorg/fdroid/database/CoreRepository;->getFormatVersion()Lorg/fdroid/index/IndexFormatVersion;

    move-result-object v0

    return-object v0
.end method

.method public final getIcon(Landroidx/core/os/LocaleListCompat;)Lorg/fdroid/index/v2/FileV2;
    .locals 2

    const-string v0, "localeList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    sget-object v0, Lorg/fdroid/LocaleChooser;->INSTANCE:Lorg/fdroid/LocaleChooser;

    iget-object v1, p0, Lorg/fdroid/database/Repository;->repository:Lorg/fdroid/database/CoreRepository;

    invoke-virtual {v1}, Lorg/fdroid/database/CoreRepository;->getIcon()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/fdroid/LocaleChooser;->getBestLocale(Ljava/util/Map;Landroidx/core/os/LocaleListCompat;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fdroid/index/v2/FileV2;

    return-object p1
.end method

.method public final getLastETag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/Repository;->preferences:Lorg/fdroid/database/RepositoryPreferences;

    .line 179
    invoke-virtual {v0}, Lorg/fdroid/database/RepositoryPreferences;->getLastETag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLastUpdated()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/Repository;->preferences:Lorg/fdroid/database/RepositoryPreferences;

    .line 170
    invoke-virtual {v0}, Lorg/fdroid/database/RepositoryPreferences;->getLastUpdated()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final getMirrors()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/download/Mirror;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 195
    invoke-virtual {p0, v0}, Lorg/fdroid/database/Repository;->getAllMirrors(Z)Ljava/util/List;

    move-result-object v1

    .line 766
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lorg/fdroid/download/Mirror;

    .line 196
    invoke-virtual {p0}, Lorg/fdroid/database/Repository;->getDisabledMirrors()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4}, Lorg/fdroid/download/Mirror;->getBaseUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v0

    if-eqz v4, :cond_0

    .line 857
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 197
    :cond_1
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/fdroid/download/Mirror;

    invoke-virtual {p0}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lorg/fdroid/download/Mirror;-><init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :cond_2
    return-object v2
.end method

.method public final getMirrors$database_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Mirror;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/Repository;->mirrors:Ljava/util/List;

    return-object v0
.end method

.method public final getName(Landroidx/core/os/LocaleListCompat;)Ljava/lang/String;
    .locals 2

    const-string v0, "localeList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    sget-object v0, Lorg/fdroid/LocaleChooser;->INSTANCE:Lorg/fdroid/LocaleChooser;

    iget-object v1, p0, Lorg/fdroid/database/Repository;->repository:Lorg/fdroid/database/CoreRepository;

    invoke-virtual {v1}, Lorg/fdroid/database/CoreRepository;->getName()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/fdroid/LocaleChooser;->getBestLocale(Ljava/util/Map;Landroidx/core/os/LocaleListCompat;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/Repository;->preferences:Lorg/fdroid/database/RepositoryPreferences;

    .line 174
    invoke-virtual {v0}, Lorg/fdroid/database/RepositoryPreferences;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPreferences$database_release()Lorg/fdroid/database/RepositoryPreferences;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/Repository;->preferences:Lorg/fdroid/database/RepositoryPreferences;

    return-object v0
.end method

.method public final getReleaseChannels()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/database/ReleaseChannel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/database/Repository;->releaseChannels:Ljava/util/List;

    const/16 v1, 0xa

    .line 1194
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 1195
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1222
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1223
    move-object v3, v1

    check-cast v3, Lorg/fdroid/database/ReleaseChannel;

    .line 165
    invoke-virtual {v3}, Lorg/fdroid/database/ReleaseChannel;->getId$database_release()Ljava/lang/String;

    move-result-object v3

    .line 1223
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public final getReleaseChannels$database_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/database/ReleaseChannel;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/Repository;->releaseChannels:Ljava/util/List;

    return-object v0
.end method

.method public final getRepoId()J
    .locals 2

    iget-object v0, p0, Lorg/fdroid/database/Repository;->repository:Lorg/fdroid/database/CoreRepository;

    .line 132
    invoke-virtual {v0}, Lorg/fdroid/database/CoreRepository;->getRepoId()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getRepository$database_release()Lorg/fdroid/database/CoreRepository;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/Repository;->repository:Lorg/fdroid/database/CoreRepository;

    return-object v0
.end method

.method public final getTimestamp()J
    .locals 2

    iget-object v0, p0, Lorg/fdroid/database/Repository;->repository:Lorg/fdroid/database/CoreRepository;

    .line 135
    invoke-virtual {v0}, Lorg/fdroid/database/CoreRepository;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getUserMirrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/database/Repository;->preferences:Lorg/fdroid/database/RepositoryPreferences;

    .line 171
    invoke-virtual {v0}, Lorg/fdroid/database/RepositoryPreferences;->getUserMirrors()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/Repository;->preferences:Lorg/fdroid/database/RepositoryPreferences;

    .line 173
    invoke-virtual {v0}, Lorg/fdroid/database/RepositoryPreferences;->getUsername()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVersion()J
    .locals 2

    iget-object v0, p0, Lorg/fdroid/database/Repository;->repository:Lorg/fdroid/database/CoreRepository;

    .line 136
    invoke-virtual {v0}, Lorg/fdroid/database/CoreRepository;->getVersion()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final getWebBaseUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/Repository;->repository:Lorg/fdroid/database/CoreRepository;

    .line 134
    invoke-virtual {v0}, Lorg/fdroid/database/CoreRepository;->getWebBaseUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getWeight()I
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/Repository;->preferences:Lorg/fdroid/database/RepositoryPreferences;

    .line 168
    invoke-virtual {v0}, Lorg/fdroid/database/RepositoryPreferences;->getWeight()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/Repository;->repository:Lorg/fdroid/database/CoreRepository;

    invoke-virtual {v0}, Lorg/fdroid/database/CoreRepository;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/Repository;->mirrors:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/Repository;->antiFeatures:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/Repository;->categories:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/Repository;->releaseChannels:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/Repository;->preferences:Lorg/fdroid/database/RepositoryPreferences;

    invoke-virtual {v1}, Lorg/fdroid/database/RepositoryPreferences;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isArchiveRepo()Z
    .locals 5

    iget-object v0, p0, Lorg/fdroid/database/Repository;->repository:Lorg/fdroid/database/CoreRepository;

    .line 145
    invoke-virtual {v0}, Lorg/fdroid/database/CoreRepository;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/16 v2, 0x2f

    const/4 v3, 0x0

    aput-char v2, v1, v3

    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v4, "/archive"

    invoke-static {v0, v4, v3, v1, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/Repository;->repository:Lorg/fdroid/database/CoreRepository;

    iget-object v1, p0, Lorg/fdroid/database/Repository;->mirrors:Ljava/util/List;

    iget-object v2, p0, Lorg/fdroid/database/Repository;->antiFeatures:Ljava/util/List;

    iget-object v3, p0, Lorg/fdroid/database/Repository;->categories:Ljava/util/List;

    iget-object v4, p0, Lorg/fdroid/database/Repository;->releaseChannels:Ljava/util/List;

    iget-object v5, p0, Lorg/fdroid/database/Repository;->preferences:Lorg/fdroid/database/RepositoryPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Repository(repository="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mirrors="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", antiFeatures="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", categories="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", releaseChannels="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", preferences="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
