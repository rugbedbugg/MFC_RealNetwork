.class public final Landroidx/compose/runtime/Stack;
.super Ljava/lang/Object;
.source "Stack.kt"


# instance fields
.field private final backing:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final getSize()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final isNotEmpty()Z
    .locals 1

    .line 30
    invoke-virtual {p0}, Landroidx/compose/runtime/Stack;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final peek()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p0}, Landroidx/compose/runtime/Stack;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final peek(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final pop()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {p0}, Landroidx/compose/runtime/Stack;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final push(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
