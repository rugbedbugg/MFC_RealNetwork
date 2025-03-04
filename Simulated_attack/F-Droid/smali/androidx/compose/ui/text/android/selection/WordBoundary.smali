.class public final Landroidx/compose/ui/text/android/selection/WordBoundary;
.super Ljava/lang/Object;
.source "WordBoundary.kt"


# instance fields
.field private final wordIterator:Landroidx/compose/ui/text/android/selection/WordIterator;


# direct methods
.method public constructor <init>(Ljava/util/Locale;Ljava/lang/CharSequence;)V
    .locals 3

    const-string v0, "locale"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroidx/compose/ui/text/android/selection/WordIterator;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, p2, v2, v1, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;-><init>(Ljava/lang/CharSequence;IILjava/util/Locale;)V

    iput-object v0, p0, Landroidx/compose/ui/text/android/selection/WordBoundary;->wordIterator:Landroidx/compose/ui/text/android/selection/WordIterator;

    return-void
.end method


# virtual methods
.method public final getWordEnd(I)I
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/android/selection/WordBoundary;->wordIterator:Landroidx/compose/ui/text/android/selection/WordIterator;

    .line 77
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->nextBoundary(I)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/ui/text/android/selection/WordBoundary;->wordIterator:Landroidx/compose/ui/text/android/selection/WordIterator;

    .line 79
    invoke-virtual {v1, v0}, Landroidx/compose/ui/text/android/selection/WordIterator;->isAfterPunctuation(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/text/android/selection/WordBoundary;->wordIterator:Landroidx/compose/ui/text/android/selection/WordIterator;

    .line 81
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->getPunctuationEnd(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/android/selection/WordBoundary;->wordIterator:Landroidx/compose/ui/text/android/selection/WordIterator;

    .line 83
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->getNextWordEndOnTwoWordBoundary(I)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    return p1
.end method

.method public final getWordStart(I)I
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/android/selection/WordBoundary;->wordIterator:Landroidx/compose/ui/text/android/selection/WordIterator;

    .line 57
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->prevBoundary(I)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/ui/text/android/selection/WordBoundary;->wordIterator:Landroidx/compose/ui/text/android/selection/WordIterator;

    .line 59
    invoke-virtual {v1, v0}, Landroidx/compose/ui/text/android/selection/WordIterator;->isOnPunctuation(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/text/android/selection/WordBoundary;->wordIterator:Landroidx/compose/ui/text/android/selection/WordIterator;

    .line 61
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->getPunctuationBeginning(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/android/selection/WordBoundary;->wordIterator:Landroidx/compose/ui/text/android/selection/WordIterator;

    .line 64
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->getPrevWordBeginningOnTwoWordsBoundary(I)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    return p1
.end method
