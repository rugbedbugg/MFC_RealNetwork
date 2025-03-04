.class public final Lkotlin/sequences/FlatteningSequence$iterator$1;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/sequences/FlatteningSequence;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private itemIterator:Ljava/util/Iterator;

.field private final iterator:Ljava/util/Iterator;

.field final synthetic this$0:Lkotlin/sequences/FlatteningSequence;


# direct methods
.method constructor <init>(Lkotlin/sequences/FlatteningSequence;)V
    .locals 0

    iput-object p1, p0, Lkotlin/sequences/FlatteningSequence$iterator$1;->this$0:Lkotlin/sequences/FlatteningSequence;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    invoke-static {p1}, Lkotlin/sequences/FlatteningSequence;->access$getSequence$p(Lkotlin/sequences/FlatteningSequence;)Lkotlin/sequences/Sequence;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lkotlin/sequences/FlatteningSequence$iterator$1;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method private final ensureItemIterator()Z
    .locals 4

    iget-object v0, p0, Lkotlin/sequences/FlatteningSequence$iterator$1;->itemIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    .line 307
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lkotlin/sequences/FlatteningSequence$iterator$1;->itemIterator:Ljava/util/Iterator;

    :cond_0
    iget-object v0, p0, Lkotlin/sequences/FlatteningSequence$iterator$1;->itemIterator:Ljava/util/Iterator;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lkotlin/sequences/FlatteningSequence$iterator$1;->iterator:Ljava/util/Iterator;

    .line 311
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lkotlin/sequences/FlatteningSequence$iterator$1;->iterator:Ljava/util/Iterator;

    .line 314
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lkotlin/sequences/FlatteningSequence$iterator$1;->this$0:Lkotlin/sequences/FlatteningSequence;

    .line 315
    invoke-static {v2}, Lkotlin/sequences/FlatteningSequence;->access$getIterator$p(Lkotlin/sequences/FlatteningSequence;)Lkotlin/jvm/functions/Function1;

    move-result-object v2

    iget-object v3, p0, Lkotlin/sequences/FlatteningSequence$iterator$1;->this$0:Lkotlin/sequences/FlatteningSequence;

    invoke-static {v3}, Lkotlin/sequences/FlatteningSequence;->access$getTransformer$p(Lkotlin/sequences/FlatteningSequence;)Lkotlin/jvm/functions/Function1;

    move-result-object v3

    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 316
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lkotlin/sequences/FlatteningSequence$iterator$1;->itemIterator:Ljava/util/Iterator;

    :cond_2
    return v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 303
    invoke-direct {p0}, Lkotlin/sequences/FlatteningSequence$iterator$1;->ensureItemIterator()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 297
    invoke-direct {p0}, Lkotlin/sequences/FlatteningSequence$iterator$1;->ensureItemIterator()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlin/sequences/FlatteningSequence$iterator$1;->itemIterator:Ljava/util/Iterator;

    .line 299
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 298
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
