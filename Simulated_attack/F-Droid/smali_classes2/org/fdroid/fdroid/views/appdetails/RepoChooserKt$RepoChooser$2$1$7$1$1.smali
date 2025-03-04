.class final Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$7$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RepoChooser.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$7;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
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
.field final synthetic $expanded$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $onRepoChanged:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $repo:Lorg/fdroid/database/Repository;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lorg/fdroid/database/Repository;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            "Lorg/fdroid/database/Repository;",
            "Landroidx/compose/runtime/MutableState;",
            ")V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$7$1$1;->$onRepoChanged:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$7$1$1;->$repo:Lorg/fdroid/database/Repository;

    iput-object p3, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$7$1$1;->$expanded$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 148
    invoke-virtual {p0}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$7$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$7$1$1;->$onRepoChanged:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$7$1$1;->$repo:Lorg/fdroid/database/Repository;

    .line 149
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$7$1$1;->$expanded$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v1, 0x0

    .line 150
    invoke-static {v0, v1}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt;->access$RepoChooser$lambda$2(Landroidx/compose/runtime/MutableState;Z)V

    return-void
.end method
