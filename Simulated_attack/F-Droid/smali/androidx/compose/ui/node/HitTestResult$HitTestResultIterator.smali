.class final Landroidx/compose/ui/node/HitTestResult$HitTestResultIterator;
.super Ljava/lang/Object;
.source "HitTestResult.kt"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/node/HitTestResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HitTestResultIterator"
.end annotation


# instance fields
.field private index:I

.field private final maxIndex:I

.field private final minIndex:I

.field final synthetic this$0:Landroidx/compose/ui/node/HitTestResult;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/HitTestResult;III)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/node/HitTestResult$HitTestResultIterator;->this$0:Landroidx/compose/ui/node/HitTestResult;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroidx/compose/ui/node/HitTestResult$HitTestResultIterator;->index:I

    iput p3, p0, Landroidx/compose/ui/node/HitTestResult$HitTestResultIterator;->minIndex:I

    iput p4, p0, Landroidx/compose/ui/node/HitTestResult$HitTestResultIterator;->maxIndex:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/node/HitTestResult;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    .line 246
    invoke-virtual {p1}, Landroidx/compose/ui/node/HitTestResult;->size()I

    move-result p4

    .line 243
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/node/HitTestResult$HitTestResultIterator;-><init>(Landroidx/compose/ui/node/HitTestResult;III)V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 1

    .line 0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasNext()Z
    .locals 2

    .line 0
    iget v0, p0, Landroidx/compose/ui/node/HitTestResult$HitTestResultIterator;->index:I

    iget v1, p0, Landroidx/compose/ui/node/HitTestResult$HitTestResultIterator;->maxIndex:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 2

    .line 0
    iget v0, p0, Landroidx/compose/ui/node/HitTestResult$HitTestResultIterator;->index:I

    iget v1, p0, Landroidx/compose/ui/node/HitTestResult$HitTestResultIterator;->minIndex:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Landroidx/compose/ui/Modifier$Node;
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/node/HitTestResult$HitTestResultIterator;->this$0:Landroidx/compose/ui/node/HitTestResult;

    .line 253
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResult;->access$getValues$p(Landroidx/compose/ui/node/HitTestResult;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/compose/ui/node/HitTestResult$HitTestResultIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/compose/ui/node/HitTestResult$HitTestResultIterator;->index:I

    aget-object v0, v0, v1

    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.Modifier.Node"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 243
    invoke-virtual {p0}, Landroidx/compose/ui/node/HitTestResult$HitTestResultIterator;->next()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 2

    .line 0
    iget v0, p0, Landroidx/compose/ui/node/HitTestResult$HitTestResultIterator;->index:I

    iget v1, p0, Landroidx/compose/ui/node/HitTestResult$HitTestResultIterator;->minIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public previous()Landroidx/compose/ui/Modifier$Node;
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/HitTestResult$HitTestResultIterator;->this$0:Landroidx/compose/ui/node/HitTestResult;

    .line 258
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResult;->access$getValues$p(Landroidx/compose/ui/node/HitTestResult;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/compose/ui/node/HitTestResult$HitTestResultIterator;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/compose/ui/node/HitTestResult$HitTestResultIterator;->index:I

    aget-object v0, v0, v1

    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.Modifier.Node"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    return-object v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .line 243
    invoke-virtual {p0}, Landroidx/compose/ui/node/HitTestResult$HitTestResultIterator;->previous()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 2

    .line 0
    iget v0, p0, Landroidx/compose/ui/node/HitTestResult$HitTestResultIterator;->index:I

    iget v1, p0, Landroidx/compose/ui/node/HitTestResult$HitTestResultIterator;->minIndex:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 1

    .line 0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
