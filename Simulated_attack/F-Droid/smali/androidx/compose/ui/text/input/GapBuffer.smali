.class final Landroidx/compose/ui/text/input/GapBuffer;
.super Ljava/lang/Object;
.source "GapBuffer.kt"


# instance fields
.field private buffer:[C

.field private capacity:I

.field private gapEnd:I

.field private gapStart:I


# direct methods
.method public constructor <init>([CII)V
    .locals 1

    const-string v0, "initBuffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    array-length v0, p1

    iput v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    iput-object p1, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:[C

    iput p2, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    iput p3, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    return-void
.end method

.method private final delete(II)V
    .locals 4

    iget v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    if-ge p1, v0, :cond_0

    if-gt p2, v0, :cond_0

    sub-int v1, v0, p2

    iget-object v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:[C

    iget v3, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    sub-int/2addr v3, v1

    .line 143
    invoke-static {v2, v2, v3, p2, v0}, Lkotlin/collections/ArraysKt;->copyInto([C[CIII)[C

    iput p1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    iget p1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    goto :goto_0

    :cond_0
    if-ge p1, v0, :cond_1

    if-lt p2, v0, :cond_1

    .line 155
    invoke-direct {p0}, Landroidx/compose/ui/text/input/GapBuffer;->gapLength()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    iput p1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    goto :goto_0

    .line 175
    :cond_1
    invoke-direct {p0}, Landroidx/compose/ui/text/input/GapBuffer;->gapLength()I

    move-result v0

    add-int/2addr p1, v0

    .line 176
    invoke-direct {p0}, Landroidx/compose/ui/text/input/GapBuffer;->gapLength()I

    move-result v0

    add-int/2addr p2, v0

    iget v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    sub-int v1, p1, v0

    iget-object v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:[C

    iget v3, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    .line 178
    invoke-static {v2, v2, v3, v0, p1}, Lkotlin/collections/ArraysKt;->copyInto([C[CIII)[C

    iget p1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    iput p2, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    :goto_0
    return-void
.end method

.method private final gapLength()I
    .locals 2

    .line 0
    iget v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private final makeSureAvailableSpace(I)V
    .locals 5

    .line 98
    invoke-direct {p0}, Landroidx/compose/ui/text/input/GapBuffer;->gapLength()I

    move-result v0

    if-gt p1, v0, :cond_0

    return-void

    .line 103
    :cond_0
    invoke-direct {p0}, Landroidx/compose/ui/text/input/GapBuffer;->gapLength()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    :goto_0
    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    sub-int v1, v0, v1

    if-ge v1, p1, :cond_1

    goto :goto_0

    .line 109
    :cond_1
    new-array p1, v0, [C

    iget-object v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:[C

    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    const/4 v3, 0x0

    .line 110
    invoke-static {v1, p1, v3, v3, v2}, Lkotlin/collections/ArraysKt;->copyInto([C[CIII)[C

    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    sub-int/2addr v1, v2

    sub-int v3, v0, v1

    iget-object v4, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:[C

    add-int/2addr v1, v2

    .line 113
    invoke-static {v4, p1, v3, v2, v1}, Lkotlin/collections/ArraysKt;->copyInto([C[CIII)[C

    iput-object p1, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:[C

    iput v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    iput v3, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    return-void
.end method


# virtual methods
.method public final append(Ljava/lang/StringBuilder;)V
    .locals 3

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:[C

    const/4 v1, 0x0

    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    .line 205
    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:[C

    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    sub-int/2addr v2, v1

    .line 206
    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final get(I)C
    .locals 2

    iget v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:[C

    .line 88
    aget-char p1, v0, p1

    return p1

    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:[C

    sub-int/2addr p1, v0

    iget v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    add-int/2addr p1, v0

    .line 90
    aget-char p1, v1, p1

    return p1
.end method

.method public final length()I
    .locals 2

    iget v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 214
    invoke-direct {p0}, Landroidx/compose/ui/text/input/GapBuffer;->gapLength()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final replace(IILjava/lang/String;)V
    .locals 2

    const-string v0, "text"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroidx/compose/ui/text/input/GapBuffer;->makeSureAvailableSpace(I)V

    .line 194
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/text/input/GapBuffer;->delete(II)V

    iget-object p1, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:[C

    iget p2, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    .line 196
    invoke-static {p3, p1, p2}, Landroidx/compose/ui/text/input/GapBufferKt;->access$toCharArray(Ljava/lang/String;[CI)V

    iget p1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    .line 197
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply { append(this) }.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
