.class public final Landroidx/work/impl/constraints/controllers/ConstraintController$track$1$listener$1;
.super Ljava/lang/Object;
.source "ContraintControllers.kt"

# interfaces
.implements Landroidx/work/impl/constraints/ConstraintListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/constraints/controllers/ConstraintController$track$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field final synthetic this$0:Landroidx/work/impl/constraints/controllers/ConstraintController;


# direct methods
.method constructor <init>(Landroidx/work/impl/constraints/controllers/ConstraintController;Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/impl/constraints/controllers/ConstraintController$track$1$listener$1;->this$0:Landroidx/work/impl/constraints/controllers/ConstraintController;

    iput-object p2, p0, Landroidx/work/impl/constraints/controllers/ConstraintController$track$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConstraintChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/constraints/controllers/ConstraintController$track$1$listener$1;->this$0:Landroidx/work/impl/constraints/controllers/ConstraintController;

    .line 49
    invoke-virtual {v0, p1}, Landroidx/work/impl/constraints/controllers/ConstraintController;->isConstrained(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 50
    new-instance p1, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;

    iget-object v0, p0, Landroidx/work/impl/constraints/controllers/ConstraintController$track$1$listener$1;->this$0:Landroidx/work/impl/constraints/controllers/ConstraintController;

    invoke-virtual {v0}, Landroidx/work/impl/constraints/controllers/ConstraintController;->getReason()I

    move-result v0

    invoke-direct {p1, v0}, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;-><init>(I)V

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsMet;->INSTANCE:Landroidx/work/impl/constraints/ConstraintsState$ConstraintsMet;

    :goto_0
    iget-object v0, p0, Landroidx/work/impl/constraints/controllers/ConstraintController$track$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 51
    invoke-interface {v0}, Lkotlinx/coroutines/channels/ProducerScope;->getChannel()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
