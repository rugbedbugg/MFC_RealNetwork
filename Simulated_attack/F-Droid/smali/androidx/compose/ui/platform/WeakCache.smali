.class public final Landroidx/compose/ui/platform/WeakCache;
.super Ljava/lang/Object;
.source "WeakCache.kt"


# instance fields
.field private final referenceQueue:Ljava/lang/ref/ReferenceQueue;

.field private final values:Landroidx/compose/runtime/collection/MutableVector;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1162
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/ref/Reference;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/compose/ui/platform/WeakCache;->values:Landroidx/compose/runtime/collection/MutableVector;

    .line 30
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method private final clearWeakReferences()V
    .locals 2

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 69
    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/compose/ui/platform/WeakCache;->values:Landroidx/compose/runtime/collection/MutableVector;

    .line 72
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    :cond_1
    if-nez v0, :cond_0

    return-void
.end method


# virtual methods
.method public final pop()Ljava/lang/Object;
    .locals 2

    .line 46
    invoke-direct {p0}, Landroidx/compose/ui/platform/WeakCache;->clearWeakReferences()V

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/WeakCache;->values:Landroidx/compose/runtime/collection/MutableVector;

    .line 48
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/platform/WeakCache;->values:Landroidx/compose/runtime/collection/MutableVector;

    .line 48
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 49
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final push(Ljava/lang/Object;)V
    .locals 3

    .line 37
    invoke-direct {p0}, Landroidx/compose/ui/platform/WeakCache;->clearWeakReferences()V

    iget-object v0, p0, Landroidx/compose/ui/platform/WeakCache;->values:Landroidx/compose/runtime/collection/MutableVector;

    .line 38
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 728
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    return-void
.end method
