.class final Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$2$1;
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
.field final synthetic $offsetChanges:Ljava/util/List;

.field final synthetic $reader:Landroidx/compose/runtime/SlotReader;

.field final synthetic $to:Landroidx/compose/runtime/MovableContentStateReference;

.field final synthetic this$0:Landroidx/compose/runtime/ComposerImpl;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/ComposerImpl;Ljava/util/List;Landroidx/compose/runtime/SlotReader;Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$2$1;->this$0:Landroidx/compose/runtime/ComposerImpl;

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$2$1;->$offsetChanges:Ljava/util/List;

    iput-object p3, p0, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$2$1;->$reader:Landroidx/compose/runtime/SlotReader;

    iput-object p4, p0, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$2$1;->$to:Landroidx/compose/runtime/MovableContentStateReference;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 3064
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$2$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 8

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$2$1;->this$0:Landroidx/compose/runtime/ComposerImpl;

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$2$1;->$offsetChanges:Ljava/util/List;

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$2$1;->$reader:Landroidx/compose/runtime/SlotReader;

    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$2$1;->$to:Landroidx/compose/runtime/MovableContentStateReference;

    .line 3187
    invoke-static {v0}, Landroidx/compose/runtime/ComposerImpl;->access$getChanges$p(Landroidx/compose/runtime/ComposerImpl;)Ljava/util/List;

    move-result-object v4

    .line 3189
    :try_start_0
    invoke-static {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->access$setChanges$p(Landroidx/compose/runtime/ComposerImpl;Ljava/util/List;)V

    .line 3197
    invoke-static {v0}, Landroidx/compose/runtime/ComposerImpl;->access$getReader$p(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/SlotReader;

    move-result-object v1

    .line 3198
    invoke-static {v0}, Landroidx/compose/runtime/ComposerImpl;->access$getNodeCountOverrides$p(Landroidx/compose/runtime/ComposerImpl;)[I

    move-result-object v5

    const/4 v6, 0x0

    .line 3199
    invoke-static {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->access$setNodeCountOverrides$p(Landroidx/compose/runtime/ComposerImpl;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3201
    :try_start_1
    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->access$setReader$p(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/SlotReader;)V

    .line 3068
    invoke-virtual {v3}, Landroidx/compose/runtime/MovableContentStateReference;->getContent$runtime_release()Landroidx/compose/runtime/MovableContent;

    .line 3069
    invoke-virtual {v3}, Landroidx/compose/runtime/MovableContentStateReference;->getLocals$runtime_release()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v2

    .line 3070
    invoke-virtual {v3}, Landroidx/compose/runtime/MovableContentStateReference;->getParameter$runtime_release()Ljava/lang/Object;

    move-result-object v3

    const/4 v7, 0x1

    .line 3067
    invoke-static {v0, v6, v2, v3, v7}, Landroidx/compose/runtime/ComposerImpl;->access$invokeMovableContentLambda(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/MovableContent;Landroidx/compose/runtime/PersistentCompositionLocalMap;Ljava/lang/Object;Z)V

    .line 3073
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3204
    :try_start_2
    invoke-static {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->access$setReader$p(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/SlotReader;)V

    .line 3205
    invoke-static {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->access$setNodeCountOverrides$p(Landroidx/compose/runtime/ComposerImpl;[I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3192
    invoke-static {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->access$setChanges$p(Landroidx/compose/runtime/ComposerImpl;Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v2

    .line 3204
    :try_start_3
    invoke-static {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->access$setReader$p(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/SlotReader;)V

    .line 3205
    invoke-static {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->access$setNodeCountOverrides$p(Landroidx/compose/runtime/ComposerImpl;[I)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3192
    :goto_0
    invoke-static {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->access$setChanges$p(Landroidx/compose/runtime/ComposerImpl;Ljava/util/List;)V

    throw v1
.end method
