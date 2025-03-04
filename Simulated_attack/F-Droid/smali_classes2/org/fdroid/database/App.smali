.class public final Lorg/fdroid/database/App;
.super Ljava/lang/Object;
.source "App.kt"

# interfaces
.implements Lorg/fdroid/database/MinimalApp;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B3\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\tJ\t\u0010(\u001a\u00020\u0003H\u00c6\u0003J\u0011\u0010)\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u00c2\u0003J\u0011\u0010*\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0005H\u00c2\u0003J7\u0010+\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010,\u001a\u00020-2\u0008\u0010.\u001a\u0004\u0018\u00010/H\u00d6\u0003J\u0010\u00100\u001a\u0004\u0018\u00010\u000c2\u0006\u00101\u001a\u000202J\u0010\u00103\u001a\u0004\u0018\u00010\r2\u0006\u00101\u001a\u000202J\u0012\u00104\u001a\u0004\u0018\u00010\r2\u0006\u00101\u001a\u000202H\u0016J$\u00105\u001a\u0016\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r\u0018\u00010\u000bj\u0004\u0018\u0001`\u000e2\u0006\u00106\u001a\u00020\u000cH\u0002J*\u00107\u001a\u001c\u0012\u0004\u0012\u00020\u000c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u0005\u0018\u00010\u000bj\u0004\u0018\u0001`82\u0006\u00106\u001a\u00020\u000cH\u0002J\u0014\u00109\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00052\u0006\u00101\u001a\u000202J\u0010\u0010:\u001a\u0004\u0018\u00010\r2\u0006\u00101\u001a\u000202J\u0014\u0010;\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00052\u0006\u00101\u001a\u000202J\u0014\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00052\u0006\u00101\u001a\u000202J\u0010\u0010=\u001a\u0004\u0018\u00010\r2\u0006\u00101\u001a\u000202J\u0014\u0010>\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00052\u0006\u00101\u001a\u000202J\u0010\u0010?\u001a\u0004\u0018\u00010\u000c2\u0006\u00101\u001a\u000202J\u0014\u0010@\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00052\u0006\u00101\u001a\u000202J\t\u0010A\u001a\u00020BH\u00d6\u0001J\t\u0010C\u001a\u00020\u000cH\u00d6\u0001R(\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r\u0018\u00010\u000bj\u0004\u0018\u0001`\u000e8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R(\u0010\u0011\u001a\u0016\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r\u0018\u00010\u000bj\u0004\u0018\u0001`\u000e8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0010R\u0018\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00058\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\u0004\u0018\u00010\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0017R(\u0010\u001a\u001a\u0016\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r\u0018\u00010\u000bj\u0004\u0018\u0001`\u000e8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u0010R\u0014\u0010\u001c\u001a\u00020\u001d8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001fR\u0016\u0010 \u001a\u0004\u0018\u00010!8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#R\u0016\u0010$\u001a\u0004\u0018\u00010\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010\u0017R(\u0010&\u001a\u0016\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r\u0018\u00010\u000bj\u0004\u0018\u0001`\u000e8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010\u0010\u00a8\u0006D"
    }
    d2 = {
        "Lorg/fdroid/database/App;",
        "Lorg/fdroid/database/MinimalApp;",
        "metadata",
        "Lorg/fdroid/database/AppMetadata;",
        "localizedFiles",
        "",
        "Lorg/fdroid/database/LocalizedFile;",
        "localizedFileLists",
        "Lorg/fdroid/database/LocalizedFileList;",
        "(Lorg/fdroid/database/AppMetadata;Ljava/util/List;Ljava/util/List;)V",
        "featureGraphic",
        "",
        "",
        "Lorg/fdroid/index/v2/FileV2;",
        "Lorg/fdroid/index/v2/LocalizedFileV2;",
        "getFeatureGraphic$database_release",
        "()Ljava/util/Map;",
        "icon",
        "getIcon$database_release",
        "getMetadata",
        "()Lorg/fdroid/database/AppMetadata;",
        "name",
        "getName",
        "()Ljava/lang/String;",
        "packageName",
        "getPackageName",
        "promoGraphic",
        "getPromoGraphic$database_release",
        "repoId",
        "",
        "getRepoId",
        "()J",
        "screenshots",
        "Lorg/fdroid/index/v2/Screenshots;",
        "getScreenshots$database_release",
        "()Lorg/fdroid/index/v2/Screenshots;",
        "summary",
        "getSummary",
        "tvBanner",
        "getTvBanner$database_release",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "",
        "getDescription",
        "localeList",
        "Landroidx/core/os/LocaleListCompat;",
        "getFeatureGraphic",
        "getIcon",
        "getLocalizedFile",
        "type",
        "getLocalizedFileList",
        "Lorg/fdroid/index/v2/LocalizedFileListV2;",
        "getPhoneScreenshots",
        "getPromoGraphic",
        "getSevenInchScreenshots",
        "getTenInchScreenshots",
        "getTvBanner",
        "getTvScreenshots",
        "getVideo",
        "getWearScreenshots",
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
.field private final localizedFileLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/database/LocalizedFileList;",
            ">;"
        }
    .end annotation
.end field

.field private final localizedFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/database/LocalizedFile;",
            ">;"
        }
    .end annotation
.end field

.field private final metadata:Lorg/fdroid/database/AppMetadata;


# direct methods
.method public constructor <init>(Lorg/fdroid/database/AppMetadata;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/database/AppMetadata;",
            "Ljava/util/List<",
            "Lorg/fdroid/database/LocalizedFile;",
            ">;",
            "Ljava/util/List<",
            "Lorg/fdroid/database/LocalizedFileList;",
            ">;)V"
        }
    .end annotation

    const-string v0, "metadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/database/App;->metadata:Lorg/fdroid/database/AppMetadata;

    iput-object p2, p0, Lorg/fdroid/database/App;->localizedFiles:Ljava/util/List;

    iput-object p3, p0, Lorg/fdroid/database/App;->localizedFileLists:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/fdroid/database/AppMetadata;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 150
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/fdroid/database/App;-><init>(Lorg/fdroid/database/AppMetadata;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/database/LocalizedFile;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/App;->localizedFiles:Ljava/util/List;

    return-object v0
.end method

.method private final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/database/LocalizedFileList;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/App;->localizedFileLists:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic copy$default(Lorg/fdroid/database/App;Lorg/fdroid/database/AppMetadata;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lorg/fdroid/database/App;
    .locals 0

    .line 0
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lorg/fdroid/database/App;->metadata:Lorg/fdroid/database/AppMetadata;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lorg/fdroid/database/App;->localizedFiles:Ljava/util/List;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lorg/fdroid/database/App;->localizedFileLists:Ljava/util/List;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/fdroid/database/App;->copy(Lorg/fdroid/database/AppMetadata;Ljava/util/List;Ljava/util/List;)Lorg/fdroid/database/App;

    move-result-object p0

    return-object p0
.end method

.method private final getLocalizedFile(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v2/FileV2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/database/App;->localizedFiles:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 766
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/fdroid/database/LocalizedFile;

    .line 180
    invoke-virtual {v3}, Lorg/fdroid/database/LocalizedFile;->getRepoId()J

    move-result-wide v4

    iget-object v6, p0, Lorg/fdroid/database/App;->metadata:Lorg/fdroid/database/AppMetadata;

    invoke-virtual {v6}, Lorg/fdroid/database/AppMetadata;->getRepoId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lorg/fdroid/database/LocalizedFile;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 857
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 181
    :cond_1
    invoke-static {v1}, Lorg/fdroid/database/AppKt;->toLocalizedFileV2(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private final getLocalizedFileList(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/FileV2;",
            ">;>;"
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lorg/fdroid/database/App;->localizedFileLists:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 186
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 32
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fdroid/database/LocalizedFileList;

    .line 187
    invoke-virtual {v2}, Lorg/fdroid/database/LocalizedFileList;->getRepoId()J

    move-result-wide v3

    iget-object v5, p0, Lorg/fdroid/database/App;->metadata:Lorg/fdroid/database/AppMetadata;

    invoke-virtual {v5}, Lorg/fdroid/database/AppMetadata;->getRepoId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lorg/fdroid/database/LocalizedFileList;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {v2}, Lorg/fdroid/database/LocalizedFileList;->getLocale()Ljava/lang/String;

    move-result-object v3

    .line 372
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 188
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 375
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_2
    check-cast v4, Ljava/util/ArrayList;

    .line 189
    new-instance v3, Lorg/fdroid/index/v2/FileV2;

    .line 190
    invoke-virtual {v2}, Lorg/fdroid/database/LocalizedFileList;->getName()Ljava/lang/String;

    move-result-object v5

    .line 191
    invoke-virtual {v2}, Lorg/fdroid/database/LocalizedFileList;->getSha256()Ljava/lang/String;

    move-result-object v6

    .line 192
    invoke-virtual {v2}, Lorg/fdroid/database/LocalizedFileList;->getSize()Ljava/lang/Long;

    move-result-object v7

    .line 193
    invoke-virtual {v2}, Lorg/fdroid/database/LocalizedFileList;->getIpfsCidV1()Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-direct {v3, v5, v6, v7, v2}, Lorg/fdroid/index/v2/FileV2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    :cond_4
    return-object v0
.end method


# virtual methods
.method public final component1()Lorg/fdroid/database/AppMetadata;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/App;->metadata:Lorg/fdroid/database/AppMetadata;

    return-object v0
.end method

.method public final copy(Lorg/fdroid/database/AppMetadata;Ljava/util/List;Ljava/util/List;)Lorg/fdroid/database/App;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/database/AppMetadata;",
            "Ljava/util/List<",
            "Lorg/fdroid/database/LocalizedFile;",
            ">;",
            "Ljava/util/List<",
            "Lorg/fdroid/database/LocalizedFileList;",
            ">;)",
            "Lorg/fdroid/database/App;"
        }
    .end annotation

    .line 0
    const-string v0, "metadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/fdroid/database/App;

    invoke-direct {v0, p1, p2, p3}, Lorg/fdroid/database/App;-><init>(Lorg/fdroid/database/AppMetadata;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/fdroid/database/App;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/fdroid/database/App;

    iget-object v1, p0, Lorg/fdroid/database/App;->metadata:Lorg/fdroid/database/AppMetadata;

    iget-object v3, p1, Lorg/fdroid/database/App;->metadata:Lorg/fdroid/database/AppMetadata;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/fdroid/database/App;->localizedFiles:Ljava/util/List;

    iget-object v3, p1, Lorg/fdroid/database/App;->localizedFiles:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/fdroid/database/App;->localizedFileLists:Ljava/util/List;

    iget-object p1, p1, Lorg/fdroid/database/App;->localizedFileLists:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getDescription(Landroidx/core/os/LocaleListCompat;)Ljava/lang/String;
    .locals 2

    const-string v0, "localeList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    sget-object v0, Lorg/fdroid/LocaleChooser;->INSTANCE:Lorg/fdroid/LocaleChooser;

    iget-object v1, p0, Lorg/fdroid/database/App;->metadata:Lorg/fdroid/database/AppMetadata;

    invoke-virtual {v1}, Lorg/fdroid/database/AppMetadata;->getDescription()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/fdroid/LocaleChooser;->getBestLocale(Ljava/util/Map;Landroidx/core/os/LocaleListCompat;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getFeatureGraphic(Landroidx/core/os/LocaleListCompat;)Lorg/fdroid/index/v2/FileV2;
    .locals 2

    const-string v0, "localeList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    sget-object v0, Lorg/fdroid/LocaleChooser;->INSTANCE:Lorg/fdroid/LocaleChooser;

    invoke-virtual {p0}, Lorg/fdroid/database/App;->getFeatureGraphic$database_release()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/fdroid/LocaleChooser;->getBestLocale(Ljava/util/Map;Landroidx/core/os/LocaleListCompat;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fdroid/index/v2/FileV2;

    return-object p1
.end method

.method public final getFeatureGraphic$database_release()Ljava/util/Map;
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

    const-string v0, "featureGraphic"

    .line 166
    invoke-direct {p0, v0}, Lorg/fdroid/database/App;->getLocalizedFile(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIcon(Landroidx/core/os/LocaleListCompat;)Lorg/fdroid/index/v2/FileV2;
    .locals 2

    const-string v0, "localeList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    sget-object v0, Lorg/fdroid/LocaleChooser;->INSTANCE:Lorg/fdroid/LocaleChooser;

    invoke-virtual {p0}, Lorg/fdroid/database/App;->getIcon$database_release()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/fdroid/LocaleChooser;->getBestLocale(Ljava/util/Map;Landroidx/core/os/LocaleListCompat;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fdroid/index/v2/FileV2;

    return-object p1
.end method

.method public final getIcon$database_release()Ljava/util/Map;
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

    const-string v0, "icon"

    .line 165
    invoke-direct {p0, v0}, Lorg/fdroid/database/App;->getLocalizedFile(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getMetadata()Lorg/fdroid/database/AppMetadata;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/App;->metadata:Lorg/fdroid/database/AppMetadata;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/App;->metadata:Lorg/fdroid/database/AppMetadata;

    .line 199
    invoke-virtual {v0}, Lorg/fdroid/database/AppMetadata;->getLocalizedName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/App;->metadata:Lorg/fdroid/database/AppMetadata;

    .line 164
    invoke-virtual {v0}, Lorg/fdroid/database/AppMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPhoneScreenshots(Landroidx/core/os/LocaleListCompat;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/os/LocaleListCompat;",
            ")",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/FileV2;",
            ">;"
        }
    .end annotation

    const-string v0, "localeList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    sget-object v0, Lorg/fdroid/LocaleChooser;->INSTANCE:Lorg/fdroid/LocaleChooser;

    invoke-virtual {p0}, Lorg/fdroid/database/App;->getScreenshots$database_release()Lorg/fdroid/index/v2/Screenshots;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/fdroid/index/v2/Screenshots;->getPhone()Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1}, Lorg/fdroid/LocaleChooser;->getBestLocale(Ljava/util/Map;Landroidx/core/os/LocaleListCompat;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public final getPromoGraphic(Landroidx/core/os/LocaleListCompat;)Lorg/fdroid/index/v2/FileV2;
    .locals 2

    const-string v0, "localeList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    sget-object v0, Lorg/fdroid/LocaleChooser;->INSTANCE:Lorg/fdroid/LocaleChooser;

    invoke-virtual {p0}, Lorg/fdroid/database/App;->getPromoGraphic$database_release()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/fdroid/LocaleChooser;->getBestLocale(Ljava/util/Map;Landroidx/core/os/LocaleListCompat;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fdroid/index/v2/FileV2;

    return-object p1
.end method

.method public final getPromoGraphic$database_release()Ljava/util/Map;
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

    const-string v0, "promoGraphic"

    .line 167
    invoke-direct {p0, v0}, Lorg/fdroid/database/App;->getLocalizedFile(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRepoId()J
    .locals 2

    iget-object v0, p0, Lorg/fdroid/database/App;->metadata:Lorg/fdroid/database/AppMetadata;

    .line 163
    invoke-virtual {v0}, Lorg/fdroid/database/AppMetadata;->getRepoId()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getScreenshots$database_release()Lorg/fdroid/index/v2/Screenshots;
    .locals 8

    iget-object v0, p0, Lorg/fdroid/database/App;->localizedFileLists:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 170
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/fdroid/index/v2/Screenshots;

    const-string v2, "phone"

    .line 171
    invoke-direct {p0, v2}, Lorg/fdroid/database/App;->getLocalizedFileList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    const-string v2, "sevenInch"

    .line 172
    invoke-direct {p0, v2}, Lorg/fdroid/database/App;->getLocalizedFileList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    const-string v2, "tenInch"

    .line 173
    invoke-direct {p0, v2}, Lorg/fdroid/database/App;->getLocalizedFileList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    const-string v2, "wear"

    .line 174
    invoke-direct {p0, v2}, Lorg/fdroid/database/App;->getLocalizedFileList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    const-string v2, "tv"

    .line 175
    invoke-direct {p0, v2}, Lorg/fdroid/database/App;->getLocalizedFileList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    move-object v2, v0

    .line 170
    invoke-direct/range {v2 .. v7}, Lorg/fdroid/index/v2/Screenshots;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 176
    invoke-virtual {v0}, Lorg/fdroid/index/v2/Screenshots;->isNull()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    move-object v1, v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final getSevenInchScreenshots(Landroidx/core/os/LocaleListCompat;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/os/LocaleListCompat;",
            ")",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/FileV2;",
            ">;"
        }
    .end annotation

    const-string v0, "localeList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    sget-object v0, Lorg/fdroid/LocaleChooser;->INSTANCE:Lorg/fdroid/LocaleChooser;

    invoke-virtual {p0}, Lorg/fdroid/database/App;->getScreenshots$database_release()Lorg/fdroid/index/v2/Screenshots;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/fdroid/index/v2/Screenshots;->getSevenInch()Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1}, Lorg/fdroid/LocaleChooser;->getBestLocale(Ljava/util/Map;Landroidx/core/os/LocaleListCompat;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/App;->metadata:Lorg/fdroid/database/AppMetadata;

    .line 200
    invoke-virtual {v0}, Lorg/fdroid/database/AppMetadata;->getLocalizedSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTenInchScreenshots(Landroidx/core/os/LocaleListCompat;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/os/LocaleListCompat;",
            ")",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/FileV2;",
            ">;"
        }
    .end annotation

    const-string v0, "localeList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    sget-object v0, Lorg/fdroid/LocaleChooser;->INSTANCE:Lorg/fdroid/LocaleChooser;

    invoke-virtual {p0}, Lorg/fdroid/database/App;->getScreenshots$database_release()Lorg/fdroid/index/v2/Screenshots;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/fdroid/index/v2/Screenshots;->getTenInch()Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1}, Lorg/fdroid/LocaleChooser;->getBestLocale(Ljava/util/Map;Landroidx/core/os/LocaleListCompat;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public final getTvBanner(Landroidx/core/os/LocaleListCompat;)Lorg/fdroid/index/v2/FileV2;
    .locals 2

    const-string v0, "localeList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    sget-object v0, Lorg/fdroid/LocaleChooser;->INSTANCE:Lorg/fdroid/LocaleChooser;

    invoke-virtual {p0}, Lorg/fdroid/database/App;->getTvBanner$database_release()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/fdroid/LocaleChooser;->getBestLocale(Ljava/util/Map;Landroidx/core/os/LocaleListCompat;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fdroid/index/v2/FileV2;

    return-object p1
.end method

.method public final getTvBanner$database_release()Ljava/util/Map;
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

    const-string v0, "tvBanner"

    .line 168
    invoke-direct {p0, v0}, Lorg/fdroid/database/App;->getLocalizedFile(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getTvScreenshots(Landroidx/core/os/LocaleListCompat;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/os/LocaleListCompat;",
            ")",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/FileV2;",
            ">;"
        }
    .end annotation

    const-string v0, "localeList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    sget-object v0, Lorg/fdroid/LocaleChooser;->INSTANCE:Lorg/fdroid/LocaleChooser;

    invoke-virtual {p0}, Lorg/fdroid/database/App;->getScreenshots$database_release()Lorg/fdroid/index/v2/Screenshots;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/fdroid/index/v2/Screenshots;->getTv()Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1}, Lorg/fdroid/LocaleChooser;->getBestLocale(Ljava/util/Map;Landroidx/core/os/LocaleListCompat;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public final getVideo(Landroidx/core/os/LocaleListCompat;)Ljava/lang/String;
    .locals 2

    const-string v0, "localeList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    sget-object v0, Lorg/fdroid/LocaleChooser;->INSTANCE:Lorg/fdroid/LocaleChooser;

    iget-object v1, p0, Lorg/fdroid/database/App;->metadata:Lorg/fdroid/database/AppMetadata;

    invoke-virtual {v1}, Lorg/fdroid/database/AppMetadata;->getVideo()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/fdroid/LocaleChooser;->getBestLocale(Ljava/util/Map;Landroidx/core/os/LocaleListCompat;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getWearScreenshots(Landroidx/core/os/LocaleListCompat;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/os/LocaleListCompat;",
            ")",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/FileV2;",
            ">;"
        }
    .end annotation

    const-string v0, "localeList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    sget-object v0, Lorg/fdroid/LocaleChooser;->INSTANCE:Lorg/fdroid/LocaleChooser;

    invoke-virtual {p0}, Lorg/fdroid/database/App;->getScreenshots$database_release()Lorg/fdroid/index/v2/Screenshots;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/fdroid/index/v2/Screenshots;->getWear()Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1}, Lorg/fdroid/LocaleChooser;->getBestLocale(Ljava/util/Map;Landroidx/core/os/LocaleListCompat;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/App;->metadata:Lorg/fdroid/database/AppMetadata;

    invoke-virtual {v0}, Lorg/fdroid/database/AppMetadata;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/App;->localizedFiles:Ljava/util/List;

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

    iget-object v1, p0, Lorg/fdroid/database/App;->localizedFileLists:Ljava/util/List;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/App;->metadata:Lorg/fdroid/database/AppMetadata;

    iget-object v1, p0, Lorg/fdroid/database/App;->localizedFiles:Ljava/util/List;

    iget-object v2, p0, Lorg/fdroid/database/App;->localizedFileLists:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App(metadata="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", localizedFiles="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", localizedFileLists="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
