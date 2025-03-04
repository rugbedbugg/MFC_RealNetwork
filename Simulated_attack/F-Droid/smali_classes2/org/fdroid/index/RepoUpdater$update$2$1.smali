.class final Lorg/fdroid/index/RepoUpdater$update$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RepoUpdater.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/index/RepoUpdater;->update(Lorg/fdroid/database/Repository;Lkotlin/jvm/functions/Function1;)Lorg/fdroid/index/IndexUpdateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $repo:Lorg/fdroid/database/Repository;

.field final synthetic $updaterVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/fdroid/database/Repository;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/index/RepoUpdater$update$2$1;->$updaterVersion:Ljava/lang/String;

    iput-object p2, p0, Lorg/fdroid/index/RepoUpdater$update$2$1;->$repo:Lorg/fdroid/database/Repository;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/fdroid/index/RepoUpdater$update$2$1;->$updaterVersion:Ljava/lang/String;

    iget-object v1, p0, Lorg/fdroid/index/RepoUpdater$update$2$1;->$repo:Lorg/fdroid/database/Repository;

    .line 68
    invoke-virtual {v1}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not using updater "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for repo "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
