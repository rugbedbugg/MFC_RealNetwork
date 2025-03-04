.class public abstract Lio/ktor/utils/io/pool/DefaultPool;
.super Ljava/lang/Object;
.source "DefaultPool.kt"

# interfaces
.implements Lio/ktor/utils/io/pool/ObjectPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/utils/io/pool/DefaultPool$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/utils/io/pool/DefaultPool$Companion;

.field private static final Top:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;


# instance fields
.field private final capacity:I

.field private final instances:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field private final maxIndex:I

.field private final next:[I

.field private final shift:I

.field private volatile top:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/utils/io/pool/DefaultPool$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/utils/io/pool/DefaultPool$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/utils/io/pool/DefaultPool;->Companion:Lio/ktor/utils/io/pool/DefaultPool$Companion;

    .line 111
    sget-object v0, Lio/ktor/utils/io/pool/DefaultPool$Companion$Top$1;->INSTANCE:Lio/ktor/utils/io/pool/DefaultPool$Companion$Top$1;

    const-class v1, Lio/ktor/utils/io/pool/DefaultPool;

    .line 7
    invoke-interface {v0}, Lkotlin/reflect/KCallable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    const-string v1, "newUpdater(Owner::class.java, p.name)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lio/ktor/utils/io/pool/DefaultPool;->Top:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/ktor/utils/io/pool/DefaultPool;->capacity:I

    if-lez p1, :cond_1

    const v0, 0x1fffffff

    if-gt p1, v0, :cond_0

    mul-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, -0x1

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lio/ktor/utils/io/pool/DefaultPool;->maxIndex:I

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/ktor/utils/io/pool/DefaultPool;->shift:I

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v1, p1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lio/ktor/utils/io/pool/DefaultPool;->instances:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 p1, p1, 0x1

    .line 48
    new-array p1, p1, [I

    iput-object p1, p0, Lio/ktor/utils/io/pool/DefaultPool;->next:[I

    return-void

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "capacity should be less or equal to 536870911 but it is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "capacity should be positive but it is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final synthetic access$getTop$p(Lio/ktor/utils/io/pool/DefaultPool;)J
    .locals 2

    .line 16
    iget-wide v0, p0, Lio/ktor/utils/io/pool/DefaultPool;->top:J

    return-wide v0
.end method

.method private final popTop()I
    .locals 10

    :cond_0
    iget-wide v2, p0, Lio/ktor/utils/io/pool/DefaultPool;->top:J

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x20

    shr-long v4, v2, v0

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    and-long/2addr v6, v2

    long-to-int v6, v6

    if-nez v6, :cond_2

    return v1

    :cond_2
    iget-object v1, p0, Lio/ktor/utils/io/pool/DefaultPool;->next:[I

    .line 103
    aget v1, v1, v6

    shl-long/2addr v4, v0

    int-to-long v0, v1

    or-long/2addr v4, v0

    sget-object v0, Lio/ktor/utils/io/pool/DefaultPool;->Top:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, p0

    .line 105
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method private final pushTop(I)V
    .locals 10

    if-lez p1, :cond_1

    :cond_0
    iget-wide v2, p0, Lio/ktor/utils/io/pool/DefaultPool;->top:J

    const/16 v0, 0x20

    shr-long v4, v2, v0

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    and-long/2addr v6, v2

    long-to-int v1, v6

    shl-long/2addr v4, v0

    int-to-long v6, p1

    or-long/2addr v4, v6

    iget-object v0, p0, Lio/ktor/utils/io/pool/DefaultPool;->next:[I

    .line 89
    aput v1, v0, p1

    sget-object v0, Lio/ktor/utils/io/pool/DefaultPool;->Top:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, p0

    .line 90
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 83
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index should be positive"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final tryPop()Ljava/lang/Object;
    .locals 3

    .line 78
    invoke-direct {p0}, Lio/ktor/utils/io/pool/DefaultPool;->popTop()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lio/ktor/utils/io/pool/DefaultPool;->instances:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 79
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private final tryPush(Ljava/lang/Object;)Z
    .locals 6

    .line 66
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, -0x61c88647

    mul-int/2addr v0, v1

    iget v1, p0, Lio/ktor/utils/io/pool/DefaultPool;->shift:I

    ushr-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x8

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lio/ktor/utils/io/pool/DefaultPool;->instances:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v5, 0x0

    .line 68
    invoke-static {v4, v0, v5, p1}, Lio/ktor/utils/io/pool/DefaultPool$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 69
    invoke-direct {p0, v0}, Lio/ktor/utils/io/pool/DefaultPool;->pushTop(I)V

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_1

    iget v0, p0, Lio/ktor/utils/io/pool/DefaultPool;->maxIndex:I

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method


# virtual methods
.method public final borrow()Ljava/lang/Object;
    .locals 1

    .line 51
    invoke-direct {p0}, Lio/ktor/utils/io/pool/DefaultPool;->tryPop()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lio/ktor/utils/io/pool/DefaultPool;->clearInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lio/ktor/utils/io/pool/DefaultPool;->produceInstance()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method protected clearInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public close()V
    .locals 0

    .line 16
    invoke-static {p0}, Lio/ktor/utils/io/pool/ObjectPool$DefaultImpls;->close(Lio/ktor/utils/io/pool/ObjectPool;)V

    return-void
.end method

.method public final dispose()V
    .locals 1

    .line 60
    :goto_0
    invoke-direct {p0}, Lio/ktor/utils/io/pool/DefaultPool;->tryPop()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 61
    :cond_0
    invoke-virtual {p0, v0}, Lio/ktor/utils/io/pool/DefaultPool;->disposeInstance(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected disposeInstance(Ljava/lang/Object;)V
    .locals 1

    .line 0
    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract produceInstance()Ljava/lang/Object;
.end method

.method public final recycle(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/pool/DefaultPool;->validateInstance(Ljava/lang/Object;)V

    .line 55
    invoke-direct {p0, p1}, Lio/ktor/utils/io/pool/DefaultPool;->tryPush(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lio/ktor/utils/io/pool/DefaultPool;->disposeInstance(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected validateInstance(Ljava/lang/Object;)V
    .locals 1

    .line 0
    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
