.class public final Lorg/fdroid/database/AppPrefs;
.super Ljava/lang/Object;
.source "AppPrefs.kt"

# interfaces
.implements Lorg/fdroid/PackagePreference;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/database/AppPrefs$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0014\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0087\u0008\u0018\u0000 ,2\u00020\u0001:\u0001,B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0005H\u00c6\u0003J\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0015J\u0016\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0008H\u00c0\u0003\u00a2\u0006\u0002\u0008\u001dJ@\u0010\u001e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0008H\u00c6\u0001\u00a2\u0006\u0002\u0010\u001fJ\u0013\u0010 \u001a\u00020\r2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u00d6\u0003J\t\u0010#\u001a\u00020$H\u00d6\u0001J\u000e\u0010%\u001a\u00020\r2\u0006\u0010&\u001a\u00020\u0005J\t\u0010\'\u001a\u00020\u0003H\u00d6\u0001J\u0006\u0010(\u001a\u00020\u0000J\u000e\u0010)\u001a\u00020\u00002\u0006\u0010&\u001a\u00020\u0005J\u000e\u0010*\u001a\u00020\u00002\u0006\u0010+\u001a\u00020\u0003R\u001c\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u0016\u001a\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u000b\u00a8\u0006-"
    }
    d2 = {
        "Lorg/fdroid/database/AppPrefs;",
        "Lorg/fdroid/PackagePreference;",
        "packageName",
        "",
        "ignoreVersionCodeUpdate",
        "",
        "preferredRepoId",
        "appPrefReleaseChannels",
        "",
        "(Ljava/lang/String;JLjava/lang/Long;Ljava/util/List;)V",
        "getAppPrefReleaseChannels$database_release",
        "()Ljava/util/List;",
        "ignoreAllUpdates",
        "",
        "getIgnoreAllUpdates",
        "()Z",
        "getIgnoreVersionCodeUpdate",
        "()J",
        "getPackageName",
        "()Ljava/lang/String;",
        "getPreferredRepoId",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "releaseChannels",
        "getReleaseChannels",
        "component1",
        "component2",
        "component3",
        "component4",
        "component4$database_release",
        "copy",
        "(Ljava/lang/String;JLjava/lang/Long;Ljava/util/List;)Lorg/fdroid/database/AppPrefs;",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "shouldIgnoreUpdate",
        "versionCode",
        "toString",
        "toggleIgnoreAllUpdates",
        "toggleIgnoreVersionCodeUpdate",
        "toggleReleaseChannel",
        "releaseChannel",
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
.field public static final Companion:Lorg/fdroid/database/AppPrefs$Companion;

.field public static final TABLE:Ljava/lang/String; = "AppPrefs"


# instance fields
.field private final appPrefReleaseChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ignoreVersionCodeUpdate:J

.field private final packageName:Ljava/lang/String;

.field private final preferredRepoId:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/fdroid/database/AppPrefs$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fdroid/database/AppPrefs$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fdroid/database/AppPrefs;->Companion:Lorg/fdroid/database/AppPrefs$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/Long;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/database/AppPrefs;->packageName:Ljava/lang/String;

    iput-wide p2, p0, Lorg/fdroid/database/AppPrefs;->ignoreVersionCodeUpdate:J

    iput-object p4, p0, Lorg/fdroid/database/AppPrefs;->preferredRepoId:Ljava/lang/Long;

    iput-object p5, p0, Lorg/fdroid/database/AppPrefs;->appPrefReleaseChannels:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JLjava/lang/Long;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const-wide/16 p2, 0x0

    :cond_0
    move-wide v2, p2

    and-int/lit8 p2, p6, 0x4

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    move-object v4, p3

    goto :goto_0

    :cond_1
    move-object v4, p4

    :goto_0
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    move-object v5, p3

    goto :goto_1

    :cond_2
    move-object v5, p5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    .line 13
    invoke-direct/range {v0 .. v5}, Lorg/fdroid/database/AppPrefs;-><init>(Ljava/lang/String;JLjava/lang/Long;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lorg/fdroid/database/AppPrefs;Ljava/lang/String;JLjava/lang/Long;Ljava/util/List;ILjava/lang/Object;)Lorg/fdroid/database/AppPrefs;
    .locals 3

    .line 0
    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lorg/fdroid/database/AppPrefs;->packageName:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-wide p2, p0, Lorg/fdroid/database/AppPrefs;->ignoreVersionCodeUpdate:J

    :cond_1
    move-wide v0, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p4, p0, Lorg/fdroid/database/AppPrefs;->preferredRepoId:Ljava/lang/Long;

    :cond_2
    move-object p7, p4

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p5, p0, Lorg/fdroid/database/AppPrefs;->appPrefReleaseChannels:Ljava/util/List;

    :cond_3
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-wide p4, v0

    move-object p6, p7

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lorg/fdroid/database/AppPrefs;->copy(Ljava/lang/String;JLjava/lang/Long;Ljava/util/List;)Lorg/fdroid/database/AppPrefs;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/AppPrefs;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/AppPrefs;->ignoreVersionCodeUpdate:J

    return-wide v0
.end method

.method public final component3()Ljava/lang/Long;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/AppPrefs;->preferredRepoId:Ljava/lang/Long;

    return-object v0
.end method

.method public final component4$database_release()Ljava/util/List;
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
    iget-object v0, p0, Lorg/fdroid/database/AppPrefs;->appPrefReleaseChannels:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;JLjava/lang/Long;Ljava/util/List;)Lorg/fdroid/database/AppPrefs;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/fdroid/database/AppPrefs;"
        }
    .end annotation

    .line 0
    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/fdroid/database/AppPrefs;

    move-object v1, v0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/fdroid/database/AppPrefs;-><init>(Ljava/lang/String;JLjava/lang/Long;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/fdroid/database/AppPrefs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/fdroid/database/AppPrefs;

    iget-object v1, p0, Lorg/fdroid/database/AppPrefs;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/database/AppPrefs;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lorg/fdroid/database/AppPrefs;->ignoreVersionCodeUpdate:J

    iget-wide v5, p1, Lorg/fdroid/database/AppPrefs;->ignoreVersionCodeUpdate:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/fdroid/database/AppPrefs;->preferredRepoId:Ljava/lang/Long;

    iget-object v3, p1, Lorg/fdroid/database/AppPrefs;->preferredRepoId:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/fdroid/database/AppPrefs;->appPrefReleaseChannels:Ljava/util/List;

    iget-object p1, p1, Lorg/fdroid/database/AppPrefs;->appPrefReleaseChannels:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAppPrefReleaseChannels$database_release()Ljava/util/List;
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
    iget-object v0, p0, Lorg/fdroid/database/AppPrefs;->appPrefReleaseChannels:Ljava/util/List;

    return-object v0
.end method

.method public final getIgnoreAllUpdates()Z
    .locals 4

    .line 26
    invoke-virtual {p0}, Lorg/fdroid/database/AppPrefs;->getIgnoreVersionCodeUpdate()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIgnoreVersionCodeUpdate()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/AppPrefs;->ignoreVersionCodeUpdate:J

    return-wide v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/AppPrefs;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPreferredRepoId()Ljava/lang/Long;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/AppPrefs;->preferredRepoId:Ljava/lang/Long;

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

    iget-object v0, p0, Lorg/fdroid/database/AppPrefs;->appPrefReleaseChannels:Ljava/util/List;

    if-nez v0, :cond_0

    .line 27
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/AppPrefs;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/fdroid/database/AppPrefs;->ignoreVersionCodeUpdate:J

    invoke-static {v1, v2}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/AppPrefs;->preferredRepoId:Ljava/lang/Long;

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

    iget-object v1, p0, Lorg/fdroid/database/AppPrefs;->appPrefReleaseChannels:Ljava/util/List;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final shouldIgnoreUpdate(J)Z
    .locals 2

    .line 29
    invoke-virtual {p0}, Lorg/fdroid/database/AppPrefs;->getIgnoreVersionCodeUpdate()J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/AppPrefs;->packageName:Ljava/lang/String;

    iget-wide v1, p0, Lorg/fdroid/database/AppPrefs;->ignoreVersionCodeUpdate:J

    iget-object v3, p0, Lorg/fdroid/database/AppPrefs;->preferredRepoId:Ljava/lang/Long;

    iget-object v4, p0, Lorg/fdroid/database/AppPrefs;->appPrefReleaseChannels:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AppPrefs(packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ignoreVersionCodeUpdate="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", preferredRepoId="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", appPrefReleaseChannels="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toggleIgnoreAllUpdates()Lorg/fdroid/database/AppPrefs;
    .locals 8

    const/4 v1, 0x0

    .line 35
    invoke-virtual {p0}, Lorg/fdroid/database/AppPrefs;->getIgnoreAllUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xd

    const/4 v7, 0x0

    move-object v0, p0

    .line 34
    invoke-static/range {v0 .. v7}, Lorg/fdroid/database/AppPrefs;->copy$default(Lorg/fdroid/database/AppPrefs;Ljava/lang/String;JLjava/lang/Long;Ljava/util/List;ILjava/lang/Object;)Lorg/fdroid/database/AppPrefs;

    move-result-object v0

    return-object v0
.end method

.method public final toggleIgnoreVersionCodeUpdate(J)Lorg/fdroid/database/AppPrefs;
    .locals 8

    const/4 v1, 0x0

    .line 43
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/database/AppPrefs;->shouldIgnoreUpdate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    move-wide v2, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xd

    const/4 v7, 0x0

    move-object v0, p0

    .line 42
    invoke-static/range {v0 .. v7}, Lorg/fdroid/database/AppPrefs;->copy$default(Lorg/fdroid/database/AppPrefs;Ljava/lang/String;JLjava/lang/Long;Ljava/util/List;ILjava/lang/Object;)Lorg/fdroid/database/AppPrefs;

    move-result-object p1

    return-object p1
.end method

.method public final toggleReleaseChannel(Ljava/lang/String;)Lorg/fdroid/database/AppPrefs;
    .locals 9

    const-string v0, "releaseChannel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/fdroid/database/AppPrefs;->appPrefReleaseChannels:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/fdroid/database/AppPrefs;->appPrefReleaseChannels:Ljava/util/List;

    .line 52
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/fdroid/database/AppPrefs;->appPrefReleaseChannels:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 54
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :goto_1
    const/4 v7, 0x7

    const/4 v8, 0x0

    move-object v1, p0

    .line 50
    invoke-static/range {v1 .. v8}, Lorg/fdroid/database/AppPrefs;->copy$default(Lorg/fdroid/database/AppPrefs;Ljava/lang/String;JLjava/lang/Long;Ljava/util/List;ILjava/lang/Object;)Lorg/fdroid/database/AppPrefs;

    move-result-object p1

    return-object p1
.end method
