.class public final Lorg/fdroid/fdroid/views/appdetails/AppData;
.super Ljava/lang/Object;
.source "AppDetailsViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\u000f\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u00c6\u0003J-\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001b"
    }
    d2 = {
        "Lorg/fdroid/fdroid/views/appdetails/AppData;",
        "",
        "appPrefs",
        "Lorg/fdroid/database/AppPrefs;",
        "preferredRepoId",
        "",
        "repos",
        "",
        "Lorg/fdroid/database/Repository;",
        "(Lorg/fdroid/database/AppPrefs;JLjava/util/List;)V",
        "getAppPrefs",
        "()Lorg/fdroid/database/AppPrefs;",
        "getPreferredRepoId",
        "()J",
        "getRepos",
        "()Ljava/util/List;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "app_fullRelease"
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
.field public static final $stable:I = 0x8


# instance fields
.field private final appPrefs:Lorg/fdroid/database/AppPrefs;

.field private final preferredRepoId:J

.field private final repos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/database/Repository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lorg/fdroid/database/AppPrefs;JLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/database/AppPrefs;",
            "J",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Repository;",
            ">;)V"
        }
    .end annotation

    const-string v0, "appPrefs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repos"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/appdetails/AppData;->appPrefs:Lorg/fdroid/database/AppPrefs;

    iput-wide p2, p0, Lorg/fdroid/fdroid/views/appdetails/AppData;->preferredRepoId:J

    iput-object p4, p0, Lorg/fdroid/fdroid/views/appdetails/AppData;->repos:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lorg/fdroid/fdroid/views/appdetails/AppData;Lorg/fdroid/database/AppPrefs;JLjava/util/List;ILjava/lang/Object;)Lorg/fdroid/fdroid/views/appdetails/AppData;
    .locals 0

    .line 0
    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lorg/fdroid/fdroid/views/appdetails/AppData;->appPrefs:Lorg/fdroid/database/AppPrefs;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-wide p2, p0, Lorg/fdroid/fdroid/views/appdetails/AppData;->preferredRepoId:J

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget-object p4, p0, Lorg/fdroid/fdroid/views/appdetails/AppData;->repos:Ljava/util/List;

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/fdroid/fdroid/views/appdetails/AppData;->copy(Lorg/fdroid/database/AppPrefs;JLjava/util/List;)Lorg/fdroid/fdroid/views/appdetails/AppData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lorg/fdroid/database/AppPrefs;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppData;->appPrefs:Lorg/fdroid/database/AppPrefs;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppData;->preferredRepoId:J

    return-wide v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Repository;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppData;->repos:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Lorg/fdroid/database/AppPrefs;JLjava/util/List;)Lorg/fdroid/fdroid/views/appdetails/AppData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/database/AppPrefs;",
            "J",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Repository;",
            ">;)",
            "Lorg/fdroid/fdroid/views/appdetails/AppData;"
        }
    .end annotation

    .line 0
    const-string v0, "appPrefs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repos"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/fdroid/fdroid/views/appdetails/AppData;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/fdroid/fdroid/views/appdetails/AppData;-><init>(Lorg/fdroid/database/AppPrefs;JLjava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/fdroid/fdroid/views/appdetails/AppData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/fdroid/fdroid/views/appdetails/AppData;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/appdetails/AppData;->appPrefs:Lorg/fdroid/database/AppPrefs;

    iget-object v3, p1, Lorg/fdroid/fdroid/views/appdetails/AppData;->appPrefs:Lorg/fdroid/database/AppPrefs;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lorg/fdroid/fdroid/views/appdetails/AppData;->preferredRepoId:J

    iget-wide v5, p1, Lorg/fdroid/fdroid/views/appdetails/AppData;->preferredRepoId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/fdroid/fdroid/views/appdetails/AppData;->repos:Ljava/util/List;

    iget-object p1, p1, Lorg/fdroid/fdroid/views/appdetails/AppData;->repos:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAppPrefs()Lorg/fdroid/database/AppPrefs;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppData;->appPrefs:Lorg/fdroid/database/AppPrefs;

    return-object v0
.end method

.method public final getPreferredRepoId()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppData;->preferredRepoId:J

    return-wide v0
.end method

.method public final getRepos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Repository;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppData;->repos:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppData;->appPrefs:Lorg/fdroid/database/AppPrefs;

    invoke-virtual {v0}, Lorg/fdroid/database/AppPrefs;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/fdroid/fdroid/views/appdetails/AppData;->preferredRepoId:J

    invoke-static {v1, v2}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/fdroid/views/appdetails/AppData;->repos:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppData;->appPrefs:Lorg/fdroid/database/AppPrefs;

    iget-wide v1, p0, Lorg/fdroid/fdroid/views/appdetails/AppData;->preferredRepoId:J

    iget-object v3, p0, Lorg/fdroid/fdroid/views/appdetails/AppData;->repos:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AppData(appPrefs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", preferredRepoId="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", repos="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
