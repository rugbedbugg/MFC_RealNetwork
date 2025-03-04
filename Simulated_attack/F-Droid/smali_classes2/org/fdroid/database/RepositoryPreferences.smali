.class public final Lorg/fdroid/database/RepositoryPreferences;
.super Ljava/lang/Object;
.source "Repository.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/database/RepositoryPreferences$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0008(\u0008\u0081\u0008\u0018\u0000 32\u00020\u0001:\u00013Bs\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0010\u0008\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u000c\u0012\u0010\u0008\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u0010J\u000e\u0010#\u001a\u00020\u0003H\u00c0\u0003\u00a2\u0006\u0002\u0008$J\t\u0010%\u001a\u00020\u0005H\u00c6\u0003J\t\u0010&\u001a\u00020\u0007H\u00c6\u0003J\u0010\u0010\'\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001aJ\u000b\u0010(\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u0011\u0010)\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u000cH\u00c6\u0003J\u0011\u0010*\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u000cH\u00c6\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u0080\u0001\u0010-\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u0010\u0008\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u000c2\u0010\u0008\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u000c2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\nH\u00c6\u0001\u00a2\u0006\u0002\u0010.J\u0013\u0010/\u001a\u00020\u00072\u0008\u00100\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00101\u001a\u00020\u0005H\u00d6\u0001J\t\u00102\u001a\u00020\nH\u00d6\u0001R\u0019\u0010\r\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u001e\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u0015\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u001b\u001a\u0004\u0008\u0019\u0010\u001aR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0018R\u0016\u0010\u0002\u001a\u00020\u00038\u0000X\u0081\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0019\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0012R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0018R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"\u00a8\u00064"
    }
    d2 = {
        "Lorg/fdroid/database/RepositoryPreferences;",
        "",
        "repoId",
        "",
        "weight",
        "",
        "enabled",
        "",
        "lastUpdated",
        "lastETag",
        "",
        "userMirrors",
        "",
        "disabledMirrors",
        "username",
        "password",
        "(JIZLjava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V",
        "getDisabledMirrors",
        "()Ljava/util/List;",
        "getEnabled",
        "()Z",
        "getLastETag$annotations",
        "()V",
        "getLastETag",
        "()Ljava/lang/String;",
        "getLastUpdated",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getPassword",
        "getRepoId$database_release",
        "()J",
        "getUserMirrors",
        "getUsername",
        "getWeight",
        "()I",
        "component1",
        "component1$database_release",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(JIZLjava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/fdroid/database/RepositoryPreferences;",
        "equals",
        "other",
        "hashCode",
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
.field public static final Companion:Lorg/fdroid/database/RepositoryPreferences$Companion;

.field public static final TABLE:Ljava/lang/String; = "RepositoryPreferences"


# instance fields
.field private final disabledMirrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final enabled:Z

.field private final lastETag:Ljava/lang/String;

.field private final lastUpdated:Ljava/lang/Long;

.field private final password:Ljava/lang/String;

.field private final repoId:J

.field private final userMirrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final username:Ljava/lang/String;

.field private final weight:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/fdroid/database/RepositoryPreferences$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fdroid/database/RepositoryPreferences$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fdroid/database/RepositoryPreferences;->Companion:Lorg/fdroid/database/RepositoryPreferences$Companion;

    return-void
.end method

.method public constructor <init>(JIZLjava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZ",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/fdroid/database/RepositoryPreferences;->repoId:J

    iput p3, p0, Lorg/fdroid/database/RepositoryPreferences;->weight:I

    iput-boolean p4, p0, Lorg/fdroid/database/RepositoryPreferences;->enabled:Z

    iput-object p5, p0, Lorg/fdroid/database/RepositoryPreferences;->lastUpdated:Ljava/lang/Long;

    iput-object p6, p0, Lorg/fdroid/database/RepositoryPreferences;->lastETag:Ljava/lang/String;

    iput-object p7, p0, Lorg/fdroid/database/RepositoryPreferences;->userMirrors:Ljava/util/List;

    iput-object p8, p0, Lorg/fdroid/database/RepositoryPreferences;->disabledMirrors:Ljava/util/List;

    iput-object p9, p0, Lorg/fdroid/database/RepositoryPreferences;->username:Ljava/lang/String;

    iput-object p10, p0, Lorg/fdroid/database/RepositoryPreferences;->password:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JIZLjava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v6, v1

    goto :goto_0

    :cond_0
    move/from16 v6, p4

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object/from16 v7, p5

    :goto_1
    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v8, v2

    goto :goto_2

    :cond_2
    move-object/from16 v8, p6

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-object v9, v2

    goto :goto_3

    :cond_3
    move-object/from16 v9, p7

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move-object v10, v2

    goto :goto_4

    :cond_4
    move-object/from16 v10, p8

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-object v11, v2

    goto :goto_5

    :cond_5
    move-object/from16 v11, p9

    :goto_5
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_6

    move-object v12, v2

    goto :goto_6

    :cond_6
    move-object/from16 v12, p10

    :goto_6
    move-object v2, p0

    move-wide v3, p1

    move/from16 v5, p3

    .line 376
    invoke-direct/range {v2 .. v12}, Lorg/fdroid/database/RepositoryPreferences;-><init>(JIZLjava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lorg/fdroid/database/RepositoryPreferences;JIZLjava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/fdroid/database/RepositoryPreferences;
    .locals 11

    .line 0
    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lorg/fdroid/database/RepositoryPreferences;->repoId:J

    goto :goto_0

    :cond_0
    move-wide v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget v4, v0, Lorg/fdroid/database/RepositoryPreferences;->weight:I

    goto :goto_1

    :cond_1
    move v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-boolean v5, v0, Lorg/fdroid/database/RepositoryPreferences;->enabled:Z

    goto :goto_2

    :cond_2
    move v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lorg/fdroid/database/RepositoryPreferences;->lastUpdated:Ljava/lang/Long;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lorg/fdroid/database/RepositoryPreferences;->lastETag:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lorg/fdroid/database/RepositoryPreferences;->userMirrors:Ljava/util/List;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lorg/fdroid/database/RepositoryPreferences;->disabledMirrors:Ljava/util/List;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lorg/fdroid/database/RepositoryPreferences;->username:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lorg/fdroid/database/RepositoryPreferences;->password:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p10

    :goto_8
    move-wide p1, v2

    move p3, v4

    move p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lorg/fdroid/database/RepositoryPreferences;->copy(JIZLjava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/fdroid/database/RepositoryPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getLastETag$annotations()V
    .locals 0

    .line 0
    return-void
.end method


# virtual methods
.method public final component1$database_release()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/RepositoryPreferences;->repoId:J

    return-wide v0
.end method

.method public final component2()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/fdroid/database/RepositoryPreferences;->weight:I

    return v0
.end method

.method public final component3()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/fdroid/database/RepositoryPreferences;->enabled:Z

    return v0
.end method

.method public final component4()Ljava/lang/Long;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/RepositoryPreferences;->lastUpdated:Ljava/lang/Long;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/RepositoryPreferences;->lastETag:Ljava/lang/String;

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
    iget-object v0, p0, Lorg/fdroid/database/RepositoryPreferences;->userMirrors:Ljava/util/List;

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
    iget-object v0, p0, Lorg/fdroid/database/RepositoryPreferences;->disabledMirrors:Ljava/util/List;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/RepositoryPreferences;->username:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/RepositoryPreferences;->password:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JIZLjava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/fdroid/database/RepositoryPreferences;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZ",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/fdroid/database/RepositoryPreferences;"
        }
    .end annotation

    .line 0
    new-instance v11, Lorg/fdroid/database/RepositoryPreferences;

    move-object v0, v11

    move-wide v1, p1

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lorg/fdroid/database/RepositoryPreferences;-><init>(JIZLjava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v11
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/fdroid/database/RepositoryPreferences;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/fdroid/database/RepositoryPreferences;

    iget-wide v3, p0, Lorg/fdroid/database/RepositoryPreferences;->repoId:J

    iget-wide v5, p1, Lorg/fdroid/database/RepositoryPreferences;->repoId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lorg/fdroid/database/RepositoryPreferences;->weight:I

    iget v3, p1, Lorg/fdroid/database/RepositoryPreferences;->weight:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lorg/fdroid/database/RepositoryPreferences;->enabled:Z

    iget-boolean v3, p1, Lorg/fdroid/database/RepositoryPreferences;->enabled:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/fdroid/database/RepositoryPreferences;->lastUpdated:Ljava/lang/Long;

    iget-object v3, p1, Lorg/fdroid/database/RepositoryPreferences;->lastUpdated:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lorg/fdroid/database/RepositoryPreferences;->lastETag:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/database/RepositoryPreferences;->lastETag:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lorg/fdroid/database/RepositoryPreferences;->userMirrors:Ljava/util/List;

    iget-object v3, p1, Lorg/fdroid/database/RepositoryPreferences;->userMirrors:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lorg/fdroid/database/RepositoryPreferences;->disabledMirrors:Ljava/util/List;

    iget-object v3, p1, Lorg/fdroid/database/RepositoryPreferences;->disabledMirrors:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lorg/fdroid/database/RepositoryPreferences;->username:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/database/RepositoryPreferences;->username:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lorg/fdroid/database/RepositoryPreferences;->password:Ljava/lang/String;

    iget-object p1, p1, Lorg/fdroid/database/RepositoryPreferences;->password:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
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

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/RepositoryPreferences;->disabledMirrors:Ljava/util/List;

    return-object v0
.end method

.method public final getEnabled()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/fdroid/database/RepositoryPreferences;->enabled:Z

    return v0
.end method

.method public final getLastETag()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/RepositoryPreferences;->lastETag:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastUpdated()Ljava/lang/Long;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/RepositoryPreferences;->lastUpdated:Ljava/lang/Long;

    return-object v0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/RepositoryPreferences;->password:Ljava/lang/String;

    return-object v0
.end method

.method public final getRepoId$database_release()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/RepositoryPreferences;->repoId:J

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

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/RepositoryPreferences;->userMirrors:Ljava/util/List;

    return-object v0
.end method

.method public final getUsername()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/RepositoryPreferences;->username:Ljava/lang/String;

    return-object v0
.end method

.method public final getWeight()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/fdroid/database/RepositoryPreferences;->weight:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/RepositoryPreferences;->repoId:J

    invoke-static {v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/fdroid/database/RepositoryPreferences;->weight:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/fdroid/database/RepositoryPreferences;->enabled:Z

    invoke-static {v1}, Landroidx/compose/foundation/ClickableElement$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/RepositoryPreferences;->lastUpdated:Ljava/lang/Long;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/RepositoryPreferences;->lastETag:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/RepositoryPreferences;->userMirrors:Ljava/util/List;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/RepositoryPreferences;->disabledMirrors:Ljava/util/List;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/RepositoryPreferences;->username:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/RepositoryPreferences;->password:Ljava/lang/String;

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/RepositoryPreferences;->repoId:J

    iget v2, p0, Lorg/fdroid/database/RepositoryPreferences;->weight:I

    iget-boolean v3, p0, Lorg/fdroid/database/RepositoryPreferences;->enabled:Z

    iget-object v4, p0, Lorg/fdroid/database/RepositoryPreferences;->lastUpdated:Ljava/lang/Long;

    iget-object v5, p0, Lorg/fdroid/database/RepositoryPreferences;->lastETag:Ljava/lang/String;

    iget-object v6, p0, Lorg/fdroid/database/RepositoryPreferences;->userMirrors:Ljava/util/List;

    iget-object v7, p0, Lorg/fdroid/database/RepositoryPreferences;->disabledMirrors:Ljava/util/List;

    iget-object v8, p0, Lorg/fdroid/database/RepositoryPreferences;->username:Ljava/lang/String;

    iget-object v9, p0, Lorg/fdroid/database/RepositoryPreferences;->password:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RepositoryPreferences(repoId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", weight="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", enabled="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", lastUpdated="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", lastETag="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", userMirrors="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", disabledMirrors="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", username="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", password="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
