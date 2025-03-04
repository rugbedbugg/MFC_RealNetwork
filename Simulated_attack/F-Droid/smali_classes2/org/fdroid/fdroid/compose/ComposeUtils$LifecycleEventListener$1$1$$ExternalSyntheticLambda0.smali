.class public final synthetic Lorg/fdroid/fdroid/compose/ComposeUtils$LifecycleEventListener$1$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic f$0:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/State;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/compose/ComposeUtils$LifecycleEventListener$1$1$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/compose/ComposeUtils$LifecycleEventListener$1$1$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/runtime/State;

    invoke-static {v0, p1, p2}, Lorg/fdroid/fdroid/compose/ComposeUtils$LifecycleEventListener$1$1;->$r8$lambda$ei5rkfV6FwePktYcrGhotwfKGYk(Landroidx/compose/runtime/State;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method
