.class public final Lkotlinx/serialization/json/internal/JsonToStringWriter;
.super Ljava/lang/Object;
.source "JsonToStringWriter.kt"

# interfaces
.implements Lkotlinx/serialization/json/internal/JsonWriter;


# instance fields
.field private array:[C

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lkotlinx/serialization/json/internal/CharArrayPool;->INSTANCE:Lkotlinx/serialization/json/internal/CharArrayPool;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/CharArrayPool;->take()[C

    move-result-object v0

    iput-object v0, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->array:[C

    return-void
.end method

.method private final appendStringSlowPath(IILjava/lang/String;)V
    .locals 5

    .line 74
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-ge p1, v0, :cond_3

    const/4 v2, 0x2

    .line 79
    invoke-direct {p0, p2, v2}, Lkotlinx/serialization/json/internal/JsonToStringWriter;->ensureTotalCapacity(II)I

    move-result p2

    .line 80
    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 82
    invoke-static {}, Lkotlinx/serialization/json/internal/StringOpsKt;->getESCAPE_MARKERS()[B

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 89
    invoke-static {}, Lkotlinx/serialization/json/internal/StringOpsKt;->getESCAPE_MARKERS()[B

    move-result-object v3

    aget-byte v3, v3, v2

    if-nez v3, :cond_0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->array:[C

    add-int/lit8 v3, p2, 0x1

    int-to-char v2, v2

    .line 91
    aput-char v2, v1, p2

    :goto_1
    move p2, v3

    goto :goto_2

    :cond_0
    if-ne v3, v1, :cond_1

    .line 94
    invoke-static {}, Lkotlinx/serialization/json/internal/StringOpsKt;->getESCAPE_STRINGS()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 95
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, p2, v2}, Lkotlinx/serialization/json/internal/JsonToStringWriter;->ensureTotalCapacity(II)I

    move-result p2

    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->array:[C

    const/4 v3, 0x0

    .line 96
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4, v2, p2}, Ljava/lang/String;->getChars(II[CI)V

    .line 97
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p2, v1

    iput p2, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->size:I

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->array:[C

    const/16 v2, 0x5c

    .line 101
    aput-char v2, v1, p2

    add-int/lit8 v2, p2, 0x1

    int-to-char v3, v3

    .line 102
    aput-char v3, v1, v2

    add-int/lit8 p2, p2, 0x2

    iput p2, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->size:I

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->array:[C

    add-int/lit8 v3, p2, 0x1

    int-to-char v2, v2

    .line 108
    aput-char v2, v1, p2

    goto :goto_1

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 111
    :cond_3
    invoke-direct {p0, p2, v1}, Lkotlinx/serialization/json/internal/JsonToStringWriter;->ensureTotalCapacity(II)I

    move-result p1

    iget-object p2, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->array:[C

    add-int/lit8 p3, p1, 0x1

    const/16 v0, 0x22

    .line 112
    aput-char v0, p2, p1

    iput p3, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->size:I

    return-void
.end method

.method private final ensureAdditionalCapacity(I)V
    .locals 1

    iget v0, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->size:I

    .line 125
    invoke-direct {p0, v0, p1}, Lkotlinx/serialization/json/internal/JsonToStringWriter;->ensureTotalCapacity(II)I

    return-void
.end method

.method private final ensureTotalCapacity(II)I
    .locals 2

    add-int/2addr p2, p1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->array:[C

    .line 131
    array-length v1, v0

    if-gt v1, p2, :cond_0

    mul-int/lit8 v1, p1, 0x2

    .line 132
    invoke-static {p2, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p2

    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p2

    const-string v0, "copyOf(this, newSize)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->array:[C

    :cond_0
    return p1
.end method


# virtual methods
.method public release()V
    .locals 2

    .line 117
    sget-object v0, Lkotlinx/serialization/json/internal/CharArrayPool;->INSTANCE:Lkotlinx/serialization/json/internal/CharArrayPool;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->array:[C

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/CharArrayPool;->release([C)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->array:[C

    const/4 v2, 0x0

    iget v3, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->size:I

    .line 121
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public write(Ljava/lang/String;)V
    .locals 5

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/JsonToStringWriter;->ensureAdditionalCapacity(I)V

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->array:[C

    iget v2, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->size:I

    const/4 v3, 0x0

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    iget p1, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->size:I

    return-void
.end method

.method public writeChar(C)V
    .locals 3

    const/4 v0, 0x1

    .line 38
    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/JsonToStringWriter;->ensureAdditionalCapacity(I)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->array:[C

    iget v1, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->size:I

    .line 39
    aput-char p1, v0, v1

    return-void
.end method

.method public writeLong(J)V
    .locals 0

    .line 34
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/JsonToStringWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public writeQuoted(Ljava/lang/String;)V
    .locals 7

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/JsonToStringWriter;->ensureAdditionalCapacity(I)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->array:[C

    iget v1, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->size:I

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x22

    .line 54
    aput-char v3, v0, v1

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x0

    .line 56
    invoke-virtual {p1, v4, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v1, v2

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_1

    .line 58
    aget-char v5, v0, v4

    .line 60
    invoke-static {}, Lkotlinx/serialization/json/internal/StringOpsKt;->getESCAPE_MARKERS()[B

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_0

    invoke-static {}, Lkotlinx/serialization/json/internal/StringOpsKt;->getESCAPE_MARKERS()[B

    move-result-object v6

    aget-byte v5, v6, v5

    if-eqz v5, :cond_0

    sub-int v0, v4, v2

    .line 62
    invoke-direct {p0, v0, v4, p1}, Lkotlinx/serialization/json/internal/JsonToStringWriter;->appendStringSlowPath(IILjava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, v1, 0x1

    .line 68
    aput-char v3, v0, v1

    iput p1, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->size:I

    return-void
.end method
