.class public final Landroidx/compose/foundation/gestures/DraggableElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "Draggable.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u00ad\u0001\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\t0\u0010\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\t\u0012\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019\u0012\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\t0\u001c\u0012(\u0010#\u001a$\u0008\u0001\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020!\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\"\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u001f\u0012(\u0010&\u001a$\u0008\u0001\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020%\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\"\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u001f\u0012\u0006\u0010\'\u001a\u00020\t\u00f8\u0001\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008(\u0010)J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0013\u0010\n\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0096\u0002J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016R\u0014\u0010\u000e\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR \u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\t0\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0015\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\t0\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR<\u0010#\u001a$\u0008\u0001\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020!\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\"\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u001f8\u0002X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0000\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R<\u0010&\u001a$\u0008\u0001\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020%\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\"\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u001f8\u0002X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0000\u00a2\u0006\u0006\n\u0004\u0008&\u0010$R\u0014\u0010\'\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010\u0018\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006*"
    }
    d2 = {
        "Landroidx/compose/foundation/gestures/DraggableElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/foundation/gestures/DraggableNode;",
        "create",
        "node",
        "",
        "update",
        "",
        "other",
        "",
        "equals",
        "",
        "hashCode",
        "Landroidx/compose/foundation/gestures/DraggableState;",
        "state",
        "Landroidx/compose/foundation/gestures/DraggableState;",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/input/pointer/PointerInputChange;",
        "canDrag",
        "Lkotlin/jvm/functions/Function1;",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "enabled",
        "Z",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "Lkotlin/Function0;",
        "startDragImmediately",
        "Lkotlin/jvm/functions/Function0;",
        "Lkotlin/Function3;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Landroidx/compose/ui/geometry/Offset;",
        "Lkotlin/coroutines/Continuation;",
        "onDragStarted",
        "Lkotlin/jvm/functions/Function3;",
        "Landroidx/compose/ui/unit/Velocity;",
        "onDragStopped",
        "reverseDirection",
        "<init>",
        "(Landroidx/compose/foundation/gestures/DraggableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)V",
        "foundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final canDrag:Lkotlin/jvm/functions/Function1;

.field private final enabled:Z

.field private final interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field private final onDragStarted:Lkotlin/jvm/functions/Function3;

.field private final onDragStopped:Lkotlin/jvm/functions/Function3;

.field private final orientation:Landroidx/compose/foundation/gestures/Orientation;

.field private final reverseDirection:Z

.field private final startDragImmediately:Lkotlin/jvm/functions/Function0;

.field private final state:Landroidx/compose/foundation/gestures/DraggableState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/DraggableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "canDrag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orientation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startDragImmediately"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDragStarted"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDragStopped"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->state:Landroidx/compose/foundation/gestures/DraggableState;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/DraggableElement;->canDrag:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/DraggableElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iput-boolean p4, p0, Landroidx/compose/foundation/gestures/DraggableElement;->enabled:Z

    iput-object p5, p0, Landroidx/compose/foundation/gestures/DraggableElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p6, p0, Landroidx/compose/foundation/gestures/DraggableElement;->startDragImmediately:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Landroidx/compose/foundation/gestures/DraggableElement;->onDragStarted:Lkotlin/jvm/functions/Function3;

    iput-object p8, p0, Landroidx/compose/foundation/gestures/DraggableElement;->onDragStopped:Lkotlin/jvm/functions/Function3;

    iput-boolean p9, p0, Landroidx/compose/foundation/gestures/DraggableElement;->reverseDirection:Z

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/gestures/DraggableNode;
    .locals 11

    .line 210
    new-instance v10, Landroidx/compose/foundation/gestures/DraggableNode;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->state:Landroidx/compose/foundation/gestures/DraggableState;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/DraggableElement;->canDrag:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Landroidx/compose/foundation/gestures/DraggableElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iget-boolean v4, p0, Landroidx/compose/foundation/gestures/DraggableElement;->enabled:Z

    iget-object v5, p0, Landroidx/compose/foundation/gestures/DraggableElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v6, p0, Landroidx/compose/foundation/gestures/DraggableElement;->startDragImmediately:Lkotlin/jvm/functions/Function0;

    iget-object v7, p0, Landroidx/compose/foundation/gestures/DraggableElement;->onDragStarted:Lkotlin/jvm/functions/Function3;

    iget-object v8, p0, Landroidx/compose/foundation/gestures/DraggableElement;->onDragStopped:Lkotlin/jvm/functions/Function3;

    iget-boolean v9, p0, Landroidx/compose/foundation/gestures/DraggableElement;->reverseDirection:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/gestures/DraggableNode;-><init>(Landroidx/compose/foundation/gestures/DraggableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)V

    return-object v10
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 1

    .line 199
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DraggableElement;->create()Landroidx/compose/foundation/gestures/DraggableNode;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    .line 238
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Landroidx/compose/foundation/gestures/DraggableElement;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type androidx.compose.foundation.gestures.DraggableElement"

    .line 240
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/foundation/gestures/DraggableElement;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->state:Landroidx/compose/foundation/gestures/DraggableState;

    .line 242
    iget-object v3, p1, Landroidx/compose/foundation/gestures/DraggableElement;->state:Landroidx/compose/foundation/gestures/DraggableState;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->canDrag:Lkotlin/jvm/functions/Function1;

    .line 243
    iget-object v3, p1, Landroidx/compose/foundation/gestures/DraggableElement;->canDrag:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 244
    iget-object v3, p1, Landroidx/compose/foundation/gestures/DraggableElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->enabled:Z

    .line 245
    iget-boolean v3, p1, Landroidx/compose/foundation/gestures/DraggableElement;->enabled:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 246
    iget-object v3, p1, Landroidx/compose/foundation/gestures/DraggableElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->startDragImmediately:Lkotlin/jvm/functions/Function0;

    .line 247
    iget-object v3, p1, Landroidx/compose/foundation/gestures/DraggableElement;->startDragImmediately:Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->onDragStarted:Lkotlin/jvm/functions/Function3;

    .line 248
    iget-object v3, p1, Landroidx/compose/foundation/gestures/DraggableElement;->onDragStarted:Lkotlin/jvm/functions/Function3;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->onDragStopped:Lkotlin/jvm/functions/Function3;

    .line 249
    iget-object v3, p1, Landroidx/compose/foundation/gestures/DraggableElement;->onDragStopped:Lkotlin/jvm/functions/Function3;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->reverseDirection:Z

    .line 250
    iget-boolean p1, p1, Landroidx/compose/foundation/gestures/DraggableElement;->reverseDirection:Z

    if-eq v1, p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableElement;->state:Landroidx/compose/foundation/gestures/DraggableState;

    .line 256
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->canDrag:Lkotlin/jvm/functions/Function1;

    .line 257
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 258
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->enabled:Z

    .line 259
    invoke-static {v1}, Landroidx/compose/foundation/ClickableElement$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v1, :cond_0

    .line 260
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->startDragImmediately:Lkotlin/jvm/functions/Function0;

    .line 261
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->onDragStarted:Lkotlin/jvm/functions/Function3;

    .line 262
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->onDragStopped:Lkotlin/jvm/functions/Function3;

    .line 263
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->reverseDirection:Z

    .line 264
    invoke-static {v1}, Landroidx/compose/foundation/ClickableElement$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public update(Landroidx/compose/foundation/gestures/DraggableNode;)V
    .locals 11

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/compose/foundation/gestures/DraggableElement;->state:Landroidx/compose/foundation/gestures/DraggableState;

    iget-object v3, p0, Landroidx/compose/foundation/gestures/DraggableElement;->canDrag:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Landroidx/compose/foundation/gestures/DraggableElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iget-boolean v5, p0, Landroidx/compose/foundation/gestures/DraggableElement;->enabled:Z

    iget-object v6, p0, Landroidx/compose/foundation/gestures/DraggableElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v7, p0, Landroidx/compose/foundation/gestures/DraggableElement;->startDragImmediately:Lkotlin/jvm/functions/Function0;

    iget-object v8, p0, Landroidx/compose/foundation/gestures/DraggableElement;->onDragStarted:Lkotlin/jvm/functions/Function3;

    iget-object v9, p0, Landroidx/compose/foundation/gestures/DraggableElement;->onDragStopped:Lkotlin/jvm/functions/Function3;

    iget-boolean v10, p0, Landroidx/compose/foundation/gestures/DraggableElement;->reverseDirection:Z

    move-object v1, p1

    .line 223
    invoke-virtual/range {v1 .. v10}, Landroidx/compose/foundation/gestures/DraggableNode;->update(Landroidx/compose/foundation/gestures/DraggableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 199
    check-cast p1, Landroidx/compose/foundation/gestures/DraggableNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/DraggableElement;->update(Landroidx/compose/foundation/gestures/DraggableNode;)V

    return-void
.end method
