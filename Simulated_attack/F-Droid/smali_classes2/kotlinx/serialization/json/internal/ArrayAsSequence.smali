.class public final Lkotlinx/serialization/json/internal/ArrayAsSequence;
.super Ljava/lang/Object;
.source "JsonLexer.kt"

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field private final buffer:[C

.field private length:I


# direct methods
.method public constructor <init>([C)V
    .locals 1

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/ArrayAsSequence;->buffer:[C

    .line 18
    array-length p1, p1

    iput p1, p0, Lkotlinx/serialization/json/internal/ArrayAsSequence;->length:I

    return-void
.end method


# virtual methods
.method public final bridge charAt(I)C
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->get(I)C

    move-result p1

    return p1
.end method

.method public get(I)C
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/ArrayAsSequence;->buffer:[C

    .line 20
    aget-char p1, v0, p1

    return p1
.end method

.method public final getBuffer()[C
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/ArrayAsSequence;->buffer:[C

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 0
    iget v0, p0, Lkotlinx/serialization/json/internal/ArrayAsSequence;->length:I

    return v0
.end method

.method public final bridge length()I
    .locals 1

    .line 17
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->getLength()I

    move-result v0

    return v0
.end method

.method public setLength(I)V
    .locals 0

    .line 0
    iput p1, p0, Lkotlinx/serialization/json/internal/ArrayAsSequence;->length:I

    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lkotlinx/serialization/json/internal/ArrayAsSequence;->buffer:[C

    .line 23
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->length()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v0, p1, p2}, Lkotlin/text/StringsKt;->concatToString([CII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final substring(II)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lkotlinx/serialization/json/internal/ArrayAsSequence;->buffer:[C

    .line 27
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->length()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v0, p1, p2}, Lkotlin/text/StringsKt;->concatToString([CII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final trim(I)V
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/ArrayAsSequence;->buffer:[C

    .line 31
    array-length v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->setLength(I)V

    return-void
.end method
