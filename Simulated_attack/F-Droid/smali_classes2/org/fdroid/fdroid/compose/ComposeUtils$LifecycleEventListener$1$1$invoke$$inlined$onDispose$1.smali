.class public final Lorg/fdroid/fdroid/compose/ComposeUtils$LifecycleEventListener$1$1$invoke$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "Effects.kt"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/compose/ComposeUtils$LifecycleEventListener$1$1;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "org/fdroid/fdroid/compose/ComposeUtils$LifecycleEventListener$1$1$invoke$$inlined$onDispose$1",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        "",
        "dispose",
        "runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $lifecycle$inlined:Landroidx/lifecycle/Lifecycle;

.field final synthetic $observer$inlined:Landroidx/lifecycle/LifecycleEventObserver;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/LifecycleEventObserver;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/compose/ComposeUtils$LifecycleEventListener$1$1$invoke$$inlined$onDispose$1;->$lifecycle$inlined:Landroidx/lifecycle/Lifecycle;

    iput-object p2, p0, Lorg/fdroid/fdroid/compose/ComposeUtils$LifecycleEventListener$1$1$invoke$$inlined$onDispose$1;->$observer$inlined:Landroidx/lifecycle/LifecycleEventObserver;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/compose/ComposeUtils$LifecycleEventListener$1$1$invoke$$inlined$onDispose$1;->$lifecycle$inlined:Landroidx/lifecycle/Lifecycle;

    iget-object v1, p0, Lorg/fdroid/fdroid/compose/ComposeUtils$LifecycleEventListener$1$1$invoke$$inlined$onDispose$1;->$observer$inlined:Landroidx/lifecycle/LifecycleEventObserver;

    .line 497
    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method
