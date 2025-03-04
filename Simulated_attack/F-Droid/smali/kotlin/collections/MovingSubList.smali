.class public final Lkotlin/collections/MovingSubList;
.super Lkotlin/collections/AbstractList;
.source "SlidingWindow.kt"

# interfaces
.implements Ljava/util/RandomAccess;


# instance fields
.field private _size:I

.field private fromIndex:I

.field private final list:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Lkotlin/collections/AbstractList;-><init>()V

    iput-object p1, p0, Lkotlin/collections/MovingSubList;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    iget v1, p0, Lkotlin/collections/MovingSubList;->_size:I

    .line 75
    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkElementIndex$kotlin_stdlib(II)V

    iget-object v0, p0, Lkotlin/collections/MovingSubList;->list:Ljava/util/List;

    iget v1, p0, Lkotlin/collections/MovingSubList;->fromIndex:I

    add-int/2addr v1, p1

    .line 77
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSize()I
    .locals 1

    .line 0
    iget v0, p0, Lkotlin/collections/MovingSubList;->_size:I

    return v0
.end method

.method public final move(II)V
    .locals 2

    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    iget-object v1, p0, Lkotlin/collections/MovingSubList;->list:Ljava/util/List;

    .line 69
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lkotlin/collections/AbstractList$Companion;->checkRangeIndexes$kotlin_stdlib(III)V

    iput p1, p0, Lkotlin/collections/MovingSubList;->fromIndex:I

    sub-int/2addr p2, p1

    iput p2, p0, Lkotlin/collections/MovingSubList;->_size:I

    return-void
.end method
