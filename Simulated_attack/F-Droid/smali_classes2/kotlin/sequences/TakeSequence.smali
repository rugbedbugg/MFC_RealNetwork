.class public final Lkotlin/sequences/TakeSequence;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lkotlin/sequences/Sequence;
.implements Lkotlin/sequences/DropTakeSequence;


# instance fields
.field private final count:I

.field private final sequence:Lkotlin/sequences/Sequence;


# direct methods
.method public constructor <init>(Lkotlin/sequences/Sequence;I)V
    .locals 1

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/sequences/TakeSequence;->sequence:Lkotlin/sequences/Sequence;

    iput p2, p0, Lkotlin/sequences/TakeSequence;->count:I

    if-ltz p2, :cond_0

    return-void

    .line 403
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "count must be non-negative, but was "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static final synthetic access$getCount$p(Lkotlin/sequences/TakeSequence;)I
    .locals 0

    .line 397
    iget p0, p0, Lkotlin/sequences/TakeSequence;->count:I

    return p0
.end method

.method public static final synthetic access$getSequence$p(Lkotlin/sequences/TakeSequence;)Lkotlin/sequences/Sequence;
    .locals 0

    .line 397
    iget-object p0, p0, Lkotlin/sequences/TakeSequence;->sequence:Lkotlin/sequences/Sequence;

    return-object p0
.end method


# virtual methods
.method public drop(I)Lkotlin/sequences/Sequence;
    .locals 3

    iget v0, p0, Lkotlin/sequences/TakeSequence;->count:I

    if-lt p1, v0, :cond_0

    .line 406
    invoke-static {}, Lkotlin/sequences/SequencesKt;->emptySequence()Lkotlin/sequences/Sequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlin/sequences/SubSequence;

    iget-object v2, p0, Lkotlin/sequences/TakeSequence;->sequence:Lkotlin/sequences/Sequence;

    invoke-direct {v1, v2, p1, v0}, Lkotlin/sequences/SubSequence;-><init>(Lkotlin/sequences/Sequence;II)V

    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 409
    new-instance v0, Lkotlin/sequences/TakeSequence$iterator$1;

    invoke-direct {v0, p0}, Lkotlin/sequences/TakeSequence$iterator$1;-><init>(Lkotlin/sequences/TakeSequence;)V

    return-object v0
.end method

.method public take(I)Lkotlin/sequences/Sequence;
    .locals 2

    iget v0, p0, Lkotlin/sequences/TakeSequence;->count:I

    if-lt p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 407
    :cond_0
    new-instance v0, Lkotlin/sequences/TakeSequence;

    iget-object v1, p0, Lkotlin/sequences/TakeSequence;->sequence:Lkotlin/sequences/Sequence;

    invoke-direct {v0, v1, p1}, Lkotlin/sequences/TakeSequence;-><init>(Lkotlin/sequences/Sequence;I)V

    :goto_0
    return-object v0
.end method
