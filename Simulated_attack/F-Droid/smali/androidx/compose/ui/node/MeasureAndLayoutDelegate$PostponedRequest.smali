.class public final Landroidx/compose/ui/node/MeasureAndLayoutDelegate$PostponedRequest;
.super Ljava/lang/Object;
.source "MeasureAndLayoutDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/node/MeasureAndLayoutDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PostponedRequest"
.end annotation


# instance fields
.field private final isForced:Z

.field private final isLookahead:Z

.field private final node:Landroidx/compose/ui/node/LayoutNode;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;ZZ)V
    .locals 1

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate$PostponedRequest;->node:Landroidx/compose/ui/node/LayoutNode;

    iput-boolean p2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate$PostponedRequest;->isLookahead:Z

    iput-boolean p3, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate$PostponedRequest;->isForced:Z

    return-void
.end method


# virtual methods
.method public final getNode()Landroidx/compose/ui/node/LayoutNode;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate$PostponedRequest;->node:Landroidx/compose/ui/node/LayoutNode;

    return-object v0
.end method

.method public final isForced()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate$PostponedRequest;->isForced:Z

    return v0
.end method

.method public final isLookahead()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate$PostponedRequest;->isLookahead:Z

    return v0
.end method
