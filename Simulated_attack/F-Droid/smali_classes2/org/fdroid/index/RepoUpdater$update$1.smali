.class final Lorg/fdroid/index/RepoUpdater$update$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RepoUpdater.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/index/RepoUpdater;->update(Lorg/fdroid/database/Repository;)Lorg/fdroid/index/IndexUpdateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $repo:Lorg/fdroid/database/Repository;


# direct methods
.method constructor <init>(Lorg/fdroid/database/Repository;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/index/RepoUpdater$update$1;->$repo:Lorg/fdroid/database/Repository;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, Lorg/fdroid/index/IndexUpdater;

    invoke-virtual {p0, p1}, Lorg/fdroid/index/RepoUpdater$update$1;->invoke(Lorg/fdroid/index/IndexUpdater;)Lorg/fdroid/index/IndexUpdateResult;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lorg/fdroid/index/IndexUpdater;)Lorg/fdroid/index/IndexUpdateResult;
    .locals 1

    const-string v0, "updater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/index/RepoUpdater$update$1;->$repo:Lorg/fdroid/database/Repository;

    .line 56
    invoke-virtual {p1, v0}, Lorg/fdroid/index/IndexUpdater;->update(Lorg/fdroid/database/Repository;)Lorg/fdroid/index/IndexUpdateResult;

    move-result-object p1

    return-object p1
.end method
