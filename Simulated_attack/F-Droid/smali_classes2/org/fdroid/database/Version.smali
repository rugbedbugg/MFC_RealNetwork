.class public final Lorg/fdroid/database/Version;
.super Ljava/lang/Object;
.source "Version.kt"

# interfaces
.implements Lorg/fdroid/index/v2/PackageVersion;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/database/Version$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0081\u0008\u0018\u0000 L2\u00020\u0001:\u0001LB\u00a1\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0010\u0008\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000f\u0012&\u0008\u0002\u0010\u0010\u001a \u0012\u0004\u0012\u00020\u0005\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0011j\u0002`\u0012\u0018\u00010\u0011\u0012\u001c\u0008\u0002\u0010\u0013\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0011j\u0004\u0018\u0001`\u0012\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u00a2\u0006\u0002\u0010\u0016J\t\u00105\u001a\u00020\u0003H\u00c6\u0003J\u001d\u00106\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0011j\u0004\u0018\u0001`\u0012H\u00c6\u0003J\t\u00107\u001a\u00020\u0015H\u00c6\u0003J\t\u00108\u001a\u00020\u0005H\u00c6\u0003J\t\u00109\u001a\u00020\u0005H\u00c6\u0003J\t\u0010:\u001a\u00020\u0003H\u00c6\u0003J\t\u0010;\u001a\u00020\tH\u00c6\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J\t\u0010=\u001a\u00020\rH\u00c6\u0003J\u0011\u0010>\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000fH\u00c6\u0003J\'\u0010?\u001a \u0012\u0004\u0012\u00020\u0005\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0011j\u0002`\u0012\u0018\u00010\u0011H\u00c6\u0003J\u00b3\u0001\u0010@\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0010\u0008\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000f2&\u0008\u0002\u0010\u0010\u001a \u0012\u0004\u0012\u00020\u0005\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0011j\u0002`\u0012\u0018\u00010\u00112\u001c\u0008\u0002\u0010\u0013\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0011j\u0004\u0018\u0001`\u00122\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015H\u00c6\u0001J\u0013\u0010A\u001a\u00020\u00152\u0008\u0010B\u001a\u0004\u0018\u00010CH\u00d6\u0003J\t\u0010D\u001a\u00020EH\u00d6\u0001J\u001b\u0010F\u001a\u00020G2\u000c\u0010H\u001a\u0008\u0012\u0004\u0012\u00020I0\u000fH\u0000\u00a2\u0006\u0002\u0008JJ\t\u0010K\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R/\u0010\u0010\u001a \u0012\u0004\u0012\u00020\u0005\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0011j\u0002`\u0012\u0018\u00010\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u001d\u001a\u00020\u00158VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001fR\u0011\u0010\u0014\u001a\u00020\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u001fR\u0016\u0010\u000c\u001a\u00020\r8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0014\u0010\"\u001a\u00020#8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010%R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'R\u001c\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000fX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010)R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\u0018R\u0016\u0010+\u001a\u0004\u0018\u00010,8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010.R\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u00100R\u0014\u00101\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00082\u0010\u0018R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u0010\'R%\u0010\u0013\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0011j\u0004\u0018\u0001`\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u0010\u001a\u00a8\u0006M"
    }
    d2 = {
        "Lorg/fdroid/database/Version;",
        "Lorg/fdroid/index/v2/PackageVersion;",
        "repoId",
        "",
        "packageName",
        "",
        "versionId",
        "added",
        "file",
        "Lorg/fdroid/index/v2/FileV1;",
        "src",
        "Lorg/fdroid/index/v2/FileV2;",
        "manifest",
        "Lorg/fdroid/database/AppManifest;",
        "releaseChannels",
        "",
        "antiFeatures",
        "",
        "Lorg/fdroid/index/v2/LocalizedTextV2;",
        "whatsNew",
        "isCompatible",
        "",
        "(JLjava/lang/String;Ljava/lang/String;JLorg/fdroid/index/v2/FileV1;Lorg/fdroid/index/v2/FileV2;Lorg/fdroid/database/AppManifest;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Z)V",
        "getAdded",
        "()J",
        "getAntiFeatures",
        "()Ljava/util/Map;",
        "getFile",
        "()Lorg/fdroid/index/v2/FileV1;",
        "hasKnownVulnerability",
        "getHasKnownVulnerability",
        "()Z",
        "getManifest",
        "()Lorg/fdroid/database/AppManifest;",
        "packageManifest",
        "Lorg/fdroid/index/v2/PackageManifest;",
        "getPackageManifest",
        "()Lorg/fdroid/index/v2/PackageManifest;",
        "getPackageName",
        "()Ljava/lang/String;",
        "getReleaseChannels",
        "()Ljava/util/List;",
        "getRepoId",
        "signer",
        "Lorg/fdroid/index/v2/SignerV2;",
        "getSigner",
        "()Lorg/fdroid/index/v2/SignerV2;",
        "getSrc",
        "()Lorg/fdroid/index/v2/FileV2;",
        "versionCode",
        "getVersionCode",
        "getVersionId",
        "getWhatsNew",
        "component1",
        "component10",
        "component11",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toAppVersion",
        "Lorg/fdroid/database/AppVersion;",
        "versionedStrings",
        "Lorg/fdroid/database/VersionedString;",
        "toAppVersion$database_release",
        "toString",
        "Companion",
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


# static fields
.field public static final Companion:Lorg/fdroid/database/Version$Companion;

.field public static final TABLE:Ljava/lang/String; = "Version"


# instance fields
.field private final added:J

.field private final antiFeatures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final file:Lorg/fdroid/index/v2/FileV1;

.field private final isCompatible:Z

.field private final manifest:Lorg/fdroid/database/AppManifest;

.field private final packageName:Ljava/lang/String;

.field private final releaseChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final repoId:J

.field private final src:Lorg/fdroid/index/v2/FileV2;

.field private final versionId:Ljava/lang/String;

.field private final whatsNew:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/fdroid/database/Version$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fdroid/database/Version$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fdroid/database/Version;->Companion:Lorg/fdroid/database/Version$Companion;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JLorg/fdroid/index/v2/FileV1;Lorg/fdroid/index/v2/FileV2;Lorg/fdroid/database/AppManifest;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lorg/fdroid/index/v2/FileV1;",
            "Lorg/fdroid/index/v2/FileV2;",
            "Lorg/fdroid/database/AppManifest;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manifest"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/fdroid/database/Version;->repoId:J

    iput-object p3, p0, Lorg/fdroid/database/Version;->packageName:Ljava/lang/String;

    iput-object p4, p0, Lorg/fdroid/database/Version;->versionId:Ljava/lang/String;

    iput-wide p5, p0, Lorg/fdroid/database/Version;->added:J

    iput-object p7, p0, Lorg/fdroid/database/Version;->file:Lorg/fdroid/index/v2/FileV1;

    iput-object p8, p0, Lorg/fdroid/database/Version;->src:Lorg/fdroid/index/v2/FileV2;

    iput-object p9, p0, Lorg/fdroid/database/Version;->manifest:Lorg/fdroid/database/AppManifest;

    iput-object p10, p0, Lorg/fdroid/database/Version;->releaseChannels:Ljava/util/List;

    iput-object p11, p0, Lorg/fdroid/database/Version;->antiFeatures:Ljava/util/Map;

    iput-object p12, p0, Lorg/fdroid/database/Version;->whatsNew:Ljava/util/Map;

    iput-boolean p13, p0, Lorg/fdroid/database/Version;->isCompatible:Z

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;JLorg/fdroid/index/v2/FileV1;Lorg/fdroid/index/v2/FileV2;Lorg/fdroid/database/AppManifest;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v11, v2

    goto :goto_0

    :cond_0
    move-object/from16 v11, p8

    :goto_0
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    .line 47
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v13, v1

    goto :goto_1

    :cond_1
    move-object/from16 v13, p10

    :goto_1
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_2

    move-object v14, v2

    goto :goto_2

    :cond_2
    move-object/from16 v14, p11

    :goto_2
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_3

    move-object v15, v2

    goto :goto_3

    :cond_3
    move-object/from16 v15, p12

    :goto_3
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v12, p9

    move/from16 v16, p13

    .line 39
    invoke-direct/range {v3 .. v16}, Lorg/fdroid/database/Version;-><init>(JLjava/lang/String;Ljava/lang/String;JLorg/fdroid/index/v2/FileV1;Lorg/fdroid/index/v2/FileV2;Lorg/fdroid/database/AppManifest;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lorg/fdroid/database/Version;JLjava/lang/String;Ljava/lang/String;JLorg/fdroid/index/v2/FileV1;Lorg/fdroid/index/v2/FileV2;Lorg/fdroid/database/AppManifest;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;ZILjava/lang/Object;)Lorg/fdroid/database/Version;
    .locals 14

    .line 0
    move-object v0, p0

    move/from16 v1, p14

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lorg/fdroid/database/Version;->repoId:J

    goto :goto_0

    :cond_0
    move-wide v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Lorg/fdroid/database/Version;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lorg/fdroid/database/Version;->versionId:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-wide v6, v0, Lorg/fdroid/database/Version;->added:J

    goto :goto_3

    :cond_3
    move-wide/from16 v6, p5

    :goto_3
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_4

    iget-object v8, v0, Lorg/fdroid/database/Version;->file:Lorg/fdroid/index/v2/FileV1;

    goto :goto_4

    :cond_4
    move-object/from16 v8, p7

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_5

    iget-object v9, v0, Lorg/fdroid/database/Version;->src:Lorg/fdroid/index/v2/FileV2;

    goto :goto_5

    :cond_5
    move-object/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget-object v10, v0, Lorg/fdroid/database/Version;->manifest:Lorg/fdroid/database/AppManifest;

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    iget-object v11, v0, Lorg/fdroid/database/Version;->releaseChannels:Ljava/util/List;

    goto :goto_7

    :cond_7
    move-object/from16 v11, p10

    :goto_7
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_8

    iget-object v12, v0, Lorg/fdroid/database/Version;->antiFeatures:Ljava/util/Map;

    goto :goto_8

    :cond_8
    move-object/from16 v12, p11

    :goto_8
    and-int/lit16 v13, v1, 0x200

    if-eqz v13, :cond_9

    iget-object v13, v0, Lorg/fdroid/database/Version;->whatsNew:Ljava/util/Map;

    goto :goto_9

    :cond_9
    move-object/from16 v13, p12

    :goto_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    iget-boolean v1, v0, Lorg/fdroid/database/Version;->isCompatible:Z

    goto :goto_a

    :cond_a
    move/from16 v1, p13

    :goto_a
    move-wide p1, v2

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-wide/from16 p5, v6

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move/from16 p13, v1

    invoke-virtual/range {p0 .. p13}, Lorg/fdroid/database/Version;->copy(JLjava/lang/String;Ljava/lang/String;JLorg/fdroid/index/v2/FileV1;Lorg/fdroid/index/v2/FileV2;Lorg/fdroid/database/AppManifest;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Z)Lorg/fdroid/database/Version;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/Version;->repoId:J

    return-wide v0
.end method

.method public final component10()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/Version;->whatsNew:Ljava/util/Map;

    return-object v0
.end method

.method public final component11()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/fdroid/database/Version;->isCompatible:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/Version;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/Version;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/Version;->added:J

    return-wide v0
.end method

.method public final component5()Lorg/fdroid/index/v2/FileV1;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/Version;->file:Lorg/fdroid/index/v2/FileV1;

    return-object v0
.end method

.method public final component6()Lorg/fdroid/index/v2/FileV2;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/Version;->src:Lorg/fdroid/index/v2/FileV2;

    return-object v0
.end method

.method public final component7()Lorg/fdroid/database/AppManifest;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/Version;->manifest:Lorg/fdroid/database/AppManifest;

    return-object v0
.end method

.method public final component8()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/Version;->releaseChannels:Ljava/util/List;

    return-object v0
.end method

.method public final component9()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/Version;->antiFeatures:Ljava/util/Map;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;Ljava/lang/String;JLorg/fdroid/index/v2/FileV1;Lorg/fdroid/index/v2/FileV2;Lorg/fdroid/database/AppManifest;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Z)Lorg/fdroid/database/Version;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lorg/fdroid/index/v2/FileV1;",
            "Lorg/fdroid/index/v2/FileV2;",
            "Lorg/fdroid/database/AppManifest;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lorg/fdroid/database/Version;"
        }
    .end annotation

    .line 0
    const-string v0, "packageName"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionId"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manifest"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/fdroid/database/Version;

    move-object v1, v0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p5

    move-object/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    invoke-direct/range {v1 .. v14}, Lorg/fdroid/database/Version;-><init>(JLjava/lang/String;Ljava/lang/String;JLorg/fdroid/index/v2/FileV1;Lorg/fdroid/index/v2/FileV2;Lorg/fdroid/database/AppManifest;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/fdroid/database/Version;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/fdroid/database/Version;

    iget-wide v3, p0, Lorg/fdroid/database/Version;->repoId:J

    iget-wide v5, p1, Lorg/fdroid/database/Version;->repoId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/fdroid/database/Version;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/database/Version;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/fdroid/database/Version;->versionId:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/database/Version;->versionId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lorg/fdroid/database/Version;->added:J

    iget-wide v5, p1, Lorg/fdroid/database/Version;->added:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lorg/fdroid/database/Version;->file:Lorg/fdroid/index/v2/FileV1;

    iget-object v3, p1, Lorg/fdroid/database/Version;->file:Lorg/fdroid/index/v2/FileV1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lorg/fdroid/database/Version;->src:Lorg/fdroid/index/v2/FileV2;

    iget-object v3, p1, Lorg/fdroid/database/Version;->src:Lorg/fdroid/index/v2/FileV2;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lorg/fdroid/database/Version;->manifest:Lorg/fdroid/database/AppManifest;

    iget-object v3, p1, Lorg/fdroid/database/Version;->manifest:Lorg/fdroid/database/AppManifest;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lorg/fdroid/database/Version;->releaseChannels:Ljava/util/List;

    iget-object v3, p1, Lorg/fdroid/database/Version;->releaseChannels:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lorg/fdroid/database/Version;->antiFeatures:Ljava/util/Map;

    iget-object v3, p1, Lorg/fdroid/database/Version;->antiFeatures:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lorg/fdroid/database/Version;->whatsNew:Ljava/util/Map;

    iget-object v3, p1, Lorg/fdroid/database/Version;->whatsNew:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lorg/fdroid/database/Version;->isCompatible:Z

    iget-boolean p1, p1, Lorg/fdroid/database/Version;->isCompatible:Z

    if-eq v1, p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getAdded()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/Version;->added:J

    return-wide v0
.end method

.method public final getAntiFeatures()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/Version;->antiFeatures:Ljava/util/Map;

    return-object v0
.end method

.method public final getFile()Lorg/fdroid/index/v2/FileV1;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/Version;->file:Lorg/fdroid/index/v2/FileV1;

    return-object v0
.end method

.method public getHasKnownVulnerability()Z
    .locals 3

    iget-object v0, p0, Lorg/fdroid/database/Version;->antiFeatures:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "KnownVuln"

    .line 60
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public final getManifest()Lorg/fdroid/database/AppManifest;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/Version;->manifest:Lorg/fdroid/database/AppManifest;

    return-object v0
.end method

.method public getPackageManifest()Lorg/fdroid/index/v2/PackageManifest;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/Version;->manifest:Lorg/fdroid/database/AppManifest;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/Version;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseChannels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/Version;->releaseChannels:Ljava/util/List;

    return-object v0
.end method

.method public final getRepoId()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/Version;->repoId:J

    return-wide v0
.end method

.method public getSigner()Lorg/fdroid/index/v2/SignerV2;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/Version;->manifest:Lorg/fdroid/database/AppManifest;

    .line 57
    invoke-virtual {v0}, Lorg/fdroid/database/AppManifest;->getSigner()Lorg/fdroid/index/v2/SignerV2;

    move-result-object v0

    return-object v0
.end method

.method public final getSrc()Lorg/fdroid/index/v2/FileV2;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/Version;->src:Lorg/fdroid/index/v2/FileV2;

    return-object v0
.end method

.method public getVersionCode()J
    .locals 2

    iget-object v0, p0, Lorg/fdroid/database/Version;->manifest:Lorg/fdroid/database/AppManifest;

    .line 56
    invoke-virtual {v0}, Lorg/fdroid/database/AppManifest;->getVersionCode()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getVersionId()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/Version;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getWhatsNew()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/Version;->whatsNew:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/Version;->repoId:J

    invoke-static {v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/Version;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/Version;->versionId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/fdroid/database/Version;->added:J

    invoke-static {v1, v2}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/Version;->file:Lorg/fdroid/index/v2/FileV1;

    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV1;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/Version;->src:Lorg/fdroid/index/v2/FileV2;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV2;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/Version;->manifest:Lorg/fdroid/database/AppManifest;

    invoke-virtual {v1}, Lorg/fdroid/database/AppManifest;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/Version;->releaseChannels:Ljava/util/List;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/Version;->antiFeatures:Ljava/util/Map;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/Version;->whatsNew:Ljava/util/Map;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/fdroid/database/Version;->isCompatible:Z

    invoke-static {v1}, Landroidx/compose/foundation/ClickableElement$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isCompatible()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/fdroid/database/Version;->isCompatible:Z

    return v0
.end method

.method public final toAppVersion$database_release(Ljava/util/List;)Lorg/fdroid/database/AppVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/VersionedString;",
            ">;)",
            "Lorg/fdroid/database/AppVersion;"
        }
    .end annotation

    const-string v0, "versionedStrings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lorg/fdroid/database/AppVersion;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/AppVersion;-><init>(Lorg/fdroid/database/Version;Ljava/util/List;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/Version;->repoId:J

    iget-object v2, p0, Lorg/fdroid/database/Version;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lorg/fdroid/database/Version;->versionId:Ljava/lang/String;

    iget-wide v4, p0, Lorg/fdroid/database/Version;->added:J

    iget-object v6, p0, Lorg/fdroid/database/Version;->file:Lorg/fdroid/index/v2/FileV1;

    iget-object v7, p0, Lorg/fdroid/database/Version;->src:Lorg/fdroid/index/v2/FileV2;

    iget-object v8, p0, Lorg/fdroid/database/Version;->manifest:Lorg/fdroid/database/AppManifest;

    iget-object v9, p0, Lorg/fdroid/database/Version;->releaseChannels:Ljava/util/List;

    iget-object v10, p0, Lorg/fdroid/database/Version;->antiFeatures:Ljava/util/Map;

    iget-object v11, p0, Lorg/fdroid/database/Version;->whatsNew:Ljava/util/Map;

    iget-boolean v12, p0, Lorg/fdroid/database/Version;->isCompatible:Z

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Version(repoId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", packageName="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", versionId="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", added="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", file="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", src="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", manifest="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", releaseChannels="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", antiFeatures="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", whatsNew="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isCompatible="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
