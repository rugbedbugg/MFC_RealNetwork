.class public final Lorg/fdroid/database/AppOverviewItem;
.super Ljava/lang/Object;
.source "App.kt"

# interfaces
.implements Lorg/fdroid/database/MinimalApp;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u001e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0081\u0001\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012&\u0008\u0002\u0010\n\u001a \u0012\u0004\u0012\u00020\u0005\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000bj\u0002`\u000c\u0018\u00010\u000b\u0012\u0010\u0008\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0012J\t\u0010\"\u001a\u00020\u0003H\u00c6\u0003J\t\u0010#\u001a\u00020\u0005H\u00c6\u0003J\t\u0010$\u001a\u00020\u0003H\u00c6\u0003J\t\u0010%\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\'\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J,\u0010(\u001a \u0012\u0004\u0012\u00020\u0005\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000bj\u0002`\u000c\u0018\u00010\u000bH\u00c0\u0003\u00a2\u0006\u0002\u0008)J\u0016\u0010*\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eH\u00c0\u0003\u00a2\u0006\u0002\u0008+J\t\u0010,\u001a\u00020\u0011H\u00c6\u0003J\u008d\u0001\u0010-\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052&\u0008\u0002\u0010\n\u001a \u0012\u0004\u0012\u00020\u0005\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000bj\u0002`\u000c\u0018\u00010\u000b2\u0010\u0008\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011H\u00c6\u0001J\u0013\u0010.\u001a\u00020\u00112\u0008\u0010/\u001a\u0004\u0018\u000100H\u00d6\u0003J\u0012\u00101\u001a\u0004\u0018\u0001022\u0006\u00103\u001a\u000204H\u0016J\t\u00105\u001a\u000206H\u00d6\u0001J\t\u00107\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R2\u0010\n\u001a \u0012\u0004\u0012\u00020\u0005\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000bj\u0002`\u000c\u0018\u00010\u000bX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u001aR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0014R\u001e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e8\u0000X\u0081\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0017R\u0018\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001eR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0014R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00058\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u001e\u00a8\u00068"
    }
    d2 = {
        "Lorg/fdroid/database/AppOverviewItem;",
        "Lorg/fdroid/database/MinimalApp;",
        "repoId",
        "",
        "packageName",
        "",
        "added",
        "lastUpdated",
        "name",
        "summary",
        "antiFeatures",
        "",
        "Lorg/fdroid/index/v2/LocalizedTextV2;",
        "localizedIcon",
        "",
        "Lorg/fdroid/database/LocalizedIcon;",
        "isCompatible",
        "",
        "(JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Z)V",
        "getAdded",
        "()J",
        "antiFeatureKeys",
        "getAntiFeatureKeys",
        "()Ljava/util/List;",
        "getAntiFeatures$database_release",
        "()Ljava/util/Map;",
        "()Z",
        "getLastUpdated",
        "getLocalizedIcon$database_release",
        "getName",
        "()Ljava/lang/String;",
        "getPackageName",
        "getRepoId",
        "getSummary",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component7$database_release",
        "component8",
        "component8$database_release",
        "component9",
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

.field private final isCompatible:Z

.field private final lastUpdated:J

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


# direct methods
.method public constructor <init>(JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "Lorg/fdroid/database/LocalizedIcon;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/fdroid/database/AppOverviewItem;->repoId:J

    iput-object p3, p0, Lorg/fdroid/database/AppOverviewItem;->packageName:Ljava/lang/String;

    iput-wide p4, p0, Lorg/fdroid/database/AppOverviewItem;->added:J

    iput-wide p6, p0, Lorg/fdroid/database/AppOverviewItem;->lastUpdated:J

    iput-object p8, p0, Lorg/fdroid/database/AppOverviewItem;->name:Ljava/lang/String;

    iput-object p9, p0, Lorg/fdroid/database/AppOverviewItem;->summary:Ljava/lang/String;

    iput-object p10, p0, Lorg/fdroid/database/AppOverviewItem;->antiFeatures:Ljava/util/Map;

    iput-object p11, p0, Lorg/fdroid/database/AppOverviewItem;->localizedIcon:Ljava/util/List;

    iput-boolean p12, p0, Lorg/fdroid/database/AppOverviewItem;->isCompatible:Z

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v11, v2

    goto :goto_0

    :cond_0
    move-object/from16 v11, p8

    :goto_0
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    move-object v12, v2

    goto :goto_1

    :cond_1
    move-object/from16 v12, p9

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    move-object v13, v2

    goto :goto_2

    :cond_2
    move-object/from16 v13, p10

    :goto_2
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    move-object v14, v2

    goto :goto_3

    :cond_3
    move-object/from16 v14, p11

    :goto_3
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move/from16 v15, p12

    .line 242
    invoke-direct/range {v3 .. v15}, Lorg/fdroid/database/AppOverviewItem;-><init>(JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lorg/fdroid/database/AppOverviewItem;JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;ZILjava/lang/Object;)Lorg/fdroid/database/AppOverviewItem;
    .locals 13

    .line 0
    move-object v0, p0

    move/from16 v1, p13

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lorg/fdroid/database/AppOverviewItem;->repoId:J

    goto :goto_0

    :cond_0
    move-wide v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Lorg/fdroid/database/AppOverviewItem;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-wide v5, v0, Lorg/fdroid/database/AppOverviewItem;->added:J

    goto :goto_2

    :cond_2
    move-wide/from16 v5, p4

    :goto_2
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_3

    iget-wide v7, v0, Lorg/fdroid/database/AppOverviewItem;->lastUpdated:J

    goto :goto_3

    :cond_3
    move-wide/from16 v7, p6

    :goto_3
    and-int/lit8 v9, v1, 0x10

    if-eqz v9, :cond_4

    iget-object v9, v0, Lorg/fdroid/database/AppOverviewItem;->name:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v9, p8

    :goto_4
    and-int/lit8 v10, v1, 0x20

    if-eqz v10, :cond_5

    iget-object v10, v0, Lorg/fdroid/database/AppOverviewItem;->summary:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v10, p9

    :goto_5
    and-int/lit8 v11, v1, 0x40

    if-eqz v11, :cond_6

    iget-object v11, v0, Lorg/fdroid/database/AppOverviewItem;->antiFeatures:Ljava/util/Map;

    goto :goto_6

    :cond_6
    move-object/from16 v11, p10

    :goto_6
    and-int/lit16 v12, v1, 0x80

    if-eqz v12, :cond_7

    iget-object v12, v0, Lorg/fdroid/database/AppOverviewItem;->localizedIcon:Ljava/util/List;

    goto :goto_7

    :cond_7
    move-object/from16 v12, p11

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-boolean v1, v0, Lorg/fdroid/database/AppOverviewItem;->isCompatible:Z

    goto :goto_8

    :cond_8
    move/from16 v1, p12

    :goto_8
    move-wide p1, v2

    move-object/from16 p3, v4

    move-wide/from16 p4, v5

    move-wide/from16 p6, v7

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move/from16 p12, v1

    invoke-virtual/range {p0 .. p12}, Lorg/fdroid/database/AppOverviewItem;->copy(JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Z)Lorg/fdroid/database/AppOverviewItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/AppOverviewItem;->repoId:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/AppOverviewItem;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/AppOverviewItem;->added:J

    return-wide v0
.end method

.method public final component4()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/AppOverviewItem;->lastUpdated:J

    return-wide v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/AppOverviewItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/AppOverviewItem;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public final component7$database_release()Ljava/util/Map;
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
    iget-object v0, p0, Lorg/fdroid/database/AppOverviewItem;->antiFeatures:Ljava/util/Map;

    return-object v0
.end method

.method public final component8$database_release()Ljava/util/List;
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
    iget-object v0, p0, Lorg/fdroid/database/AppOverviewItem;->localizedIcon:Ljava/util/List;

    return-object v0
.end method

.method public final component9()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/fdroid/database/AppOverviewItem;->isCompatible:Z

    return v0
.end method

.method public final copy(JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Z)Lorg/fdroid/database/AppOverviewItem;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "Lorg/fdroid/database/LocalizedIcon;",
            ">;Z)",
            "Lorg/fdroid/database/AppOverviewItem;"
        }
    .end annotation

    .line 0
    const-string v0, "packageName"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/fdroid/database/AppOverviewItem;

    move-object v1, v0

    move-wide v2, p1

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lorg/fdroid/database/AppOverviewItem;-><init>(JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/fdroid/database/AppOverviewItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/fdroid/database/AppOverviewItem;

    iget-wide v3, p0, Lorg/fdroid/database/AppOverviewItem;->repoId:J

    iget-wide v5, p1, Lorg/fdroid/database/AppOverviewItem;->repoId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/fdroid/database/AppOverviewItem;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/database/AppOverviewItem;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lorg/fdroid/database/AppOverviewItem;->added:J

    iget-wide v5, p1, Lorg/fdroid/database/AppOverviewItem;->added:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lorg/fdroid/database/AppOverviewItem;->lastUpdated:J

    iget-wide v5, p1, Lorg/fdroid/database/AppOverviewItem;->lastUpdated:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lorg/fdroid/database/AppOverviewItem;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/database/AppOverviewItem;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lorg/fdroid/database/AppOverviewItem;->summary:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/database/AppOverviewItem;->summary:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lorg/fdroid/database/AppOverviewItem;->antiFeatures:Ljava/util/Map;

    iget-object v3, p1, Lorg/fdroid/database/AppOverviewItem;->antiFeatures:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lorg/fdroid/database/AppOverviewItem;->localizedIcon:Ljava/util/List;

    iget-object v3, p1, Lorg/fdroid/database/AppOverviewItem;->localizedIcon:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lorg/fdroid/database/AppOverviewItem;->isCompatible:Z

    iget-boolean p1, p1, Lorg/fdroid/database/AppOverviewItem;->isCompatible:Z

    if-eq v1, p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getAdded()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/AppOverviewItem;->added:J

    return-wide v0
.end method

.method public final getAntiFeatureKeys()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/database/AppOverviewItem;->antiFeatures:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 125
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 268
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 153
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 268
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public final getAntiFeatures$database_release()Ljava/util/Map;
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
    iget-object v0, p0, Lorg/fdroid/database/AppOverviewItem;->antiFeatures:Ljava/util/Map;

    return-object v0
.end method

.method public getIcon(Landroidx/core/os/LocaleListCompat;)Lorg/fdroid/index/v2/FileV2;
    .locals 8

    const-string v0, "localeList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    sget-object v0, Lorg/fdroid/LocaleChooser;->INSTANCE:Lorg/fdroid/LocaleChooser;

    iget-object v1, p0, Lorg/fdroid/database/AppOverviewItem;->localizedIcon:Ljava/util/List;

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

    .line 264
    invoke-virtual {v4}, Lorg/fdroid/database/LocalizedIcon;->getRepoId()J

    move-result-wide v4

    invoke-virtual {p0}, Lorg/fdroid/database/AppOverviewItem;->getRepoId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 857
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 265
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

.method public final getLastUpdated()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/AppOverviewItem;->lastUpdated:J

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
    iget-object v0, p0, Lorg/fdroid/database/AppOverviewItem;->localizedIcon:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/AppOverviewItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/AppOverviewItem;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRepoId()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/AppOverviewItem;->repoId:J

    return-wide v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/AppOverviewItem;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/AppOverviewItem;->repoId:J

    invoke-static {v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/AppOverviewItem;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/fdroid/database/AppOverviewItem;->added:J

    invoke-static {v1, v2}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/fdroid/database/AppOverviewItem;->lastUpdated:J

    invoke-static {v1, v2}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/AppOverviewItem;->name:Ljava/lang/String;

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

    iget-object v1, p0, Lorg/fdroid/database/AppOverviewItem;->summary:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/AppOverviewItem;->antiFeatures:Ljava/util/Map;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/AppOverviewItem;->localizedIcon:Ljava/util/List;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/fdroid/database/AppOverviewItem;->isCompatible:Z

    invoke-static {v1}, Landroidx/compose/foundation/ClickableElement$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isCompatible()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/fdroid/database/AppOverviewItem;->isCompatible:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/AppOverviewItem;->repoId:J

    iget-object v2, p0, Lorg/fdroid/database/AppOverviewItem;->packageName:Ljava/lang/String;

    iget-wide v3, p0, Lorg/fdroid/database/AppOverviewItem;->added:J

    iget-wide v5, p0, Lorg/fdroid/database/AppOverviewItem;->lastUpdated:J

    iget-object v7, p0, Lorg/fdroid/database/AppOverviewItem;->name:Ljava/lang/String;

    iget-object v8, p0, Lorg/fdroid/database/AppOverviewItem;->summary:Ljava/lang/String;

    iget-object v9, p0, Lorg/fdroid/database/AppOverviewItem;->antiFeatures:Ljava/util/Map;

    iget-object v10, p0, Lorg/fdroid/database/AppOverviewItem;->localizedIcon:Ljava/util/List;

    iget-boolean v11, p0, Lorg/fdroid/database/AppOverviewItem;->isCompatible:Z

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AppOverviewItem(repoId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", packageName="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", added="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", lastUpdated="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", summary="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", antiFeatures="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", localizedIcon="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isCompatible="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
