.class public final Lorg/fdroid/database/UpdatableApp;
.super Ljava/lang/Object;
.source "App.kt"

# interfaces
.implements Lorg/fdroid/database/MinimalApp;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001Ba\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\u0010\u0008\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f\u00a2\u0006\u0002\u0010\u0011J\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010 \u001a\u00020\u0005H\u00c6\u0003J\t\u0010!\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0008H\u00c6\u0003J\t\u0010#\u001a\u00020\nH\u00c6\u0003J\t\u0010$\u001a\u00020\nH\u00c6\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0016\u0010\'\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fH\u00c0\u0003\u00a2\u0006\u0002\u0008(Jo\u0010)\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\u0010\u0008\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fH\u00c6\u0001J\u0013\u0010*\u001a\u00020\n2\u0008\u0010+\u001a\u0004\u0018\u00010,H\u00d6\u0003J\u0012\u0010-\u001a\u0004\u0018\u00010.2\u0006\u0010/\u001a\u000200H\u0016J\t\u00101\u001a\u000202H\u00d6\u0001J\t\u00103\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0013R\u001c\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u000c\u001a\u0004\u0018\u00010\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0019R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0015R\u0016\u0010\r\u001a\u0004\u0018\u00010\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0019R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u00064"
    }
    d2 = {
        "Lorg/fdroid/database/UpdatableApp;",
        "Lorg/fdroid/database/MinimalApp;",
        "repoId",
        "",
        "packageName",
        "",
        "installedVersionCode",
        "update",
        "Lorg/fdroid/database/AppVersion;",
        "isFromPreferredRepo",
        "",
        "hasKnownVulnerability",
        "name",
        "summary",
        "localizedIcon",
        "",
        "Lorg/fdroid/database/LocalizedIcon;",
        "(JLjava/lang/String;JLorg/fdroid/database/AppVersion;ZZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V",
        "getHasKnownVulnerability",
        "()Z",
        "getInstalledVersionCode",
        "()J",
        "getLocalizedIcon$database_release",
        "()Ljava/util/List;",
        "getName",
        "()Ljava/lang/String;",
        "getPackageName",
        "getRepoId",
        "getSummary",
        "getUpdate",
        "()Lorg/fdroid/database/AppVersion;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component9$database_release",
        "copy",
        "equals",
        "other",
        "",
        "getIcon",
        "Lorg/fdroid/index/v2/FileV2;",
        "localeList",
        "Landroidx/core/os/LocaleListCompat;",
        "hashCode",
        "",
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
.field private final hasKnownVulnerability:Z

.field private final installedVersionCode:J

.field private final isFromPreferredRepo:Z

.field private final localizedIcon:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/database/LocalizedIcon;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final repoId:J

.field private final summary:Ljava/lang/String;

.field private final update:Lorg/fdroid/database/AppVersion;


# direct methods
.method public constructor <init>(JLjava/lang/String;JLorg/fdroid/database/AppVersion;ZZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "J",
            "Lorg/fdroid/database/AppVersion;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/fdroid/database/LocalizedIcon;",
            ">;)V"
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "update"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/fdroid/database/UpdatableApp;->repoId:J

    iput-object p3, p0, Lorg/fdroid/database/UpdatableApp;->packageName:Ljava/lang/String;

    iput-wide p4, p0, Lorg/fdroid/database/UpdatableApp;->installedVersionCode:J

    iput-object p6, p0, Lorg/fdroid/database/UpdatableApp;->update:Lorg/fdroid/database/AppVersion;

    iput-boolean p7, p0, Lorg/fdroid/database/UpdatableApp;->isFromPreferredRepo:Z

    iput-boolean p8, p0, Lorg/fdroid/database/UpdatableApp;->hasKnownVulnerability:Z

    iput-object p9, p0, Lorg/fdroid/database/UpdatableApp;->name:Ljava/lang/String;

    iput-object p10, p0, Lorg/fdroid/database/UpdatableApp;->summary:Ljava/lang/String;

    iput-object p11, p0, Lorg/fdroid/database/UpdatableApp;->localizedIcon:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;JLorg/fdroid/database/AppVersion;ZZLjava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v12, v2

    goto :goto_0

    :cond_0
    move-object/from16 v12, p9

    :goto_0
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    move-object v13, v2

    goto :goto_1

    :cond_1
    move-object/from16 v13, p10

    :goto_1
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2

    move-object v14, v2

    goto :goto_2

    :cond_2
    move-object/from16 v14, p11

    :goto_2
    move-object v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    .line 336
    invoke-direct/range {v3 .. v14}, Lorg/fdroid/database/UpdatableApp;-><init>(JLjava/lang/String;JLorg/fdroid/database/AppVersion;ZZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lorg/fdroid/database/UpdatableApp;JLjava/lang/String;JLorg/fdroid/database/AppVersion;ZZLjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lorg/fdroid/database/UpdatableApp;
    .locals 12

    .line 0
    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lorg/fdroid/database/UpdatableApp;->repoId:J

    goto :goto_0

    :cond_0
    move-wide v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Lorg/fdroid/database/UpdatableApp;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-wide v5, v0, Lorg/fdroid/database/UpdatableApp;->installedVersionCode:J

    goto :goto_2

    :cond_2
    move-wide/from16 v5, p4

    :goto_2
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_3

    iget-object v7, v0, Lorg/fdroid/database/UpdatableApp;->update:Lorg/fdroid/database/AppVersion;

    goto :goto_3

    :cond_3
    move-object/from16 v7, p6

    :goto_3
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_4

    iget-boolean v8, v0, Lorg/fdroid/database/UpdatableApp;->isFromPreferredRepo:Z

    goto :goto_4

    :cond_4
    move/from16 v8, p7

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_5

    iget-boolean v9, v0, Lorg/fdroid/database/UpdatableApp;->hasKnownVulnerability:Z

    goto :goto_5

    :cond_5
    move/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget-object v10, v0, Lorg/fdroid/database/UpdatableApp;->name:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    iget-object v11, v0, Lorg/fdroid/database/UpdatableApp;->summary:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v11, p10

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lorg/fdroid/database/UpdatableApp;->localizedIcon:Ljava/util/List;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p11

    :goto_8
    move-wide p1, v2

    move-object p3, v4

    move-wide/from16 p4, v5

    move-object/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lorg/fdroid/database/UpdatableApp;->copy(JLjava/lang/String;JLorg/fdroid/database/AppVersion;ZZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/fdroid/database/UpdatableApp;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/UpdatableApp;->repoId:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/UpdatableApp;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/UpdatableApp;->installedVersionCode:J

    return-wide v0
.end method

.method public final component4()Lorg/fdroid/database/AppVersion;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/UpdatableApp;->update:Lorg/fdroid/database/AppVersion;

    return-object v0
.end method

.method public final component5()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/fdroid/database/UpdatableApp;->isFromPreferredRepo:Z

    return v0
.end method

.method public final component6()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/fdroid/database/UpdatableApp;->hasKnownVulnerability:Z

    return v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/UpdatableApp;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/UpdatableApp;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public final component9$database_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/database/LocalizedIcon;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/UpdatableApp;->localizedIcon:Ljava/util/List;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;JLorg/fdroid/database/AppVersion;ZZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/fdroid/database/UpdatableApp;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "J",
            "Lorg/fdroid/database/AppVersion;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/fdroid/database/LocalizedIcon;",
            ">;)",
            "Lorg/fdroid/database/UpdatableApp;"
        }
    .end annotation

    .line 0
    const-string v0, "packageName"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "update"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/fdroid/database/UpdatableApp;

    move-object v1, v0

    move-wide v2, p1

    move-wide/from16 v5, p4

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lorg/fdroid/database/UpdatableApp;-><init>(JLjava/lang/String;JLorg/fdroid/database/AppVersion;ZZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/fdroid/database/UpdatableApp;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/fdroid/database/UpdatableApp;

    iget-wide v3, p0, Lorg/fdroid/database/UpdatableApp;->repoId:J

    iget-wide v5, p1, Lorg/fdroid/database/UpdatableApp;->repoId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/fdroid/database/UpdatableApp;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/database/UpdatableApp;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lorg/fdroid/database/UpdatableApp;->installedVersionCode:J

    iget-wide v5, p1, Lorg/fdroid/database/UpdatableApp;->installedVersionCode:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/fdroid/database/UpdatableApp;->update:Lorg/fdroid/database/AppVersion;

    iget-object v3, p1, Lorg/fdroid/database/UpdatableApp;->update:Lorg/fdroid/database/AppVersion;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lorg/fdroid/database/UpdatableApp;->isFromPreferredRepo:Z

    iget-boolean v3, p1, Lorg/fdroid/database/UpdatableApp;->isFromPreferredRepo:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lorg/fdroid/database/UpdatableApp;->hasKnownVulnerability:Z

    iget-boolean v3, p1, Lorg/fdroid/database/UpdatableApp;->hasKnownVulnerability:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lorg/fdroid/database/UpdatableApp;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/database/UpdatableApp;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lorg/fdroid/database/UpdatableApp;->summary:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/database/UpdatableApp;->summary:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lorg/fdroid/database/UpdatableApp;->localizedIcon:Ljava/util/List;

    iget-object p1, p1, Lorg/fdroid/database/UpdatableApp;->localizedIcon:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getHasKnownVulnerability()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/fdroid/database/UpdatableApp;->hasKnownVulnerability:Z

    return v0
.end method

.method public getIcon(Landroidx/core/os/LocaleListCompat;)Lorg/fdroid/index/v2/FileV2;
    .locals 8

    const-string v0, "localeList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    sget-object v0, Lorg/fdroid/LocaleChooser;->INSTANCE:Lorg/fdroid/LocaleChooser;

    iget-object v1, p0, Lorg/fdroid/database/UpdatableApp;->localizedIcon:Ljava/util/List;

    if-eqz v1, :cond_2

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

    check-cast v4, Lorg/fdroid/database/LocalizedIcon;

    .line 353
    invoke-virtual {v4}, Lorg/fdroid/database/LocalizedIcon;->getRepoId()J

    move-result-wide v4

    iget-object v6, p0, Lorg/fdroid/database/UpdatableApp;->update:Lorg/fdroid/database/AppVersion;

    invoke-virtual {v6}, Lorg/fdroid/database/AppVersion;->getRepoId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 857
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 354
    :cond_1
    invoke-static {v2}, Lorg/fdroid/database/AppKt;->toLocalizedFileV2(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1, p1}, Lorg/fdroid/LocaleChooser;->getBestLocale(Ljava/util/Map;Landroidx/core/os/LocaleListCompat;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fdroid/index/v2/FileV2;

    return-object p1
.end method

.method public final getInstalledVersionCode()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/UpdatableApp;->installedVersionCode:J

    return-wide v0
.end method

.method public final getLocalizedIcon$database_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/database/LocalizedIcon;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/UpdatableApp;->localizedIcon:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/UpdatableApp;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/UpdatableApp;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRepoId()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/UpdatableApp;->repoId:J

    return-wide v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/UpdatableApp;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public final getUpdate()Lorg/fdroid/database/AppVersion;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/UpdatableApp;->update:Lorg/fdroid/database/AppVersion;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/UpdatableApp;->repoId:J

    invoke-static {v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/UpdatableApp;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/fdroid/database/UpdatableApp;->installedVersionCode:J

    invoke-static {v1, v2}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/UpdatableApp;->update:Lorg/fdroid/database/AppVersion;

    invoke-virtual {v1}, Lorg/fdroid/database/AppVersion;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/fdroid/database/UpdatableApp;->isFromPreferredRepo:Z

    invoke-static {v1}, Landroidx/compose/foundation/ClickableElement$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/fdroid/database/UpdatableApp;->hasKnownVulnerability:Z

    invoke-static {v1}, Landroidx/compose/foundation/ClickableElement$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/UpdatableApp;->name:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/UpdatableApp;->summary:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/UpdatableApp;->localizedIcon:Ljava/util/List;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final isFromPreferredRepo()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/fdroid/database/UpdatableApp;->isFromPreferredRepo:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/UpdatableApp;->repoId:J

    iget-object v2, p0, Lorg/fdroid/database/UpdatableApp;->packageName:Ljava/lang/String;

    iget-wide v3, p0, Lorg/fdroid/database/UpdatableApp;->installedVersionCode:J

    iget-object v5, p0, Lorg/fdroid/database/UpdatableApp;->update:Lorg/fdroid/database/AppVersion;

    iget-boolean v6, p0, Lorg/fdroid/database/UpdatableApp;->isFromPreferredRepo:Z

    iget-boolean v7, p0, Lorg/fdroid/database/UpdatableApp;->hasKnownVulnerability:Z

    iget-object v8, p0, Lorg/fdroid/database/UpdatableApp;->name:Ljava/lang/String;

    iget-object v9, p0, Lorg/fdroid/database/UpdatableApp;->summary:Ljava/lang/String;

    iget-object v10, p0, Lorg/fdroid/database/UpdatableApp;->localizedIcon:Ljava/util/List;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UpdatableApp(repoId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", packageName="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", installedVersionCode="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", update="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isFromPreferredRepo="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", hasKnownVulnerability="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", summary="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", localizedIcon="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
