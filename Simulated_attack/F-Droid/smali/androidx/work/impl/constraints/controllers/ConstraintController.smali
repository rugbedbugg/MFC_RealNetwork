.class public abstract Landroidx/work/impl/constraints/controllers/ConstraintController;
.super Ljava/lang/Object;
.source "ContraintControllers.kt"


# instance fields
.field private final tracker:Landroidx/work/impl/constraints/trackers/ConstraintTracker;


# direct methods
.method public constructor <init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V
    .locals 1

    const-string v0, "tracker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/constraints/controllers/ConstraintController;->tracker:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    return-void
.end method

.method public static final synthetic access$getTracker$p(Landroidx/work/impl/constraints/controllers/ConstraintController;)Landroidx/work/impl/constraints/trackers/ConstraintTracker;
    .locals 0

    .line 38
    iget-object p0, p0, Landroidx/work/impl/constraints/controllers/ConstraintController;->tracker:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    return-object p0
.end method


# virtual methods
.method public abstract getReason()I
.end method

.method public abstract hasConstraint(Landroidx/work/impl/model/WorkSpec;)Z
.end method

.method public final isConstrained(Landroidx/work/impl/model/WorkSpec;)Z
    .locals 1

    const-string v0, "workSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/controllers/ConstraintController;->hasConstraint(Landroidx/work/impl/model/WorkSpec;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/work/impl/constraints/controllers/ConstraintController;->tracker:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    invoke-virtual {p1}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->readSystemState()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/controllers/ConstraintController;->isConstrained(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract isConstrained(Ljava/lang/Object;)Z
.end method

.method public final track()Lkotlinx/coroutines/flow/Flow;
    .locals 2

    .line 46
    new-instance v0, Landroidx/work/impl/constraints/controllers/ConstraintController$track$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/work/impl/constraints/controllers/ConstraintController$track$1;-><init>(Landroidx/work/impl/constraints/controllers/ConstraintController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method
