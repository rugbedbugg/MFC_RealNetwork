.class public Lkotlin/reflect/jvm/internal/impl/protobuf/UnmodifiableLazyStringList;
.super Ljava/util/AbstractList;
.source "UnmodifiableLazyStringList.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringList;


# instance fields
.field private final list:Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringList;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringList;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/UnmodifiableLazyStringList;->list:Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringList;

    return-void
.end method

.method static synthetic access$000(Lkotlin/reflect/jvm/internal/impl/protobuf/UnmodifiableLazyStringList;)Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringList;
    .locals 0

    .line 47
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/UnmodifiableLazyStringList;->list:Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringList;

    return-object p0
.end method


# virtual methods
.method public add(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)V
    .locals 0

    .line 73
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/UnmodifiableLazyStringList;->get(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/UnmodifiableLazyStringList;->list:Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringList;

    .line 58
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getByteString(I)Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/UnmodifiableLazyStringList;->list:Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringList;

    .line 68
    invoke-interface {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringList;->getByteString(I)Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getUnderlyingElements()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/UnmodifiableLazyStringList;->list:Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringList;

    .line 183
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringList;->getUnderlyingElements()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUnmodifiableView()Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringList;
    .locals 0

    .line 0
    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 160
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/UnmodifiableLazyStringList$2;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/UnmodifiableLazyStringList$2;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/UnmodifiableLazyStringList;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .line 108
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/UnmodifiableLazyStringList$1;

    invoke-direct {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/UnmodifiableLazyStringList$1;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/UnmodifiableLazyStringList;I)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/UnmodifiableLazyStringList;->list:Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringList;

    .line 63
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
