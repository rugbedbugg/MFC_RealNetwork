.class public final Lorg/fdroid/repo/Added;
.super Lorg/fdroid/repo/AddRepoState;
.source "RepoAdder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lorg/fdroid/repo/Added;",
        "Lorg/fdroid/repo/AddRepoState;",
        "repo",
        "Lorg/fdroid/database/Repository;",
        "(Lorg/fdroid/database/Repository;)V",
        "getRepo",
        "()Lorg/fdroid/database/Repository;",
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
.field private final repo:Lorg/fdroid/database/Repository;


# direct methods
.method public constructor <init>(Lorg/fdroid/database/Repository;)V
    .locals 1

    const-string v0, "repo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, v0}, Lorg/fdroid/repo/AddRepoState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lorg/fdroid/repo/Added;->repo:Lorg/fdroid/database/Repository;

    return-void
.end method


# virtual methods
.method public final getRepo()Lorg/fdroid/database/Repository;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/repo/Added;->repo:Lorg/fdroid/database/Repository;

    return-object v0
.end method
