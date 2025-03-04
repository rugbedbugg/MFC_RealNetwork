.class public final Landroidx/work/impl/constraints/WorkConstraintsTracker$track$$inlined$combine$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Zip.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/constraints/WorkConstraintsTracker$track$$inlined$combine$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $flowArray:[Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>([Lkotlinx/coroutines/flow/Flow;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/work/impl/constraints/WorkConstraintsTracker$track$$inlined$combine$1$2;->$flowArray:[Lkotlinx/coroutines/flow/Flow;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 289
    invoke-virtual {p0}, Landroidx/work/impl/constraints/WorkConstraintsTracker$track$$inlined$combine$1$2;->invoke()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/constraints/WorkConstraintsTracker$track$$inlined$combine$1$2;->$flowArray:[Lkotlinx/coroutines/flow/Flow;

    .line 291
    array-length v0, v0

    new-array v0, v0, [Landroidx/work/impl/constraints/ConstraintsState;

    return-object v0
.end method
