.class final Lorg/fdroid/index/IndexUpdater$update$1;
.super Lkotlin/jvm/internal/Lambda;
.source "IndexUpdater.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/index/IndexUpdater;->update(Lorg/fdroid/database/Repository;)Lorg/fdroid/index/IndexUpdateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $repo:Lorg/fdroid/database/Repository;

.field final synthetic this$0:Lorg/fdroid/index/IndexUpdater;


# direct methods
.method constructor <init>(Lorg/fdroid/index/IndexUpdater;Lorg/fdroid/database/Repository;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/index/IndexUpdater$update$1;->this$0:Lorg/fdroid/index/IndexUpdater;

    iput-object p2, p0, Lorg/fdroid/index/IndexUpdater$update$1;->$repo:Lorg/fdroid/database/Repository;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lorg/fdroid/index/IndexUpdater$update$1;->invoke()Lorg/fdroid/index/IndexUpdateResult;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/fdroid/index/IndexUpdateResult;
    .locals 2

    iget-object v0, p0, Lorg/fdroid/index/IndexUpdater$update$1;->this$0:Lorg/fdroid/index/IndexUpdater;

    iget-object v1, p0, Lorg/fdroid/index/IndexUpdater$update$1;->$repo:Lorg/fdroid/database/Repository;

    .line 63
    invoke-virtual {v0, v1}, Lorg/fdroid/index/IndexUpdater;->updateRepo(Lorg/fdroid/database/Repository;)Lorg/fdroid/index/IndexUpdateResult;

    move-result-object v0

    return-object v0
.end method
