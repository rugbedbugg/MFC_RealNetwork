.class public final Landroidx/room/InvalidationTracker$WeakObserver;
.super Landroidx/room/InvalidationTracker$Observer;
.source "InvalidationTracker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/InvalidationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WeakObserver"
.end annotation


# instance fields
.field private final delegateRef:Ljava/lang/ref/WeakReference;

.field private final tracker:Landroidx/room/InvalidationTracker;


# direct methods
.method public constructor <init>(Landroidx/room/InvalidationTracker;Landroidx/room/InvalidationTracker$Observer;)V
    .locals 1

    const-string v0, "tracker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 794
    invoke-virtual {p2}, Landroidx/room/InvalidationTracker$Observer;->getTables$room_runtime_release()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/room/InvalidationTracker$Observer;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/room/InvalidationTracker$WeakObserver;->tracker:Landroidx/room/InvalidationTracker;

    .line 795
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/room/InvalidationTracker$WeakObserver;->delegateRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onInvalidated(Ljava/util/Set;)V
    .locals 1

    const-string v0, "tables"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/InvalidationTracker$WeakObserver;->delegateRef:Ljava/lang/ref/WeakReference;

    .line 797
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/room/InvalidationTracker$Observer;

    if-nez v0, :cond_0

    iget-object p1, p0, Landroidx/room/InvalidationTracker$WeakObserver;->tracker:Landroidx/room/InvalidationTracker;

    .line 799
    invoke-virtual {p1, p0}, Landroidx/room/InvalidationTracker;->removeObserver(Landroidx/room/InvalidationTracker$Observer;)V

    goto :goto_0

    .line 801
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/room/InvalidationTracker$Observer;->onInvalidated(Ljava/util/Set;)V

    :goto_0
    return-void
.end method
