.class final Landroidx/compose/ui/node/NodeCoordinator$hit$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NodeCoordinator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/node/NodeCoordinator;->hit-1hIXUjU(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $hitTestResult:Landroidx/compose/ui/node/HitTestResult;

.field final synthetic $hitTestSource:Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;

.field final synthetic $isInLayer:Z

.field final synthetic $isTouchEvent:Z

.field final synthetic $pointerPosition:J

.field final synthetic $this_hit:Landroidx/compose/ui/Modifier$Node;

.field final synthetic this$0:Landroidx/compose/ui/node/NodeCoordinator;


# direct methods
.method constructor <init>(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator$hit$1;->this$0:Landroidx/compose/ui/node/NodeCoordinator;

    iput-object p2, p0, Landroidx/compose/ui/node/NodeCoordinator$hit$1;->$this_hit:Landroidx/compose/ui/Modifier$Node;

    iput-object p3, p0, Landroidx/compose/ui/node/NodeCoordinator$hit$1;->$hitTestSource:Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;

    iput-wide p4, p0, Landroidx/compose/ui/node/NodeCoordinator$hit$1;->$pointerPosition:J

    iput-object p6, p0, Landroidx/compose/ui/node/NodeCoordinator$hit$1;->$hitTestResult:Landroidx/compose/ui/node/HitTestResult;

    iput-boolean p7, p0, Landroidx/compose/ui/node/NodeCoordinator$hit$1;->$isTouchEvent:Z

    iput-boolean p8, p0, Landroidx/compose/ui/node/NodeCoordinator$hit$1;->$isInLayer:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 595
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator$hit$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 8

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator$hit$1;->this$0:Landroidx/compose/ui/node/NodeCoordinator;

    iget-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator$hit$1;->$this_hit:Landroidx/compose/ui/Modifier$Node;

    iget-object v2, p0, Landroidx/compose/ui/node/NodeCoordinator$hit$1;->$hitTestSource:Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;

    .line 596
    invoke-interface {v2}, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;->entityType-OLwlOKw()I

    move-result v2

    const/4 v3, 0x2

    .line 72
    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v3

    .line 596
    invoke-static {v1, v2, v3}, Landroidx/compose/ui/node/NodeCoordinatorKt;->access$nextUntil-hw7D004(Landroidx/compose/ui/node/DelegatableNode;II)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/ui/node/NodeCoordinator$hit$1;->$hitTestSource:Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;

    iget-wide v3, p0, Landroidx/compose/ui/node/NodeCoordinator$hit$1;->$pointerPosition:J

    iget-object v5, p0, Landroidx/compose/ui/node/NodeCoordinator$hit$1;->$hitTestResult:Landroidx/compose/ui/node/HitTestResult;

    iget-boolean v6, p0, Landroidx/compose/ui/node/NodeCoordinator$hit$1;->$isTouchEvent:Z

    iget-boolean v7, p0, Landroidx/compose/ui/node/NodeCoordinator$hit$1;->$isInLayer:Z

    .line 597
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/node/NodeCoordinator;->access$hit-1hIXUjU(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    return-void
.end method
