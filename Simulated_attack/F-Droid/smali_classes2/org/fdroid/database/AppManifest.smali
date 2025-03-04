.class public final Lorg/fdroid/database/AppManifest;
.super Ljava/lang/Object;
.source "Version.kt"

# interfaces
.implements Lorg/fdroid/index/v2/PackageManifest;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008 \n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B]\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0010\u0008\u0002\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r\u0012\u0010\u0008\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r\u00a2\u0006\u0002\u0010\u000fJ\t\u0010$\u001a\u00020\u0003H\u00c6\u0003J\t\u0010%\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u0010\u0010\'\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0015J\u000b\u0010(\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J\u0011\u0010)\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\rH\u00c6\u0003J\u0011\u0010*\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\rH\u00c6\u0003Jj\u0010+\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0010\u0008\u0002\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r2\u0010\u0008\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\rH\u00c6\u0001\u00a2\u0006\u0002\u0010,J\u0013\u0010-\u001a\u00020.2\u0008\u0010/\u001a\u0004\u0018\u000100H\u00d6\u0003J\t\u00101\u001a\u00020\tH\u00d6\u0001J\t\u00102\u001a\u00020\u0003H\u00d6\u0001R\u001c\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0019\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012R\u0018\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0096\u0004\u00a2\u0006\n\n\u0002\u0010\u0016\u001a\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0017\u001a\u0004\u0018\u00010\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0015R\u001c\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\rX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0012R\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u001c\u001a\u0004\u0018\u00010\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u0015R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#\u00a8\u00063"
    }
    d2 = {
        "Lorg/fdroid/database/AppManifest;",
        "Lorg/fdroid/index/v2/PackageManifest;",
        "versionName",
        "",
        "versionCode",
        "",
        "usesSdk",
        "Lorg/fdroid/index/v2/UsesSdkV2;",
        "maxSdkVersion",
        "",
        "signer",
        "Lorg/fdroid/index/v2/SignerV2;",
        "nativecode",
        "",
        "features",
        "(Ljava/lang/String;JLorg/fdroid/index/v2/UsesSdkV2;Ljava/lang/Integer;Lorg/fdroid/index/v2/SignerV2;Ljava/util/List;Ljava/util/List;)V",
        "featureNames",
        "getFeatureNames",
        "()Ljava/util/List;",
        "getFeatures",
        "getMaxSdkVersion",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "minSdkVersion",
        "getMinSdkVersion",
        "getNativecode",
        "getSigner",
        "()Lorg/fdroid/index/v2/SignerV2;",
        "targetSdkVersion",
        "getTargetSdkVersion",
        "getUsesSdk",
        "()Lorg/fdroid/index/v2/UsesSdkV2;",
        "getVersionCode",
        "()J",
        "getVersionName",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "(Ljava/lang/String;JLorg/fdroid/index/v2/UsesSdkV2;Ljava/lang/Integer;Lorg/fdroid/index/v2/SignerV2;Ljava/util/List;Ljava/util/List;)Lorg/fdroid/database/AppManifest;",
        "equals",
        "",
        "other",
        "",
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
.field private final features:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final maxSdkVersion:Ljava/lang/Integer;

.field private final nativecode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final signer:Lorg/fdroid/index/v2/SignerV2;

.field private final usesSdk:Lorg/fdroid/index/v2/UsesSdkV2;

.field private final versionCode:J

.field private final versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLorg/fdroid/index/v2/UsesSdkV2;Ljava/lang/Integer;Lorg/fdroid/index/v2/SignerV2;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lorg/fdroid/index/v2/UsesSdkV2;",
            "Ljava/lang/Integer;",
            "Lorg/fdroid/index/v2/SignerV2;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "versionName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/database/AppManifest;->versionName:Ljava/lang/String;

    iput-wide p2, p0, Lorg/fdroid/database/AppManifest;->versionCode:J

    iput-object p4, p0, Lorg/fdroid/database/AppManifest;->usesSdk:Lorg/fdroid/index/v2/UsesSdkV2;

    iput-object p5, p0, Lorg/fdroid/database/AppManifest;->maxSdkVersion:Ljava/lang/Integer;

    iput-object p6, p0, Lorg/fdroid/database/AppManifest;->signer:Lorg/fdroid/index/v2/SignerV2;

    iput-object p7, p0, Lorg/fdroid/database/AppManifest;->nativecode:Ljava/util/List;

    iput-object p8, p0, Lorg/fdroid/database/AppManifest;->features:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JLorg/fdroid/index/v2/UsesSdkV2;Ljava/lang/Integer;Lorg/fdroid/index/v2/SignerV2;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    and-int/lit8 v0, p9, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, p4

    :goto_0
    and-int/lit8 v0, p9, 0x8

    if-eqz v0, :cond_1

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object/from16 v7, p5

    :goto_1
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_2

    move-object v8, v1

    goto :goto_2

    :cond_2
    move-object/from16 v8, p6

    :goto_2
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_3

    .line 132
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v9, v0

    goto :goto_3

    :cond_3
    move-object/from16 v9, p7

    :goto_3
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_4

    .line 133
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v10, v0

    goto :goto_4

    :cond_4
    move-object/from16 v10, p8

    :goto_4
    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    .line 126
    invoke-direct/range {v2 .. v10}, Lorg/fdroid/database/AppManifest;-><init>(Ljava/lang/String;JLorg/fdroid/index/v2/UsesSdkV2;Ljava/lang/Integer;Lorg/fdroid/index/v2/SignerV2;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lorg/fdroid/database/AppManifest;Ljava/lang/String;JLorg/fdroid/index/v2/UsesSdkV2;Ljava/lang/Integer;Lorg/fdroid/index/v2/SignerV2;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lorg/fdroid/database/AppManifest;
    .locals 9

    .line 0
    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/fdroid/database/AppManifest;->versionName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_1

    iget-wide v2, v0, Lorg/fdroid/database/AppManifest;->versionCode:J

    goto :goto_1

    :cond_1
    move-wide v2, p2

    :goto_1
    and-int/lit8 v4, p9, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lorg/fdroid/database/AppManifest;->usesSdk:Lorg/fdroid/index/v2/UsesSdkV2;

    goto :goto_2

    :cond_2
    move-object v4, p4

    :goto_2
    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lorg/fdroid/database/AppManifest;->maxSdkVersion:Ljava/lang/Integer;

    goto :goto_3

    :cond_3
    move-object v5, p5

    :goto_3
    and-int/lit8 v6, p9, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lorg/fdroid/database/AppManifest;->signer:Lorg/fdroid/index/v2/SignerV2;

    goto :goto_4

    :cond_4
    move-object v6, p6

    :goto_4
    and-int/lit8 v7, p9, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lorg/fdroid/database/AppManifest;->nativecode:Ljava/util/List;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p7

    :goto_5
    and-int/lit8 v8, p9, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lorg/fdroid/database/AppManifest;->features:Ljava/util/List;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p8

    :goto_6
    move-object p1, v1

    move-wide p2, v2

    move-object p4, v4

    move-object p5, v5

    move-object p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    invoke-virtual/range {p0 .. p8}, Lorg/fdroid/database/AppManifest;->copy(Ljava/lang/String;JLorg/fdroid/index/v2/UsesSdkV2;Ljava/lang/Integer;Lorg/fdroid/index/v2/SignerV2;Ljava/util/List;Ljava/util/List;)Lorg/fdroid/database/AppManifest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/AppManifest;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/AppManifest;->versionCode:J

    return-wide v0
.end method

.method public final component3()Lorg/fdroid/index/v2/UsesSdkV2;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/AppManifest;->usesSdk:Lorg/fdroid/index/v2/UsesSdkV2;

    return-object v0
.end method

.method public final component4()Ljava/lang/Integer;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/AppManifest;->maxSdkVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component5()Lorg/fdroid/index/v2/SignerV2;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/AppManifest;->signer:Lorg/fdroid/index/v2/SignerV2;

    return-object v0
.end method

.method public final component6()Ljava/util/List;
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
    iget-object v0, p0, Lorg/fdroid/database/AppManifest;->nativecode:Ljava/util/List;

    return-object v0
.end method

.method public final component7()Ljava/util/List;
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
    iget-object v0, p0, Lorg/fdroid/database/AppManifest;->features:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;JLorg/fdroid/index/v2/UsesSdkV2;Ljava/lang/Integer;Lorg/fdroid/index/v2/SignerV2;Ljava/util/List;Ljava/util/List;)Lorg/fdroid/database/AppManifest;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lorg/fdroid/index/v2/UsesSdkV2;",
            "Ljava/lang/Integer;",
            "Lorg/fdroid/index/v2/SignerV2;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/fdroid/database/AppManifest;"
        }
    .end annotation

    .line 0
    const-string v0, "versionName"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/fdroid/database/AppManifest;

    move-object v1, v0

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lorg/fdroid/database/AppManifest;-><init>(Ljava/lang/String;JLorg/fdroid/index/v2/UsesSdkV2;Ljava/lang/Integer;Lorg/fdroid/index/v2/SignerV2;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/fdroid/database/AppManifest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/fdroid/database/AppManifest;

    iget-object v1, p0, Lorg/fdroid/database/AppManifest;->versionName:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/database/AppManifest;->versionName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lorg/fdroid/database/AppManifest;->versionCode:J

    iget-wide v5, p1, Lorg/fdroid/database/AppManifest;->versionCode:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/fdroid/database/AppManifest;->usesSdk:Lorg/fdroid/index/v2/UsesSdkV2;

    iget-object v3, p1, Lorg/fdroid/database/AppManifest;->usesSdk:Lorg/fdroid/index/v2/UsesSdkV2;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/fdroid/database/AppManifest;->maxSdkVersion:Ljava/lang/Integer;

    iget-object v3, p1, Lorg/fdroid/database/AppManifest;->maxSdkVersion:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lorg/fdroid/database/AppManifest;->signer:Lorg/fdroid/index/v2/SignerV2;

    iget-object v3, p1, Lorg/fdroid/database/AppManifest;->signer:Lorg/fdroid/index/v2/SignerV2;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lorg/fdroid/database/AppManifest;->nativecode:Ljava/util/List;

    iget-object v3, p1, Lorg/fdroid/database/AppManifest;->nativecode:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lorg/fdroid/database/AppManifest;->features:Ljava/util/List;

    iget-object p1, p1, Lorg/fdroid/database/AppManifest;->features:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public getFeatureNames()Ljava/util/List;
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
    iget-object v0, p0, Lorg/fdroid/database/AppManifest;->features:Ljava/util/List;

    return-object v0
.end method

.method public final getFeatures()Ljava/util/List;
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
    iget-object v0, p0, Lorg/fdroid/database/AppManifest;->features:Ljava/util/List;

    return-object v0
.end method

.method public getMaxSdkVersion()Ljava/lang/Integer;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/AppManifest;->maxSdkVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMinSdkVersion()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/AppManifest;->usesSdk:Lorg/fdroid/index/v2/UsesSdkV2;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Lorg/fdroid/index/v2/UsesSdkV2;->getMinSdkVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNativecode()Ljava/util/List;
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
    iget-object v0, p0, Lorg/fdroid/database/AppManifest;->nativecode:Ljava/util/List;

    return-object v0
.end method

.method public final getSigner()Lorg/fdroid/index/v2/SignerV2;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/AppManifest;->signer:Lorg/fdroid/index/v2/SignerV2;

    return-object v0
.end method

.method public getTargetSdkVersion()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/AppManifest;->usesSdk:Lorg/fdroid/index/v2/UsesSdkV2;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Lorg/fdroid/index/v2/UsesSdkV2;->getTargetSdkVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getUsesSdk()Lorg/fdroid/index/v2/UsesSdkV2;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/AppManifest;->usesSdk:Lorg/fdroid/index/v2/UsesSdkV2;

    return-object v0
.end method

.method public final getVersionCode()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/AppManifest;->versionCode:J

    return-wide v0
.end method

.method public final getVersionName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/AppManifest;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/AppManifest;->versionName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/fdroid/database/AppManifest;->versionCode:J

    invoke-static {v1, v2}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/AppManifest;->usesSdk:Lorg/fdroid/index/v2/UsesSdkV2;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/fdroid/index/v2/UsesSdkV2;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/AppManifest;->maxSdkVersion:Ljava/lang/Integer;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/AppManifest;->signer:Lorg/fdroid/index/v2/SignerV2;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lorg/fdroid/index/v2/SignerV2;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/AppManifest;->nativecode:Ljava/util/List;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/AppManifest;->features:Ljava/util/List;

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/AppManifest;->versionName:Ljava/lang/String;

    iget-wide v1, p0, Lorg/fdroid/database/AppManifest;->versionCode:J

    iget-object v3, p0, Lorg/fdroid/database/AppManifest;->usesSdk:Lorg/fdroid/index/v2/UsesSdkV2;

    iget-object v4, p0, Lorg/fdroid/database/AppManifest;->maxSdkVersion:Ljava/lang/Integer;

    iget-object v5, p0, Lorg/fdroid/database/AppManifest;->signer:Lorg/fdroid/index/v2/SignerV2;

    iget-object v6, p0, Lorg/fdroid/database/AppManifest;->nativecode:Ljava/util/List;

    iget-object v7, p0, Lorg/fdroid/database/AppManifest;->features:Ljava/util/List;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AppManifest(versionName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", versionCode="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", usesSdk="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", maxSdkVersion="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", signer="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", nativecode="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", features="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
