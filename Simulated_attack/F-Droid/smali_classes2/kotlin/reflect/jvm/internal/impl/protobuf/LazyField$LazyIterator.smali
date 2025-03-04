.class Lkotlin/reflect/jvm/internal/impl/protobuf/LazyField$LazyIterator;
.super Ljava/lang/Object;
.source "LazyField.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private iterator:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyField$LazyIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyField$LazyIterator;->iterator:Ljava/util/Iterator;

    .line 136
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 127
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyField$LazyIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyField$LazyIterator;->iterator:Ljava/util/Iterator;

    .line 142
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 143
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyField$LazyIterator;->iterator:Ljava/util/Iterator;

    .line 151
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
