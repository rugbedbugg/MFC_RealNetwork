.class public final Lorg/fdroid/repo/Fetching;
.super Lorg/fdroid/repo/AddRepoState;
.source "RepoAdder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\r\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ\u0008\u0010\u0018\u001a\u00020\u0003H\u0016R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0019"
    }
    d2 = {
        "Lorg/fdroid/repo/Fetching;",
        "Lorg/fdroid/repo/AddRepoState;",
        "fetchUrl",
        "",
        "receivedRepo",
        "Lorg/fdroid/database/Repository;",
        "apps",
        "",
        "Lorg/fdroid/database/MinimalApp;",
        "fetchResult",
        "Lorg/fdroid/repo/FetchResult;",
        "done",
        "",
        "(Ljava/lang/String;Lorg/fdroid/database/Repository;Ljava/util/List;Lorg/fdroid/repo/FetchResult;Z)V",
        "getApps",
        "()Ljava/util/List;",
        "getDone",
        "()Z",
        "getFetchResult",
        "()Lorg/fdroid/repo/FetchResult;",
        "getFetchUrl",
        "()Ljava/lang/String;",
        "getReceivedRepo",
        "()Lorg/fdroid/database/Repository;",
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
.field private final apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/database/MinimalApp;",
            ">;"
        }
    .end annotation
.end field

.field private final done:Z

.field private final fetchResult:Lorg/fdroid/repo/FetchResult;

.field private final fetchUrl:Ljava/lang/String;

.field private final receivedRepo:Lorg/fdroid/database/Repository;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/fdroid/database/Repository;Ljava/util/List;Lorg/fdroid/repo/FetchResult;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/fdroid/database/Repository;",
            "Ljava/util/List<",
            "+",
            "Lorg/fdroid/database/MinimalApp;",
            ">;",
            "Lorg/fdroid/repo/FetchResult;",
            "Z)V"
        }
    .end annotation

    const-string v0, "fetchUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apps"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0}, Lorg/fdroid/repo/AddRepoState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lorg/fdroid/repo/Fetching;->fetchUrl:Ljava/lang/String;

    iput-object p2, p0, Lorg/fdroid/repo/Fetching;->receivedRepo:Lorg/fdroid/database/Repository;

    iput-object p3, p0, Lorg/fdroid/repo/Fetching;->apps:Ljava/util/List;

    iput-object p4, p0, Lorg/fdroid/repo/Fetching;->fetchResult:Lorg/fdroid/repo/FetchResult;

    iput-boolean p5, p0, Lorg/fdroid/repo/Fetching;->done:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lorg/fdroid/database/Repository;Ljava/util/List;Lorg/fdroid/repo/FetchResult;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 52
    invoke-direct/range {v0 .. v5}, Lorg/fdroid/repo/Fetching;-><init>(Ljava/lang/String;Lorg/fdroid/database/Repository;Ljava/util/List;Lorg/fdroid/repo/FetchResult;Z)V

    return-void
.end method


# virtual methods
.method public final getApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/database/MinimalApp;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/repo/Fetching;->apps:Ljava/util/List;

    return-object v0
.end method

.method public final getDone()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/fdroid/repo/Fetching;->done:Z

    return v0
.end method

.method public final getFetchResult()Lorg/fdroid/repo/FetchResult;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/repo/Fetching;->fetchResult:Lorg/fdroid/repo/FetchResult;

    return-object v0
.end method

.method public final getFetchUrl()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/repo/Fetching;->fetchUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getReceivedRepo()Lorg/fdroid/database/Repository;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/repo/Fetching;->receivedRepo:Lorg/fdroid/database/Repository;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lorg/fdroid/repo/Fetching;->fetchUrl:Ljava/lang/String;

    iget-object v1, p0, Lorg/fdroid/repo/Fetching;->receivedRepo:Lorg/fdroid/database/Repository;

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v1}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/fdroid/repo/Fetching;->apps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lorg/fdroid/repo/Fetching;->fetchResult:Lorg/fdroid/repo/FetchResult;

    iget-boolean v4, p0, Lorg/fdroid/repo/Fetching;->done:Z

    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fetching(fetchUrl="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", repo="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", apps="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", fetchResult="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", done="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
