.class public final Lkotlin/collections/ReversedList$listIterator$1;
.super Ljava/lang/Object;
.source "ReversedViews.kt"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/ReversedList;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final delegateIterator:Ljava/util/ListIterator;

.field final synthetic this$0:Lkotlin/collections/ReversedList;


# direct methods
.method constructor <init>(Lkotlin/collections/ReversedList;I)V
    .locals 1

    iput-object p1, p0, Lkotlin/collections/ReversedList$listIterator$1;->this$0:Lkotlin/collections/ReversedList;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lkotlin/collections/ReversedList;->access$getDelegate$p(Lkotlin/collections/ReversedList;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->access$reversePositionIndex(Ljava/util/List;I)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lkotlin/collections/ReversedList$listIterator$1;->delegateIterator:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lkotlin/collections/ReversedList$listIterator$1;->delegateIterator:Ljava/util/ListIterator;

    .line 53
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lkotlin/collections/ReversedList$listIterator$1;->delegateIterator:Ljava/util/ListIterator;

    .line 56
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lkotlin/collections/ReversedList$listIterator$1;->delegateIterator:Ljava/util/ListIterator;

    .line 46
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    iget-object v0, p0, Lkotlin/collections/ReversedList$listIterator$1;->delegateIterator:Ljava/util/ListIterator;

    .line 47
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/collections/ReversedList$listIterator$1;->delegateIterator:Ljava/util/ListIterator;

    .line 48
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 2

    iget-object v0, p0, Lkotlin/collections/ReversedList$listIterator$1;->this$0:Lkotlin/collections/ReversedList;

    iget-object v1, p0, Lkotlin/collections/ReversedList$listIterator$1;->delegateIterator:Ljava/util/ListIterator;

    .line 49
    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->access$reverseIteratorIndex(Ljava/util/List;I)I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/collections/ReversedList$listIterator$1;->delegateIterator:Ljava/util/ListIterator;

    .line 50
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 2

    iget-object v0, p0, Lkotlin/collections/ReversedList$listIterator$1;->this$0:Lkotlin/collections/ReversedList;

    iget-object v1, p0, Lkotlin/collections/ReversedList$listIterator$1;->delegateIterator:Ljava/util/ListIterator;

    .line 51
    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->access$reverseIteratorIndex(Ljava/util/List;I)I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lkotlin/collections/ReversedList$listIterator$1;->delegateIterator:Ljava/util/ListIterator;

    .line 59
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lkotlin/collections/ReversedList$listIterator$1;->delegateIterator:Ljava/util/ListIterator;

    .line 60
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
