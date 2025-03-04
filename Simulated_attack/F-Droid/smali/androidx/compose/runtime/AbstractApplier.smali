.class public abstract Landroidx/compose/runtime/AbstractApplier;
.super Ljava/lang/Object;
.source "Applier.kt"

# interfaces
.implements Landroidx/compose/runtime/Applier;


# instance fields
.field private current:Ljava/lang/Object;

.field private final root:Ljava/lang/Object;

.field private final stack:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/AbstractApplier;->root:Ljava/lang/Object;

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/AbstractApplier;->stack:Ljava/util/List;

    iput-object p1, p0, Landroidx/compose/runtime/AbstractApplier;->current:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/AbstractApplier;->stack:Ljava/util/List;

    .line 211
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroidx/compose/runtime/AbstractApplier;->root:Ljava/lang/Object;

    .line 212
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/AbstractApplier;->setCurrent(Ljava/lang/Object;)V

    .line 213
    invoke-virtual {p0}, Landroidx/compose/runtime/AbstractApplier;->onClear()V

    return-void
.end method

.method public down(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/AbstractApplier;->stack:Ljava/util/List;

    .line 201
    invoke-virtual {p0}, Landroidx/compose/runtime/AbstractApplier;->getCurrent()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/AbstractApplier;->setCurrent(Ljava/lang/Object;)V

    return-void
.end method

.method public getCurrent()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/runtime/AbstractApplier;->current:Ljava/lang/Object;

    return-object v0
.end method

.method public final getRoot()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/runtime/AbstractApplier;->root:Ljava/lang/Object;

    return-object v0
.end method

.method public synthetic onBeginChanges()V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/compose/runtime/Applier$-CC;->$default$onBeginChanges(Landroidx/compose/runtime/Applier;)V

    return-void
.end method

.method protected abstract onClear()V
.end method

.method public synthetic onEndChanges()V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/compose/runtime/Applier$-CC;->$default$onEndChanges(Landroidx/compose/runtime/Applier;)V

    return-void
.end method

.method protected setCurrent(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/runtime/AbstractApplier;->current:Ljava/lang/Object;

    return-void
.end method

.method public up()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/AbstractApplier;->stack:Ljava/util/List;

    .line 206
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/AbstractApplier;->stack:Ljava/util/List;

    .line 207
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/AbstractApplier;->setCurrent(Ljava/lang/Object;)V

    return-void

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
