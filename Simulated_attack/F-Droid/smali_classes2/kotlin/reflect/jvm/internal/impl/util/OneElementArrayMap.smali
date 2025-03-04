.class public final Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap;
.super Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;
.source "ArrayMap.kt"


# instance fields
.field private final index:I

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap;->value:Ljava/lang/Object;

    iput p2, p0, Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap;->index:I

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1

    .line 0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap;->index:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final getIndex()I
    .locals 1

    .line 0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap;->index:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 55
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap$iterator$1;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap$iterator$1;-><init>(Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap;)V

    return-object v0
.end method

.method public set(ILjava/lang/Object;)V
    .locals 0

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
