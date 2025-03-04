.class final Landroidx/compose/animation/ExitTransitionImpl;
.super Landroidx/compose/animation/ExitTransition;
.source "EnterExitTransition.kt"


# instance fields
.field private final data:Landroidx/compose/animation/TransitionData;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/TransitionData;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 794
    invoke-direct {p0, v0}, Landroidx/compose/animation/ExitTransition;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    return-void
.end method


# virtual methods
.method public getData$animation_release()Landroidx/compose/animation/TransitionData;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    return-object v0
.end method
