.class public final Landroidx/compose/runtime/OffsetApplier;
.super Ljava/lang/Object;
.source "Applier.kt"

# interfaces
.implements Landroidx/compose/runtime/Applier;


# instance fields
.field private final applier:Landroidx/compose/runtime/Applier;

.field private nesting:I

.field private final offset:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/Applier;I)V
    .locals 1

    const-string v0, "applier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Landroidx/compose/runtime/Applier;

    iput p2, p0, Landroidx/compose/runtime/OffsetApplier;->offset:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const-string v0, "Clear is not valid on OffsetApplier"

    .line 4550
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public down(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    iget-object v0, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Landroidx/compose/runtime/Applier;

    .line 259
    invoke-interface {v0, p1}, Landroidx/compose/runtime/Applier;->down(Ljava/lang/Object;)V

    return-void
.end method

.method public getCurrent()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Landroidx/compose/runtime/Applier;

    .line 255
    invoke-interface {v0}, Landroidx/compose/runtime/Applier;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public insertBottomUp(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Landroidx/compose/runtime/Applier;

    iget v1, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    if-nez v1, :cond_0

    iget v1, p0, Landroidx/compose/runtime/OffsetApplier;->offset:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr p1, v1

    .line 273
    invoke-interface {v0, p1, p2}, Landroidx/compose/runtime/Applier;->insertBottomUp(ILjava/lang/Object;)V

    return-void
.end method

.method public insertTopDown(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Landroidx/compose/runtime/Applier;

    iget v1, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    if-nez v1, :cond_0

    iget v1, p0, Landroidx/compose/runtime/OffsetApplier;->offset:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr p1, v1

    .line 269
    invoke-interface {v0, p1, p2}, Landroidx/compose/runtime/Applier;->insertTopDown(ILjava/lang/Object;)V

    return-void
.end method

.method public move(III)V
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/runtime/OffsetApplier;->offset:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Landroidx/compose/runtime/Applier;

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    .line 282
    invoke-interface {v1, p1, p2, p3}, Landroidx/compose/runtime/Applier;->move(III)V

    return-void
.end method

.method public synthetic onBeginChanges()V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/compose/runtime/Applier$-CC;->$default$onBeginChanges(Landroidx/compose/runtime/Applier;)V

    return-void
.end method

.method public synthetic onEndChanges()V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/compose/runtime/Applier$-CC;->$default$onEndChanges(Landroidx/compose/runtime/Applier;)V

    return-void
.end method

.method public remove(II)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Landroidx/compose/runtime/Applier;

    iget v1, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    if-nez v1, :cond_0

    iget v1, p0, Landroidx/compose/runtime/OffsetApplier;->offset:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr p1, v1

    .line 277
    invoke-interface {v0, p1, p2}, Landroidx/compose/runtime/Applier;->remove(II)V

    return-void
.end method

.method public up()V
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    iget-object v0, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Landroidx/compose/runtime/Applier;

    .line 265
    invoke-interface {v0}, Landroidx/compose/runtime/Applier;->up()V

    return-void

    :cond_1
    const-string v0, "OffsetApplier up called with no corresponding down"

    .line 4550
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method
