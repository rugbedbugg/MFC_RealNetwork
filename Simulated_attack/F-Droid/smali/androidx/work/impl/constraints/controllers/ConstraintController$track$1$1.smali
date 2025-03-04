.class final Landroidx/work/impl/constraints/controllers/ConstraintController$track$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ContraintControllers.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/constraints/controllers/ConstraintController$track$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $listener:Landroidx/work/impl/constraints/controllers/ConstraintController$track$1$listener$1;

.field final synthetic this$0:Landroidx/work/impl/constraints/controllers/ConstraintController;


# direct methods
.method constructor <init>(Landroidx/work/impl/constraints/controllers/ConstraintController;Landroidx/work/impl/constraints/controllers/ConstraintController$track$1$listener$1;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/work/impl/constraints/controllers/ConstraintController$track$1$1;->this$0:Landroidx/work/impl/constraints/controllers/ConstraintController;

    iput-object p2, p0, Landroidx/work/impl/constraints/controllers/ConstraintController$track$1$1;->$listener:Landroidx/work/impl/constraints/controllers/ConstraintController$track$1$listener$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 55
    invoke-virtual {p0}, Landroidx/work/impl/constraints/controllers/ConstraintController$track$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/constraints/controllers/ConstraintController$track$1$1;->this$0:Landroidx/work/impl/constraints/controllers/ConstraintController;

    .line 56
    invoke-static {v0}, Landroidx/work/impl/constraints/controllers/ConstraintController;->access$getTracker$p(Landroidx/work/impl/constraints/controllers/ConstraintController;)Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/constraints/controllers/ConstraintController$track$1$1;->$listener:Landroidx/work/impl/constraints/controllers/ConstraintController$track$1$listener$1;

    invoke-virtual {v0, v1}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->removeListener(Landroidx/work/impl/constraints/ConstraintListener;)V

    return-void
.end method
