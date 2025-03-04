.class final Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$5$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Composer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/ComposerImpl;->insertMovableContentGuarded(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $to:Landroidx/compose/runtime/MovableContentStateReference;

.field final synthetic this$0:Landroidx/compose/runtime/ComposerImpl;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$5$1$1$1;->this$0:Landroidx/compose/runtime/ComposerImpl;

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$5$1$1$1;->$to:Landroidx/compose/runtime/MovableContentStateReference;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 3148
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$5$1$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$5$1$1$1;->this$0:Landroidx/compose/runtime/ComposerImpl;

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$5$1$1$1;->$to:Landroidx/compose/runtime/MovableContentStateReference;

    .line 3155
    invoke-virtual {v1}, Landroidx/compose/runtime/MovableContentStateReference;->getContent$runtime_release()Landroidx/compose/runtime/MovableContent;

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$5$1$1$1;->$to:Landroidx/compose/runtime/MovableContentStateReference;

    .line 3156
    invoke-virtual {v1}, Landroidx/compose/runtime/MovableContentStateReference;->getLocals$runtime_release()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$5$1$1$1;->$to:Landroidx/compose/runtime/MovableContentStateReference;

    .line 3157
    invoke-virtual {v2}, Landroidx/compose/runtime/MovableContentStateReference;->getParameter$runtime_release()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3154
    invoke-static {v0, v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerImpl;->access$invokeMovableContentLambda(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/MovableContent;Landroidx/compose/runtime/PersistentCompositionLocalMap;Ljava/lang/Object;Z)V

    return-void
.end method
