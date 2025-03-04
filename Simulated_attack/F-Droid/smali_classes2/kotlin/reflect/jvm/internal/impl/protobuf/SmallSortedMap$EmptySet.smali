.class abstract Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet;
.super Ljava/lang/Object;
.source "SmallSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptySet"
.end annotation


# static fields
.field private static final ITERABLE:Ljava/lang/Iterable;

.field private static final ITERATOR:Ljava/util/Iterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 591
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet;->ITERATOR:Ljava/util/Iterator;

    .line 606
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet$2;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet$2;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet;->ITERABLE:Ljava/lang/Iterable;

    return-void
.end method

.method static synthetic access$700()Ljava/util/Iterator;
    .locals 1

    .line 0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet;->ITERATOR:Ljava/util/Iterator;

    return-object v0
.end method

.method static iterable()Ljava/lang/Iterable;
    .locals 1

    .line 0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet;->ITERABLE:Ljava/lang/Iterable;

    return-object v0
.end method
