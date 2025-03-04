.class public abstract Landroidx/compose/ui/text/AndroidParagraph_androidKt;
.super Ljava/lang/Object;
.source "AndroidParagraph.android.kt"


# direct methods
.method public static final synthetic access$attachIndentationFixSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/text/AndroidParagraph_androidKt;->attachIndentationFixSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$numberOfLinesThatFitMaxHeight(Landroidx/compose/ui/text/android/TextLayout;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/text/AndroidParagraph_androidKt;->numberOfLinesThatFitMaxHeight(Landroidx/compose/ui/text/android/TextLayout;I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$shouldAttachIndentationFixSpan(Landroidx/compose/ui/text/TextStyle;Z)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/text/AndroidParagraph_androidKt;->shouldAttachIndentationFixSpan(Landroidx/compose/ui/text/TextStyle;Z)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$toLayoutAlign-AMY3VfE(Landroidx/compose/ui/text/style/TextAlign;)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/text/AndroidParagraph_androidKt;->toLayoutAlign-AMY3VfE(Landroidx/compose/ui/text/style/TextAlign;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$toLayoutBreakStrategy-u6PBz3U(Landroidx/compose/ui/text/style/LineBreak$Strategy;)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/text/AndroidParagraph_androidKt;->toLayoutBreakStrategy-u6PBz3U(Landroidx/compose/ui/text/style/LineBreak$Strategy;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$toLayoutHyphenationFrequency-0_XeFpE(Landroidx/compose/ui/text/style/Hyphens;)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/text/AndroidParagraph_androidKt;->toLayoutHyphenationFrequency-0_XeFpE(Landroidx/compose/ui/text/style/Hyphens;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$toLayoutLineBreakStyle-4a2g8L8(Landroidx/compose/ui/text/style/LineBreak$Strictness;)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/text/AndroidParagraph_androidKt;->toLayoutLineBreakStyle-4a2g8L8(Landroidx/compose/ui/text/style/LineBreak$Strictness;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$toLayoutLineBreakWordStyle-gvcdTPQ(Landroidx/compose/ui/text/style/LineBreak$WordBreak;)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/text/AndroidParagraph_androidKt;->toLayoutLineBreakWordStyle-gvcdTPQ(Landroidx/compose/ui/text/style/LineBreak$WordBreak;)I

    move-result p0

    return p0
.end method

.method private static final attachIndentationFixSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 615
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 616
    :cond_0
    instance-of v0, p0, Landroid/text/Spannable;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/text/Spannable;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object p0, v0

    .line 617
    :goto_0
    new-instance v0, Landroidx/compose/ui/text/android/style/IndentationFixSpan;

    invoke-direct {v0}, Landroidx/compose/ui/text/android/style/IndentationFixSpan;-><init>()V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p0, v0, v1, v2}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    return-object p0
.end method

.method private static final numberOfLinesThatFitMaxHeight(Landroidx/compose/ui/text/android/TextLayout;I)I
    .locals 4

    .line 601
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLineCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 602
    invoke-virtual {p0, v1}, Landroidx/compose/ui/text/android/TextLayout;->getLineBottom(I)F

    move-result v2

    int-to-float v3, p1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 604
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLineCount()I

    move-result p0

    return p0
.end method

.method private static final shouldAttachIndentationFixSpan(Landroidx/compose/ui/text/TextStyle;Z)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 609
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextStyle;->getLetterSpacing-XSAIIZE()J

    move-result-wide v1

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/text/TextStyle;->getLetterSpacing-XSAIIZE()J

    move-result-wide v1

    sget-object p1, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    move-result p1

    if-nez p1, :cond_2

    .line 610
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextStyle;->getTextAlign-buA522U()Landroidx/compose/ui/text/style/TextAlign;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/text/TextStyle;->getTextAlign-buA522U()Landroidx/compose/ui/text/style/TextAlign;

    move-result-object p1

    sget-object v1, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextAlign$Companion;->getStart-e0LSkKk()I

    move-result v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextAlign;->unbox-impl()I

    move-result p1

    invoke-static {p1, v2}, Landroidx/compose/ui/text/style/TextAlign;->equals-impl0(II)Z

    move-result p1

    if-nez p1, :cond_2

    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextStyle;->getTextAlign-buA522U()Landroidx/compose/ui/text/style/TextAlign;

    move-result-object p0

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextAlign$Companion;->getJustify-e0LSkKk()I

    move-result p1

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/text/style/TextAlign;->unbox-impl()I

    move-result p0

    invoke-static {p0, p1}, Landroidx/compose/ui/text/style/TextAlign;->equals-impl0(II)Z

    move-result p0

    if-nez p0, :cond_2

    :goto_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private static final toLayoutAlign-AMY3VfE(Landroidx/compose/ui/text/style/TextAlign;)I
    .locals 4

    .line 554
    sget-object v0, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextAlign$Companion;->getLeft-e0LSkKk()I

    move-result v1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/style/TextAlign;->unbox-impl()I

    move-result v2

    invoke-static {v2, v1}, Landroidx/compose/ui/text/style/TextAlign;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x3

    goto :goto_5

    .line 555
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextAlign$Companion;->getRight-e0LSkKk()I

    move-result v1

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/text/style/TextAlign;->unbox-impl()I

    move-result v2

    invoke-static {v2, v1}, Landroidx/compose/ui/text/style/TextAlign;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p0, 0x4

    goto :goto_5

    .line 556
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextAlign$Companion;->getCenter-e0LSkKk()I

    move-result v1

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroidx/compose/ui/text/style/TextAlign;->unbox-impl()I

    move-result v2

    invoke-static {v2, v1}, Landroidx/compose/ui/text/style/TextAlign;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 p0, 0x2

    goto :goto_5

    .line 557
    :cond_5
    :goto_2
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextAlign$Companion;->getStart-e0LSkKk()I

    move-result v1

    const/4 v2, 0x0

    if-nez p0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Landroidx/compose/ui/text/style/TextAlign;->unbox-impl()I

    move-result v3

    invoke-static {v3, v1}, Landroidx/compose/ui/text/style/TextAlign;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_3
    move p0, v2

    goto :goto_5

    .line 558
    :cond_8
    :goto_4
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextAlign$Companion;->getEnd-e0LSkKk()I

    move-result v0

    if-nez p0, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Landroidx/compose/ui/text/style/TextAlign;->unbox-impl()I

    move-result p0

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/TextAlign;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    :goto_5
    return p0
.end method

.method private static final toLayoutBreakStrategy-u6PBz3U(Landroidx/compose/ui/text/style/LineBreak$Strategy;)I
    .locals 4

    .line 575
    sget-object v0, Landroidx/compose/ui/text/style/LineBreak$Strategy;->Companion:Landroidx/compose/ui/text/style/LineBreak$Strategy$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/LineBreak$Strategy$Companion;->getSimple-fcGXIks()I

    move-result v1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/style/LineBreak$Strategy;->unbox-impl()I

    move-result v3

    invoke-static {v3, v1}, Landroidx/compose/ui/text/style/LineBreak$Strategy;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 576
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/LineBreak$Strategy$Companion;->getHighQuality-fcGXIks()I

    move-result v1

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/text/style/LineBreak$Strategy;->unbox-impl()I

    move-result v3

    invoke-static {v3, v1}, Landroidx/compose/ui/text/style/LineBreak$Strategy;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    .line 577
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/LineBreak$Strategy$Companion;->getBalanced-fcGXIks()I

    move-result v0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroidx/compose/ui/text/style/LineBreak$Strategy;->unbox-impl()I

    move-result p0

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/LineBreak$Strategy;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 v2, 0x2

    :cond_5
    :goto_2
    return v2
.end method

.method private static final toLayoutHyphenationFrequency-0_XeFpE(Landroidx/compose/ui/text/style/Hyphens;)I
    .locals 3

    .line 564
    sget-object v0, Landroidx/compose/ui/text/style/Hyphens;->Companion:Landroidx/compose/ui/text/style/Hyphens$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/Hyphens$Companion;->getAuto-vmbZdU8()I

    move-result v1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/style/Hyphens;->unbox-impl()I

    move-result v2

    invoke-static {v2, v1}, Landroidx/compose/ui/text/style/Hyphens;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_2

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x20

    if-gt p0, v0, :cond_1

    const/4 p0, 0x2

    goto :goto_2

    :cond_1
    const/4 p0, 0x4

    goto :goto_2

    .line 569
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/Hyphens$Companion;->getNone-vmbZdU8()I

    move-result v0

    const/4 v1, 0x0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/text/style/Hyphens;->unbox-impl()I

    move-result p0

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/Hyphens;->equals-impl0(II)Z

    move-result p0

    :goto_1
    move p0, v1

    :goto_2
    return p0
.end method

.method private static final toLayoutLineBreakStyle-4a2g8L8(Landroidx/compose/ui/text/style/LineBreak$Strictness;)I
    .locals 4

    .line 584
    sget-object v0, Landroidx/compose/ui/text/style/LineBreak$Strictness;->Companion:Landroidx/compose/ui/text/style/LineBreak$Strictness$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/LineBreak$Strictness$Companion;->getDefault-usljTpc()I

    move-result v1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/style/LineBreak$Strictness;->unbox-impl()I

    move-result v3

    invoke-static {v3, v1}, Landroidx/compose/ui/text/style/LineBreak$Strictness;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    .line 585
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/LineBreak$Strictness$Companion;->getLoose-usljTpc()I

    move-result v1

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/text/style/LineBreak$Strictness;->unbox-impl()I

    move-result v3

    invoke-static {v3, v1}, Landroidx/compose/ui/text/style/LineBreak$Strictness;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    .line 586
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/LineBreak$Strictness$Companion;->getNormal-usljTpc()I

    move-result v1

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroidx/compose/ui/text/style/LineBreak$Strictness;->unbox-impl()I

    move-result v3

    invoke-static {v3, v1}, Landroidx/compose/ui/text/style/LineBreak$Strictness;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x2

    goto :goto_3

    .line 587
    :cond_5
    :goto_2
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/LineBreak$Strictness$Companion;->getStrict-usljTpc()I

    move-result v0

    if-nez p0, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Landroidx/compose/ui/text/style/LineBreak$Strictness;->unbox-impl()I

    move-result p0

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/LineBreak$Strictness;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 v2, 0x3

    :cond_7
    :goto_3
    return v2
.end method

.method private static final toLayoutLineBreakWordStyle-gvcdTPQ(Landroidx/compose/ui/text/style/LineBreak$WordBreak;)I
    .locals 4

    .line 594
    sget-object v0, Landroidx/compose/ui/text/style/LineBreak$WordBreak;->Companion:Landroidx/compose/ui/text/style/LineBreak$WordBreak$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/LineBreak$WordBreak$Companion;->getDefault-jp8hJ3c()I

    move-result v1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/style/LineBreak$WordBreak;->unbox-impl()I

    move-result v3

    invoke-static {v3, v1}, Landroidx/compose/ui/text/style/LineBreak$WordBreak;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 595
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/LineBreak$WordBreak$Companion;->getPhrase-jp8hJ3c()I

    move-result v0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/text/style/LineBreak$WordBreak;->unbox-impl()I

    move-result p0

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/LineBreak$WordBreak;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v2, 0x1

    :cond_3
    :goto_1
    return v2
.end method
