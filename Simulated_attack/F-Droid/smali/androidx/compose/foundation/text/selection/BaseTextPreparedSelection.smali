.class public abstract Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
.super Ljava/lang/Object;
.source "TextPreparedSelection.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection$Companion;


# instance fields
.field private annotatedString:Landroidx/compose/ui/text/AnnotatedString;

.field private final layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

.field private final offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

.field private final originalSelection:J

.field private final originalText:Landroidx/compose/ui/text/AnnotatedString;

.field private selection:J

.field private final state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->Companion:Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection$Companion;

    return-void
.end method

.method private constructor <init>(Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;)V
    .locals 1

    const-string v0, "originalText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offsetMapping"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->originalText:Landroidx/compose/ui/text/AnnotatedString;

    iput-wide p2, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->originalSelection:J

    iput-object p4, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    iput-object p5, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    iput-object p6, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    iput-wide p2, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;-><init>(Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;)V

    return-void
.end method

.method private final charOffset(I)I
    .locals 1

    .line 346
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p1

    return p1
.end method

.method private final getLineEndByOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I
    .locals 2

    .line 296
    invoke-virtual {p1, p2}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result p2

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    const/4 v1, 0x1

    .line 297
    invoke-virtual {p1, p2, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineEnd(IZ)I

    move-result p1

    invoke-interface {v0, p1}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    move-result p1

    return p1
.end method

.method static synthetic getLineEndByOffsetForLayout$default(Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 294
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->transformedMaxOffset()I

    move-result p2

    .line 293
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getLineEndByOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getLineEndByOffsetForLayout"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final getLineStartByOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I
    .locals 1

    .line 289
    invoke-virtual {p1, p2}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result p2

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 290
    invoke-virtual {p1, p2}, Landroidx/compose/ui/text/TextLayoutResult;->getLineStart(I)I

    move-result p1

    invoke-interface {v0, p1}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    move-result p1

    return p1
.end method

.method static synthetic getLineStartByOffsetForLayout$default(Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 287
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->transformedMinOffset()I

    move-result p2

    .line 286
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getLineStartByOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getLineStartByOffsetForLayout"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final getNextWordOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I
    .locals 3

    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->originalText:Landroidx/compose/ui/text/AnnotatedString;

    .line 261
    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object p1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->originalText:Landroidx/compose/ui/text/AnnotatedString;

    .line 262
    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    move-result p1

    return p1

    .line 264
    :cond_0
    invoke-direct {p0, p2}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->charOffset(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getWordBoundary--jx7JFs(I)J

    move-result-wide v0

    .line 265
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v2

    if-gt v2, p2, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 268
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result p2

    invoke-interface {p1, p2}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    move-result p1

    return p1
.end method

.method static synthetic getNextWordOffsetForLayout$default(Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 259
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->transformedEndOffset()I

    move-result p2

    .line 258
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getNextWordOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getNextWordOffsetForLayout"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final getParagraphEnd()I
    .locals 3

    .line 350
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/StringHelpersKt;->findParagraphEnd(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method private final getParagraphStart()I
    .locals 3

    .line 348
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/StringHelpersKt;->findParagraphStart(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method private final getPrevWordOffset(Landroidx/compose/ui/text/TextLayoutResult;I)I
    .locals 3

    :goto_0
    if-gtz p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 278
    :cond_0
    invoke-direct {p0, p2}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->charOffset(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getWordBoundary--jx7JFs(I)J

    move-result-wide v0

    .line 279
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v2

    if-lt v2, p2, :cond_1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 282
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result p2

    invoke-interface {p1, p2}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    move-result p1

    return p1
.end method

.method static synthetic getPrevWordOffset$default(Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 273
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->transformedEndOffset()I

    move-result p2

    .line 272
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getPrevWordOffset(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getPrevWordOffset"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final isLtr()Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v0, :cond_0

    .line 254
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->transformedEndOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getParagraphDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 255
    :goto_0
    sget-object v1, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private final jumpByLinesOffset(Landroidx/compose/ui/text/TextLayoutResult;I)I
    .locals 5

    .line 301
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->transformedEndOffset()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 303
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->getCachedX()Ljava/lang/Float;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 304
    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->setCachedX(Ljava/lang/Float;)V

    .line 307
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result v0

    add-int/2addr v0, p2

    if-gez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 312
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineCount()I

    move-result p2

    if-lt v0, p2, :cond_2

    .line 313
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    return p1

    .line 317
    :cond_2
    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineBottom(I)F

    move-result p2

    const/4 v1, 0x1

    int-to-float v2, v1

    sub-float/2addr p2, v2

    iget-object v2, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 318
    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->getCachedX()Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v3

    .line 319
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->isLtr()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineRight(I)F

    move-result v4

    cmpl-float v4, v3, v4

    if-gez v4, :cond_4

    .line 320
    :cond_3
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->isLtr()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineLeft(I)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_5

    .line 322
    :cond_4
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineEnd(IZ)I

    move-result p1

    return p1

    .line 318
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 326
    invoke-static {v0, p2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getOffsetForPosition-k-4lQ0M(J)I

    move-result p1

    iget-object p2, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 327
    invoke-interface {p2, p1}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    move-result p1

    return p1
.end method

.method private final moveCursorNext()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 2

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 164
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getNextCharacterIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 165
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    :cond_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    .line 80
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final moveCursorNextByWord()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 195
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getNextWordOffset()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    :cond_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    .line 80
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final moveCursorPrev()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 2

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 159
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getPrecedingCharacterIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 160
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    :cond_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    .line 80
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final moveCursorPrevByWord()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 201
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getPreviousWordOffset()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    :cond_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    .line 80
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final transformedEndOffset()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    iget-wide v1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    .line 334
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v0

    return v0
.end method

.method private final transformedMaxOffset()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    iget-wide v1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    .line 342
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v0

    return v0
.end method

.method private final transformedMinOffset()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    iget-wide v1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    .line 338
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final collapseLeftOr(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 2

    const-string v0, "or"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    .line 119
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection.collapseLeftOr$lambda$4"

    .line 121
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 123
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->isLtr()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    .line 124
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    .line 126
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    :cond_2
    :goto_0
    const-string p1, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    .line 80
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final collapseRightOr(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 2

    const-string v0, "or"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    .line 135
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection.collapseRightOr$lambda$5"

    .line 137
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 139
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->isLtr()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    .line 140
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    .line 142
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    :cond_2
    :goto_0
    const-string p1, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    .line 80
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final deselect()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 2

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    .line 96
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    :cond_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    .line 80
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    return-object v0
.end method

.method public final getLineEndByOffset()Ljava/lang/Integer;
    .locals 4

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 226
    invoke-static {p0, v0, v2, v3, v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getLineEndByOffsetForLayout$default(Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public final getLineStartByOffset()Ljava/lang/Integer;
    .locals 4

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 220
    invoke-static {p0, v0, v2, v3, v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getLineStartByOffsetForLayout$default(Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public final getNextCharacterIndex()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 156
    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/StringHelpers_androidKt;->findFollowingBreak(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getNextWordOffset()Ljava/lang/Integer;
    .locals 4

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 192
    invoke-static {p0, v0, v2, v3, v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getNextWordOffsetForLayout$default(Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public final getOffsetMapping()Landroidx/compose/ui/text/input/OffsetMapping;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    return-object v0
.end method

.method public final getPrecedingCharacterIndex()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 150
    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/StringHelpers_androidKt;->findPrecedingBreak(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getPreviousWordOffset()Ljava/lang/Integer;
    .locals 4

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 198
    invoke-static {p0, v0, v2, v3, v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getPrevWordOffset$default(Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public final getSelection-d9O1mEE()J
    .locals 2

    .line 0
    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    return-wide v0
.end method

.method public final getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    return-object v0
.end method

.method public final getText$foundation_release()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 70
    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final moveCursorDownByLine()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 2

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 217
    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->jumpByLinesOffset(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    :cond_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    .line 80
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final moveCursorLeft()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 100
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->isLtr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->moveCursorPrev()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto :goto_0

    .line 103
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->moveCursorNext()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    :cond_1
    :goto_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    .line 80
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final moveCursorLeftByWord()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 177
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->isLtr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->moveCursorPrevByWord()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto :goto_0

    .line 180
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->moveCursorNextByWord()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    :cond_1
    :goto_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    .line 80
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final moveCursorNextByParagraph()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 209
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getParagraphEnd()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    :cond_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    .line 80
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final moveCursorPrevByParagraph()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 205
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getParagraphStart()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    :cond_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    .line 80
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final moveCursorRight()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 108
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->isLtr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->moveCursorNext()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto :goto_0

    .line 111
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->moveCursorPrev()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    :cond_1
    :goto_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    .line 80
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final moveCursorRightByWord()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 185
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->isLtr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->moveCursorNextByWord()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto :goto_0

    .line 188
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->moveCursorPrevByWord()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    :cond_1
    :goto_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    .line 80
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final moveCursorToEnd()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 173
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    :cond_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    .line 80
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final moveCursorToHome()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 169
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    :cond_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    .line 80
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final moveCursorToLineEnd()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 229
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getLineEndByOffset()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    :cond_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    .line 80
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final moveCursorToLineLeftSide()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 233
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->isLtr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->moveCursorToLineStart()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->moveCursorToLineEnd()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    :cond_1
    :goto_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    .line 80
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final moveCursorToLineRightSide()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 241
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->isLtr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->moveCursorToLineEnd()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->moveCursorToLineStart()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    :cond_1
    :goto_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    .line 80
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final moveCursorToLineStart()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 223
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getLineStartByOffset()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    :cond_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    .line 80
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final moveCursorUpByLine()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 2

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 213
    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->jumpByLinesOffset(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    :cond_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    .line 80
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final selectAll()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 2

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 92
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setSelection(II)V

    :cond_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    .line 80
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final selectMovement()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 3

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->originalSelection:J

    .line 250
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v0

    iget-wide v1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    :cond_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    .line 80
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method protected final setCursor(I)V
    .locals 0

    .line 84
    invoke-virtual {p0, p1, p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setSelection(II)V

    return-void
.end method

.method protected final setSelection(II)V
    .locals 0

    .line 88
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    return-void
.end method
