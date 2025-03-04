.class final Lkotlin/collections/ReversedList;
.super Lkotlin/collections/AbstractMutableList;
.source "ReversedViews.kt"


# instance fields
.field private final delegate:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Lkotlin/collections/AbstractMutableList;-><init>()V

    iput-object p1, p0, Lkotlin/collections/ReversedList;->delegate:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getDelegate$p(Lkotlin/collections/ReversedList;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lkotlin/collections/ReversedList;->delegate:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lkotlin/collections/ReversedList;->delegate:Ljava/util/List;

    .line 38
    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->access$reversePositionIndex(Ljava/util/List;I)I

    move-result p1

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lkotlin/collections/ReversedList;->delegate:Ljava/util/List;

    .line 33
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/collections/ReversedList;->delegate:Ljava/util/List;

    .line 31
    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->access$reverseElementIndex(Ljava/util/List;I)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lkotlin/collections/ReversedList;->delegate:Ljava/util/List;

    .line 30
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0}, Lkotlin/collections/ReversedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0}, Lkotlin/collections/ReversedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .line 44
    new-instance v0, Lkotlin/collections/ReversedList$listIterator$1;

    invoke-direct {v0, p0, p1}, Lkotlin/collections/ReversedList$listIterator$1;-><init>(Lkotlin/collections/ReversedList;I)V

    return-object v0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/collections/ReversedList;->delegate:Ljava/util/List;

    .line 34
    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->access$reverseElementIndex(Ljava/util/List;I)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/collections/ReversedList;->delegate:Ljava/util/List;

    .line 36
    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->access$reverseElementIndex(Ljava/util/List;I)I

    move-result p1

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
