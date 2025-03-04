.class final Lorg/fdroid/fdroid/views/repos/AddRepoActivity$onCreate$2$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AddRepoActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/repos/AddRepoActivity$onCreate$2$1;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/views/repos/AddRepoActivity;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/views/repos/AddRepoActivity;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/AddRepoActivity$onCreate$2$1$1$1;->this$0:Lorg/fdroid/fdroid/views/repos/AddRepoActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lorg/fdroid/fdroid/views/repos/AddRepoActivity$onCreate$2$1$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/AddRepoActivity$onCreate$2$1$1$1;->this$0:Lorg/fdroid/fdroid/views/repos/AddRepoActivity;

    .line 61
    invoke-static {v0}, Lorg/fdroid/fdroid/views/repos/AddRepoActivity;->access$getRepoManager(Lorg/fdroid/fdroid/views/repos/AddRepoActivity;)Lorg/fdroid/index/RepoManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/index/RepoManager;->abortAddingRepository()V

    return-void
.end method
