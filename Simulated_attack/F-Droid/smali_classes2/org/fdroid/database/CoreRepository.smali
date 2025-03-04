.class public final Lorg/fdroid/database/CoreRepository;
.super Ljava/lang/Object;
.source "Repository.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/database/CoreRepository$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008$\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0081\u0008\u0018\u0000 ;2\u00020\u0001:\u0001;B\u00a1\u0001\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0018\u0008\u0002\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\u0007\u0012\u001a\u0010\u0008\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\t\u0018\u00010\u0005j\u0004\u0018\u0001`\n\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\u0018\u0008\u0002\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\u0007\u0012\u0006\u0010\u0014\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0015J\t\u0010)\u001a\u00020\u0003H\u00c6\u0003J\u0019\u0010*\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\u0007H\u00c6\u0003J\t\u0010+\u001a\u00020\u0006H\u00c6\u0003J\u0019\u0010,\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\u0007H\u00c6\u0003J\u001d\u0010-\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\t\u0018\u00010\u0005j\u0004\u0018\u0001`\nH\u00c6\u0003J\t\u0010.\u001a\u00020\u0006H\u00c6\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\t\u00100\u001a\u00020\u0003H\u00c6\u0003J\u0010\u00101\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010&J\u000b\u00102\u001a\u0004\u0018\u00010\u0010H\u00c6\u0003J\u0010\u00103\u001a\u0004\u0018\u00010\u0012H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001fJ\u00b8\u0001\u00104\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0018\u0008\u0002\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\u00072\u001c\u0008\u0002\u0010\u0008\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\t\u0018\u00010\u0005j\u0004\u0018\u0001`\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00062\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\r\u001a\u00020\u00032\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0018\u0008\u0002\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\u00072\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0006H\u00c6\u0001\u00a2\u0006\u0002\u00105J\u0013\u00106\u001a\u0002072\u0008\u00108\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00109\u001a\u00020\u0012H\u00d6\u0001J\t\u0010:\u001a\u00020\u0006H\u00d6\u0001R\u0011\u0010\u000b\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0014\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0017R!\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR%\u0010\u0008\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\t\u0018\u00010\u0005j\u0004\u0018\u0001`\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001aR\u0015\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\n\n\u0002\u0010 \u001a\u0004\u0008\u001e\u0010\u001fR!\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u001aR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0011\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010#R\u0015\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\'\u001a\u0004\u0008%\u0010&R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\u0017\u00a8\u0006<"
    }
    d2 = {
        "Lorg/fdroid/database/CoreRepository;",
        "",
        "repoId",
        "",
        "name",
        "",
        "",
        "Lorg/fdroid/index/v2/LocalizedTextV2;",
        "icon",
        "Lorg/fdroid/index/v2/FileV2;",
        "Lorg/fdroid/index/v2/LocalizedFileV2;",
        "address",
        "webBaseUrl",
        "timestamp",
        "version",
        "formatVersion",
        "Lorg/fdroid/index/IndexFormatVersion;",
        "maxAge",
        "",
        "description",
        "certificate",
        "(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Lorg/fdroid/index/IndexFormatVersion;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/String;)V",
        "getAddress",
        "()Ljava/lang/String;",
        "getCertificate",
        "getDescription",
        "()Ljava/util/Map;",
        "getFormatVersion",
        "()Lorg/fdroid/index/IndexFormatVersion;",
        "getIcon",
        "getMaxAge",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getName",
        "getRepoId",
        "()J",
        "getTimestamp",
        "getVersion",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getWebBaseUrl",
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
        "(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Lorg/fdroid/index/IndexFormatVersion;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/String;)Lorg/fdroid/database/CoreRepository;",
        "equals",
        "",
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
.field public static final Companion:Lorg/fdroid/database/CoreRepository$Companion;

.field public static final TABLE:Ljava/lang/String; = "CoreRepository"


# instance fields
.field private final address:Ljava/lang/String;

.field private final certificate:Ljava/lang/String;

.field private final description:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final formatVersion:Lorg/fdroid/index/IndexFormatVersion;

.field private final icon:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v2/FileV2;",
            ">;"
        }
    .end annotation
.end field

.field private final maxAge:Ljava/lang/Integer;

.field private final name:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final repoId:J

.field private final timestamp:J

.field private final version:Ljava/lang/Long;

.field private final webBaseUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/fdroid/database/CoreRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fdroid/database/CoreRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fdroid/database/CoreRepository;->Companion:Lorg/fdroid/database/CoreRepository$Companion;

    return-void
.end method

.method public constructor <init>(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Lorg/fdroid/index/IndexFormatVersion;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v2/FileV2;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/Long;",
            "Lorg/fdroid/index/IndexFormatVersion;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "certificate"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/fdroid/database/CoreRepository;->repoId:J

    iput-object p3, p0, Lorg/fdroid/database/CoreRepository;->name:Ljava/util/Map;

    iput-object p4, p0, Lorg/fdroid/database/CoreRepository;->icon:Ljava/util/Map;

    iput-object p5, p0, Lorg/fdroid/database/CoreRepository;->address:Ljava/lang/String;

    iput-object p6, p0, Lorg/fdroid/database/CoreRepository;->webBaseUrl:Ljava/lang/String;

    iput-wide p7, p0, Lorg/fdroid/database/CoreRepository;->timestamp:J

    iput-object p9, p0, Lorg/fdroid/database/CoreRepository;->version:Ljava/lang/Long;

    iput-object p10, p0, Lorg/fdroid/database/CoreRepository;->formatVersion:Lorg/fdroid/index/IndexFormatVersion;

    iput-object p11, p0, Lorg/fdroid/database/CoreRepository;->maxAge:Ljava/lang/Integer;

    iput-object p12, p0, Lorg/fdroid/database/CoreRepository;->description:Ljava/util/Map;

    iput-object p13, p0, Lorg/fdroid/database/CoreRepository;->certificate:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Lorg/fdroid/index/IndexFormatVersion;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    move-wide v4, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 25
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object/from16 v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    move-object v9, v1

    goto :goto_2

    :cond_2
    move-object/from16 v9, p6

    :goto_2
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_3

    .line 33
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    move-object v15, v0

    goto :goto_3

    :cond_3
    move-object/from16 v15, p12

    :goto_3
    move-object/from16 v3, p0

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v10, p7

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v16, p13

    .line 23
    invoke-direct/range {v3 .. v16}, Lorg/fdroid/database/CoreRepository;-><init>(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Lorg/fdroid/index/IndexFormatVersion;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lorg/fdroid/database/CoreRepository;JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Lorg/fdroid/index/IndexFormatVersion;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Lorg/fdroid/database/CoreRepository;
    .locals 14

    .line 0
    move-object v0, p0

    move/from16 v1, p14

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lorg/fdroid/database/CoreRepository;->repoId:J

    goto :goto_0

    :cond_0
    move-wide v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Lorg/fdroid/database/CoreRepository;->name:Ljava/util/Map;

    goto :goto_1

    :cond_1
    move-object/from16 v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lorg/fdroid/database/CoreRepository;->icon:Ljava/util/Map;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lorg/fdroid/database/CoreRepository;->address:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lorg/fdroid/database/CoreRepository;->webBaseUrl:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-wide v8, v0, Lorg/fdroid/database/CoreRepository;->timestamp:J

    goto :goto_5

    :cond_5
    move-wide/from16 v8, p7

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget-object v10, v0, Lorg/fdroid/database/CoreRepository;->version:Ljava/lang/Long;

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    iget-object v11, v0, Lorg/fdroid/database/CoreRepository;->formatVersion:Lorg/fdroid/index/IndexFormatVersion;

    goto :goto_7

    :cond_7
    move-object/from16 v11, p10

    :goto_7
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_8

    iget-object v12, v0, Lorg/fdroid/database/CoreRepository;->maxAge:Ljava/lang/Integer;

    goto :goto_8

    :cond_8
    move-object/from16 v12, p11

    :goto_8
    and-int/lit16 v13, v1, 0x200

    if-eqz v13, :cond_9

    iget-object v13, v0, Lorg/fdroid/database/CoreRepository;->description:Ljava/util/Map;

    goto :goto_9

    :cond_9
    move-object/from16 v13, p12

    :goto_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    iget-object v1, v0, Lorg/fdroid/database/CoreRepository;->certificate:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v1, p13

    :goto_a
    move-wide p1, v2

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-wide/from16 p7, v8

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v1

    invoke-virtual/range {p0 .. p13}, Lorg/fdroid/database/CoreRepository;->copy(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Lorg/fdroid/index/IndexFormatVersion;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/String;)Lorg/fdroid/database/CoreRepository;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/CoreRepository;->repoId:J

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
    iget-object v0, p0, Lorg/fdroid/database/CoreRepository;->description:Ljava/util/Map;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/CoreRepository;->certificate:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/util/Map;
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
    iget-object v0, p0, Lorg/fdroid/database/CoreRepository;->name:Ljava/util/Map;

    return-object v0
.end method

.method public final component3()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v2/FileV2;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/CoreRepository;->icon:Ljava/util/Map;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/CoreRepository;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/CoreRepository;->webBaseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/CoreRepository;->timestamp:J

    return-wide v0
.end method

.method public final component7()Ljava/lang/Long;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/CoreRepository;->version:Ljava/lang/Long;

    return-object v0
.end method

.method public final component8()Lorg/fdroid/index/IndexFormatVersion;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/CoreRepository;->formatVersion:Lorg/fdroid/index/IndexFormatVersion;

    return-object v0
.end method

.method public final component9()Ljava/lang/Integer;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/CoreRepository;->maxAge:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Lorg/fdroid/index/IndexFormatVersion;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/String;)Lorg/fdroid/database/CoreRepository;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v2/FileV2;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/Long;",
            "Lorg/fdroid/index/IndexFormatVersion;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/fdroid/database/CoreRepository;"
        }
    .end annotation

    .line 0
    const-string v0, "name"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "certificate"

    move-object/from16 v14, p13

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/fdroid/database/CoreRepository;

    move-object v1, v0

    move-wide/from16 v2, p1

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v1 .. v14}, Lorg/fdroid/database/CoreRepository;-><init>(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Lorg/fdroid/index/IndexFormatVersion;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/fdroid/database/CoreRepository;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/fdroid/database/CoreRepository;

    iget-wide v3, p0, Lorg/fdroid/database/CoreRepository;->repoId:J

    iget-wide v5, p1, Lorg/fdroid/database/CoreRepository;->repoId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/fdroid/database/CoreRepository;->name:Ljava/util/Map;

    iget-object v3, p1, Lorg/fdroid/database/CoreRepository;->name:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/fdroid/database/CoreRepository;->icon:Ljava/util/Map;

    iget-object v3, p1, Lorg/fdroid/database/CoreRepository;->icon:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/fdroid/database/CoreRepository;->address:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/database/CoreRepository;->address:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lorg/fdroid/database/CoreRepository;->webBaseUrl:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/database/CoreRepository;->webBaseUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lorg/fdroid/database/CoreRepository;->timestamp:J

    iget-wide v5, p1, Lorg/fdroid/database/CoreRepository;->timestamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lorg/fdroid/database/CoreRepository;->version:Ljava/lang/Long;

    iget-object v3, p1, Lorg/fdroid/database/CoreRepository;->version:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lorg/fdroid/database/CoreRepository;->formatVersion:Lorg/fdroid/index/IndexFormatVersion;

    iget-object v3, p1, Lorg/fdroid/database/CoreRepository;->formatVersion:Lorg/fdroid/index/IndexFormatVersion;

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lorg/fdroid/database/CoreRepository;->maxAge:Ljava/lang/Integer;

    iget-object v3, p1, Lorg/fdroid/database/CoreRepository;->maxAge:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lorg/fdroid/database/CoreRepository;->description:Ljava/util/Map;

    iget-object v3, p1, Lorg/fdroid/database/CoreRepository;->description:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lorg/fdroid/database/CoreRepository;->certificate:Ljava/lang/String;

    iget-object p1, p1, Lorg/fdroid/database/CoreRepository;->certificate:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getAddress()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/CoreRepository;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final getCertificate()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/CoreRepository;->certificate:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/util/Map;
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
    iget-object v0, p0, Lorg/fdroid/database/CoreRepository;->description:Ljava/util/Map;

    return-object v0
.end method

.method public final getFormatVersion()Lorg/fdroid/index/IndexFormatVersion;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/CoreRepository;->formatVersion:Lorg/fdroid/index/IndexFormatVersion;

    return-object v0
.end method

.method public final getIcon()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v2/FileV2;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/CoreRepository;->icon:Ljava/util/Map;

    return-object v0
.end method

.method public final getMaxAge()Ljava/lang/Integer;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/CoreRepository;->maxAge:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getName()Ljava/util/Map;
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
    iget-object v0, p0, Lorg/fdroid/database/CoreRepository;->name:Ljava/util/Map;

    return-object v0
.end method

.method public final getRepoId()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/CoreRepository;->repoId:J

    return-wide v0
.end method

.method public final getTimestamp()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/CoreRepository;->timestamp:J

    return-wide v0
.end method

.method public final getVersion()Ljava/lang/Long;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/CoreRepository;->version:Ljava/lang/Long;

    return-object v0
.end method

.method public final getWebBaseUrl()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/CoreRepository;->webBaseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/CoreRepository;->repoId:J

    invoke-static {v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/CoreRepository;->name:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/CoreRepository;->icon:Ljava/util/Map;

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

    iget-object v1, p0, Lorg/fdroid/database/CoreRepository;->address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/CoreRepository;->webBaseUrl:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lorg/fdroid/database/CoreRepository;->timestamp:J

    invoke-static {v3, v4}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/CoreRepository;->version:Ljava/lang/Long;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/CoreRepository;->formatVersion:Lorg/fdroid/index/IndexFormatVersion;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/CoreRepository;->maxAge:Ljava/lang/Integer;

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/CoreRepository;->description:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/CoreRepository;->certificate:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/CoreRepository;->repoId:J

    iget-object v2, p0, Lorg/fdroid/database/CoreRepository;->name:Ljava/util/Map;

    iget-object v3, p0, Lorg/fdroid/database/CoreRepository;->icon:Ljava/util/Map;

    iget-object v4, p0, Lorg/fdroid/database/CoreRepository;->address:Ljava/lang/String;

    iget-object v5, p0, Lorg/fdroid/database/CoreRepository;->webBaseUrl:Ljava/lang/String;

    iget-wide v6, p0, Lorg/fdroid/database/CoreRepository;->timestamp:J

    iget-object v8, p0, Lorg/fdroid/database/CoreRepository;->version:Ljava/lang/Long;

    iget-object v9, p0, Lorg/fdroid/database/CoreRepository;->formatVersion:Lorg/fdroid/index/IndexFormatVersion;

    iget-object v10, p0, Lorg/fdroid/database/CoreRepository;->maxAge:Ljava/lang/Integer;

    iget-object v11, p0, Lorg/fdroid/database/CoreRepository;->description:Ljava/util/Map;

    iget-object v12, p0, Lorg/fdroid/database/CoreRepository;->certificate:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CoreRepository(repoId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", icon="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", address="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", webBaseUrl="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", timestamp="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", version="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", formatVersion="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", maxAge="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", description="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", certificate="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
