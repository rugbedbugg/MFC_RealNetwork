.class public abstract Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;
.super Ljava/lang/Object;
.source "ResourceUtils.kt"


# static fields
.field private static final tempTypedValue:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 381
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->tempTypedValue:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private static final fontWeightOf(I)Landroidx/compose/ui/text/font/FontWeight;
    .locals 2

    const/16 v0, 0x96

    if-ltz p0, :cond_0

    if-ge p0, v0, :cond_0

    .line 240
    sget-object p0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW100()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xfa

    if-gt v0, p0, :cond_1

    if-ge p0, v1, :cond_1

    .line 241
    sget-object p0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW200()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object p0

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x15e

    if-gt v1, p0, :cond_2

    if-ge p0, v0, :cond_2

    .line 242
    sget-object p0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW300()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/16 v1, 0x1c2

    if-gt v0, p0, :cond_3

    if-ge p0, v1, :cond_3

    .line 243
    sget-object p0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW400()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/16 v0, 0x226

    if-gt v1, p0, :cond_4

    if-ge p0, v0, :cond_4

    .line 244
    sget-object p0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW500()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object p0

    goto :goto_0

    :cond_4
    const/16 v1, 0x28a

    if-gt v0, p0, :cond_5

    if-ge p0, v1, :cond_5

    .line 245
    sget-object p0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW600()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object p0

    goto :goto_0

    :cond_5
    const/16 v0, 0x2ee

    if-gt v1, p0, :cond_6

    if-ge p0, v0, :cond_6

    .line 246
    sget-object p0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW700()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object p0

    goto :goto_0

    :cond_6
    const/16 v1, 0x352

    if-gt v0, p0, :cond_7

    if-ge p0, v1, :cond_7

    .line 247
    sget-object p0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW800()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object p0

    goto :goto_0

    :cond_7
    if-gt v1, p0, :cond_8

    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_8

    .line 248
    sget-object p0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW900()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object p0

    goto :goto_0

    .line 250
    :cond_8
    sget-object p0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW400()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final parseColor-mxwnekA(Landroid/content/res/TypedArray;IJ)J
    .locals 1

    const-string v0, "$this$parseColor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroidx/core/content/res/TypedArrayKt;->getColorOrThrow(Landroid/content/res/TypedArray;I)I

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide p2

    :cond_0
    return-wide p2
.end method

.method public static synthetic parseColor-mxwnekA$default(Landroid/content/res/TypedArray;IJILjava/lang/Object;)J
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 62
    sget-object p2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide p2

    .line 60
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseColor-mxwnekA(Landroid/content/res/TypedArray;IJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final parseCornerSize(Landroid/content/res/TypedArray;I)Landroidx/compose/foundation/shape/CornerSize;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->tempTypedValue:Ljava/lang/ThreadLocal;

    .line 353
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    check-cast v1, Landroid/util/TypedValue;

    .line 354
    invoke-virtual {p0, p1, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 355
    iget v0, v1, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    const/4 p0, 0x6

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 365
    invoke-virtual {v1, p0, p0}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p0

    invoke-static {p0}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v2

    goto :goto_0

    .line 377
    :cond_2
    invoke-virtual {v1}, Landroid/util/TypedValue;->getComplexUnit()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v0, 0x0

    .line 362
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p0

    invoke-static {p0}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize(I)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v2

    goto :goto_0

    .line 359
    :cond_3
    iget p0, v1, Landroid/util/TypedValue;->data:I

    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result p0

    .line 174
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    .line 359
    invoke-static {p0}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize-0680j_4(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v2

    goto :goto_0

    .line 360
    :cond_4
    iget p0, v1, Landroid/util/TypedValue;->data:I

    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result p0

    invoke-static {p0}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v2

    :cond_5
    :goto_0
    return-object v2
.end method

.method public static final parseFontFamily(Landroid/content/res/TypedArray;I)Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->tempTypedValue:Ljava/lang/ThreadLocal;

    .line 169
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    check-cast v1, Landroid/util/TypedValue;

    .line 170
    invoke-virtual {p0, p1, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    iget p1, v1, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x3

    if-ne p1, v2, :cond_a

    .line 171
    iget-object p1, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    const-string v2, "sans-serif"

    .line 172
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    new-instance p0, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;

    sget-object p1, Landroidx/compose/ui/text/font/FontFamily;->Companion:Landroidx/compose/ui/text/font/FontFamily$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/font/FontFamily$Companion;->getSansSerif()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object p1

    invoke-direct {p0, p1, v0, v3, v0}, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;-><init>(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    move-object v0, p0

    goto/16 :goto_1

    :cond_1
    const-string v2, "sans-serif-thin"

    .line 173
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;

    sget-object p0, Landroidx/compose/ui/text/font/FontFamily;->Companion:Landroidx/compose/ui/text/font/FontFamily$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontFamily$Companion;->getSansSerif()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object p0

    sget-object p1, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getThin()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;-><init>(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;)V

    goto/16 :goto_1

    :cond_2
    const-string v2, "sans-serif-light"

    .line 174
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;

    sget-object p0, Landroidx/compose/ui/text/font/FontFamily;->Companion:Landroidx/compose/ui/text/font/FontFamily$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontFamily$Companion;->getSansSerif()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object p0

    sget-object p1, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getLight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;-><init>(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;)V

    goto/16 :goto_1

    :cond_3
    const-string v2, "sans-serif-medium"

    .line 175
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v0, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;

    sget-object p0, Landroidx/compose/ui/text/font/FontFamily;->Companion:Landroidx/compose/ui/text/font/FontFamily$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontFamily$Companion;->getSansSerif()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object p0

    sget-object p1, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getMedium()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;-><init>(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;)V

    goto/16 :goto_1

    :cond_4
    const-string v2, "sans-serif-black"

    .line 176
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v0, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;

    sget-object p0, Landroidx/compose/ui/text/font/FontFamily;->Companion:Landroidx/compose/ui/text/font/FontFamily$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontFamily$Companion;->getSansSerif()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object p0

    sget-object p1, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBlack()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;-><init>(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;)V

    goto/16 :goto_1

    :cond_5
    const-string v2, "serif"

    .line 177
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance p0, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;

    sget-object p1, Landroidx/compose/ui/text/font/FontFamily;->Companion:Landroidx/compose/ui/text/font/FontFamily$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/font/FontFamily$Companion;->getSerif()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object p1

    invoke-direct {p0, p1, v0, v3, v0}, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;-><init>(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_6
    const-string v2, "cursive"

    .line 178
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance p0, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;

    sget-object p1, Landroidx/compose/ui/text/font/FontFamily;->Companion:Landroidx/compose/ui/text/font/FontFamily$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/font/FontFamily$Companion;->getCursive()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object p1

    invoke-direct {p0, p1, v0, v3, v0}, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;-><init>(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_7
    const-string v2, "monospace"

    .line 179
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p0, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;

    sget-object p1, Landroidx/compose/ui/text/font/FontFamily;->Companion:Landroidx/compose/ui/text/font/FontFamily$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/font/FontFamily$Companion;->getMonospace()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object p1

    invoke-direct {p0, p1, v0, v3, v0}, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;-><init>(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    .line 184
    :cond_8
    iget p1, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz p1, :cond_a

    iget-object p1, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    const-string v2, "tv.string"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "res/"

    const/4 v5, 0x0

    invoke-static {p1, v4, v5, v3, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 187
    iget-object p1, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, ".xml"

    invoke-static {p1, v2, v5, v3, v0}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 188
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string p1, "resources"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, p1}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseXmlFontFamily(Landroid/content/res/Resources;I)Landroidx/compose/ui/text/font/FontFamily;

    move-result-object p0

    if-eqz p0, :cond_a

    new-instance p1, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;

    invoke-direct {p1, p0, v0, v3, v0}, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;-><init>(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, p1

    goto :goto_1

    .line 191
    :cond_9
    new-instance p0, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;

    iget v4, v1, Landroid/util/TypedValue;->resourceId:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroidx/compose/ui/text/font/FontKt;->Font-YpTlLL0$default(ILandroidx/compose/ui/text/font/FontWeight;IIILjava/lang/Object;)Landroidx/compose/ui/text/font/Font;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/ui/text/font/FontKt;->toFontFamily(Landroidx/compose/ui/text/font/Font;)Landroidx/compose/ui/text/font/FontFamily;

    move-result-object p1

    invoke-direct {p0, p1, v0, v3, v0}, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;-><init>(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_a
    :goto_1
    return-object v0
.end method

.method public static final parseShapeAppearance(Landroid/content/Context;ILandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/shape/CornerBasedShape;)Landroidx/compose/foundation/shape/CornerBasedShape;
    .locals 7

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutDirection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fallbackShape"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    sget-object v0, Lcom/google/accompanist/themeadapter/core/R$styleable;->ThemeAdapterShapeAppearance:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const-string p1, "context.obtainStyledAttr\u2026meAdapterShapeAppearance)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    sget p1, Lcom/google/accompanist/themeadapter/core/R$styleable;->ThemeAdapterShapeAppearance_cornerSize:I

    .line 299
    invoke-static {p0, p1}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseCornerSize(Landroid/content/res/TypedArray;I)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object p1

    .line 303
    sget v0, Lcom/google/accompanist/themeadapter/core/R$styleable;->ThemeAdapterShapeAppearance_cornerSizeTopLeft:I

    .line 302
    invoke-static {p0, v0}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseCornerSize(Landroid/content/res/TypedArray;I)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v0

    .line 306
    sget v1, Lcom/google/accompanist/themeadapter/core/R$styleable;->ThemeAdapterShapeAppearance_cornerSizeTopRight:I

    .line 305
    invoke-static {p0, v1}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseCornerSize(Landroid/content/res/TypedArray;I)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v1

    .line 309
    sget v2, Lcom/google/accompanist/themeadapter/core/R$styleable;->ThemeAdapterShapeAppearance_cornerSizeBottomLeft:I

    .line 308
    invoke-static {p0, v2}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseCornerSize(Landroid/content/res/TypedArray;I)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v2

    .line 312
    sget v3, Lcom/google/accompanist/themeadapter/core/R$styleable;->ThemeAdapterShapeAppearance_cornerSizeBottomRight:I

    .line 311
    invoke-static {p0, v3}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseCornerSize(Landroid/content/res/TypedArray;I)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v3

    .line 314
    sget-object v4, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne p2, v4, :cond_0

    move p2, v6

    goto :goto_0

    :cond_0
    move p2, v5

    :goto_0
    if-eqz p2, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    move-object v4, v0

    :goto_1
    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    if-eqz p2, :cond_3

    move-object v1, v3

    goto :goto_3

    :cond_3
    move-object v1, v2

    :goto_3
    if-eqz p2, :cond_4

    goto :goto_4

    :cond_4
    move-object v2, v3

    .line 324
    :goto_4
    sget p2, Lcom/google/accompanist/themeadapter/core/R$styleable;->ThemeAdapterShapeAppearance_cornerFamily:I

    invoke-virtual {p0, p2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eqz p2, :cond_e

    if-ne p2, v6, :cond_d

    .line 334
    new-instance p2, Landroidx/compose/foundation/shape/CutCornerShape;

    if-nez v4, :cond_6

    if-nez p1, :cond_5

    .line 335
    invoke-virtual {p3}, Landroidx/compose/foundation/shape/CornerBasedShape;->getTopStart()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v4

    goto :goto_5

    :cond_5
    move-object v4, p1

    :cond_6
    :goto_5
    if-nez v0, :cond_8

    if-nez p1, :cond_7

    .line 336
    invoke-virtual {p3}, Landroidx/compose/foundation/shape/CornerBasedShape;->getTopEnd()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v0

    goto :goto_6

    :cond_7
    move-object v0, p1

    :cond_8
    :goto_6
    if-nez v2, :cond_a

    if-nez p1, :cond_9

    .line 337
    invoke-virtual {p3}, Landroidx/compose/foundation/shape/CornerBasedShape;->getBottomEnd()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v2

    goto :goto_7

    :cond_9
    move-object v2, p1

    :cond_a
    :goto_7
    if-nez v1, :cond_b

    if-nez p1, :cond_c

    .line 338
    invoke-virtual {p3}, Landroidx/compose/foundation/shape/CornerBasedShape;->getBottomStart()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object p1

    goto :goto_8

    :cond_b
    move-object p1, v1

    .line 334
    :cond_c
    :goto_8
    invoke-direct {p2, v4, v0, v2, p1}, Landroidx/compose/foundation/shape/CutCornerShape;-><init>(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)V

    goto :goto_d

    .line 341
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown cornerFamily set in ShapeAppearance"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 326
    :cond_e
    new-instance p2, Landroidx/compose/foundation/shape/RoundedCornerShape;

    if-nez v4, :cond_10

    if-nez p1, :cond_f

    .line 327
    invoke-virtual {p3}, Landroidx/compose/foundation/shape/CornerBasedShape;->getTopStart()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v4

    goto :goto_9

    :cond_f
    move-object v4, p1

    :cond_10
    :goto_9
    if-nez v0, :cond_12

    if-nez p1, :cond_11

    .line 328
    invoke-virtual {p3}, Landroidx/compose/foundation/shape/CornerBasedShape;->getTopEnd()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v0

    goto :goto_a

    :cond_11
    move-object v0, p1

    :cond_12
    :goto_a
    if-nez v2, :cond_14

    if-nez p1, :cond_13

    .line 329
    invoke-virtual {p3}, Landroidx/compose/foundation/shape/CornerBasedShape;->getBottomEnd()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v2

    goto :goto_b

    :cond_13
    move-object v2, p1

    :cond_14
    :goto_b
    if-nez v1, :cond_15

    if-nez p1, :cond_16

    .line 330
    invoke-virtual {p3}, Landroidx/compose/foundation/shape/CornerBasedShape;->getBottomStart()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object p1

    goto :goto_c

    :cond_15
    move-object p1, v1

    .line 326
    :cond_16
    :goto_c
    invoke-direct {p2, v4, v0, v2, p1}, Landroidx/compose/foundation/shape/RoundedCornerShape;-><init>(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)V

    .line 234
    :goto_d
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p2
.end method

.method public static final parseTextAppearance(Landroid/content/Context;ILandroidx/compose/ui/unit/Density;ZLandroidx/compose/ui/text/font/FontFamily;)Landroidx/compose/ui/text/TextStyle;
    .locals 47

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "density"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    sget-object v1, Lcom/google/accompanist/themeadapter/core/R$styleable;->ThemeAdapterTextAppearance:[I

    move/from16 v2, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v14

    const-string v0, "context.obtainStyledAttr\u2026emeAdapterTextAppearance)"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    sget v0, Lcom/google/accompanist/themeadapter/core/R$styleable;->ThemeAdapterTextAppearance_android_textStyle:I

    const/4 v1, -0x1

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 83
    sget v0, Lcom/google/accompanist/themeadapter/core/R$styleable;->ThemeAdapterTextAppearance_android_textFontWeight:I

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 84
    sget v0, Lcom/google/accompanist/themeadapter/core/R$styleable;->ThemeAdapterTextAppearance_android_typeface:I

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 91
    sget v0, Lcom/google/accompanist/themeadapter/core/R$styleable;->ThemeAdapterTextAppearance_fontFamily:I

    .line 90
    invoke-static {v14, v0}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseFontFamily(Landroid/content/res/TypedArray;I)Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;

    move-result-object v0

    if-nez v0, :cond_0

    .line 92
    sget v0, Lcom/google/accompanist/themeadapter/core/R$styleable;->ThemeAdapterTextAppearance_android_fontFamily:I

    invoke-static {v14, v0}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseFontFamily(Landroid/content/res/TypedArray;I)Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;

    move-result-object v0

    :cond_0
    move-object/from16 v16, v0

    if-eqz p3, :cond_1

    .line 97
    sget v9, Lcom/google/accompanist/themeadapter/core/R$styleable;->ThemeAdapterTextAppearance_android_textColor:I

    const-wide/16 v10, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    move-object v8, v14

    invoke-static/range {v8 .. v13}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseColor-mxwnekA$default(Landroid/content/res/TypedArray;IJILjava/lang/Object;)J

    move-result-wide v0

    :goto_0
    move-wide/from16 v18, v0

    goto :goto_1

    .line 99
    :cond_1
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v0

    goto :goto_0

    .line 101
    :goto_1
    sget v1, Lcom/google/accompanist/themeadapter/core/R$styleable;->ThemeAdapterTextAppearance_android_textSize:I

    const-wide/16 v3, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v0, v14

    move-object/from16 v2, p2

    move v10, v5

    move v5, v8

    move v8, v6

    move-object v6, v9

    invoke-static/range {v0 .. v6}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseTextUnit-lGoEivg$default(Landroid/content/res/TypedArray;ILandroidx/compose/ui/unit/Density;JILjava/lang/Object;)J

    move-result-wide v20

    .line 104
    sget v9, Lcom/google/accompanist/themeadapter/core/R$styleable;->ThemeAdapterTextAppearance_lineHeight:I

    .line 106
    sget v1, Lcom/google/accompanist/themeadapter/core/R$styleable;->ThemeAdapterTextAppearance_android_lineHeight:I

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 105
    invoke-static/range {v0 .. v6}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseTextUnit-lGoEivg$default(Landroid/content/res/TypedArray;ILandroidx/compose/ui/unit/Density;JILjava/lang/Object;)J

    move-result-wide v0

    .line 103
    invoke-static {v14, v9, v7, v0, v1}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseTextUnit-lGoEivg(Landroid/content/res/TypedArray;ILandroidx/compose/ui/unit/Density;J)J

    move-result-wide v38

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p4, :cond_6

    if-eqz v16, :cond_2

    .line 112
    invoke-virtual/range {v16 .. v16}, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;->getFontFamily()Landroidx/compose/ui/text/font/FontFamily;

    move-result-object v2

    :goto_2
    move-object/from16 v25, v2

    goto :goto_3

    :cond_2
    if-ne v10, v0, :cond_3

    .line 114
    sget-object v2, Landroidx/compose/ui/text/font/FontFamily;->Companion:Landroidx/compose/ui/text/font/FontFamily$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/font/FontFamily$Companion;->getSansSerif()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x2

    if-ne v10, v2, :cond_4

    .line 115
    sget-object v2, Landroidx/compose/ui/text/font/FontFamily;->Companion:Landroidx/compose/ui/text/font/FontFamily$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/font/FontFamily$Companion;->getSerif()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object v2

    goto :goto_2

    :cond_4
    const/4 v2, 0x3

    if-ne v10, v2, :cond_5

    .line 116
    sget-object v2, Landroidx/compose/ui/text/font/FontFamily;->Companion:Landroidx/compose/ui/text/font/FontFamily$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/font/FontFamily$Companion;->getMonospace()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object v2

    goto :goto_2

    :cond_5
    move-object/from16 v25, v1

    goto :goto_3

    :cond_6
    move-object/from16 v25, p4

    :goto_3
    and-int/lit8 v2, v15, 0x2

    if-eqz v2, :cond_7

    .line 120
    sget-object v2, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/font/FontStyle$Companion;->getItalic-_-LCdwA()I

    move-result v2

    :goto_4
    move v9, v2

    goto :goto_5

    .line 121
    :cond_7
    sget-object v2, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/font/FontStyle$Companion;->getNormal-_-LCdwA()I

    move-result v2

    goto :goto_4

    :goto_5
    const/16 v2, 0x96

    if-ltz v8, :cond_8

    if-ge v8, v2, :cond_8

    .line 124
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW100()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v0

    :goto_6
    move-object/from16 v22, v0

    goto/16 :goto_7

    :cond_8
    const/16 v3, 0xfa

    if-gt v2, v8, :cond_9

    if-ge v8, v3, :cond_9

    .line 125
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW200()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v0

    goto :goto_6

    :cond_9
    const/16 v2, 0x15e

    if-gt v3, v8, :cond_a

    if-ge v8, v2, :cond_a

    .line 126
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW300()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v0

    goto :goto_6

    :cond_a
    const/16 v3, 0x1c2

    if-gt v2, v8, :cond_b

    if-ge v8, v3, :cond_b

    .line 127
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW400()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v0

    goto :goto_6

    :cond_b
    const/16 v2, 0x226

    if-gt v3, v8, :cond_c

    if-ge v8, v2, :cond_c

    .line 128
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW500()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v0

    goto :goto_6

    :cond_c
    const/16 v3, 0x28a

    if-gt v2, v8, :cond_d

    if-ge v8, v3, :cond_d

    .line 129
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW600()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v0

    goto :goto_6

    :cond_d
    const/16 v2, 0x2ee

    if-gt v3, v8, :cond_e

    if-ge v8, v2, :cond_e

    .line 130
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW700()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v0

    goto :goto_6

    :cond_e
    const/16 v3, 0x352

    if-gt v2, v8, :cond_f

    if-ge v8, v3, :cond_f

    .line 131
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW800()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v0

    goto :goto_6

    :cond_f
    if-gt v3, v8, :cond_10

    const/16 v2, 0x3e8

    if-ge v8, v2, :cond_10

    .line 132
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW900()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v0

    goto :goto_6

    :cond_10
    and-int/2addr v0, v15

    if-eqz v0, :cond_11

    .line 134
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v0

    goto :goto_6

    :cond_11
    if-eqz v16, :cond_12

    .line 136
    invoke-virtual/range {v16 .. v16}, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v0

    goto :goto_6

    :cond_12
    move-object/from16 v22, v1

    .line 139
    :goto_7
    sget v0, Lcom/google/accompanist/themeadapter/core/R$styleable;->ThemeAdapterTextAppearance_android_fontFeatureSettings:I

    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 141
    sget v3, Lcom/google/accompanist/themeadapter/core/R$styleable;->ThemeAdapterTextAppearance_android_shadowColor:I

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v2, v14

    invoke-static/range {v2 .. v7}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseColor-mxwnekA$default(Landroid/content/res/TypedArray;IJILjava/lang/Object;)J

    move-result-wide v2

    .line 142
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_13

    .line 143
    sget v0, Lcom/google/accompanist/themeadapter/core/R$styleable;->ThemeAdapterTextAppearance_android_shadowDx:I

    invoke-virtual {v14, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 144
    sget v1, Lcom/google/accompanist/themeadapter/core/R$styleable;->ThemeAdapterTextAppearance_android_shadowDy:I

    invoke-virtual {v14, v1, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 145
    sget v5, Lcom/google/accompanist/themeadapter/core/R$styleable;->ThemeAdapterTextAppearance_android_shadowRadius:I

    invoke-virtual {v14, v5, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v32

    .line 146
    new-instance v5, Landroidx/compose/ui/graphics/Shadow;

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v30

    const/16 v33, 0x0

    move-object/from16 v27, v5

    move-wide/from16 v28, v2

    invoke-direct/range {v27 .. v33}, Landroidx/compose/ui/graphics/Shadow;-><init>(JJFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v35, v5

    goto :goto_8

    :cond_13
    move-object/from16 v35, v1

    .line 150
    :goto_8
    sget v0, Lcom/google/accompanist/themeadapter/core/R$styleable;->ThemeAdapterTextAppearance_android_letterSpacing:I

    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 151
    sget v0, Lcom/google/accompanist/themeadapter/core/R$styleable;->ThemeAdapterTextAppearance_android_letterSpacing:I

    invoke-virtual {v14, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getEm(F)J

    move-result-wide v0

    :goto_9
    move-wide/from16 v27, v0

    goto :goto_a

    :cond_14
    const/4 v0, 0x0

    .line 156
    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getEm(I)J

    move-result-wide v0

    goto :goto_9

    .line 94
    :goto_a
    new-instance v0, Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v17, v0

    .line 119
    invoke-static {v9}, Landroidx/compose/ui/text/font/FontStyle;->box-impl(I)Landroidx/compose/ui/text/font/FontStyle;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-wide/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const v45, 0x3edf10

    const/16 v46, 0x0

    .line 94
    invoke-direct/range {v17 .. v46}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 234
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public static final parseTextUnit-lGoEivg(Landroid/content/res/TypedArray;ILandroidx/compose/ui/unit/Density;J)J
    .locals 3

    const-string v0, "$this$parseTextUnit"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "density"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->tempTypedValue:Ljava/lang/ThreadLocal;

    .line 267
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    check-cast v1, Landroid/util/TypedValue;

    .line 268
    invoke-virtual {p0, p1, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, v1, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    .line 377
    invoke-virtual {v1}, Landroid/util/TypedValue;->getComplexUnit()I

    move-result p3

    const/4 p4, 0x1

    if-eq p3, p4, :cond_2

    const/4 p4, 0x2

    if-eq p3, p4, :cond_1

    const/4 p3, 0x0

    .line 276
    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    invoke-interface {p2, p0}, Landroidx/compose/ui/unit/Density;->toSp-kPz2Gy4(F)J

    move-result-wide p0

    goto :goto_0

    .line 271
    :cond_1
    iget p0, v1, Landroid/util/TypedValue;->data:I

    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(F)J

    move-result-wide p0

    goto :goto_0

    .line 273
    :cond_2
    iget p0, v1, Landroid/util/TypedValue;->data:I

    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/unit/TextUnitKt;->getEm(F)J

    move-result-wide p0

    :goto_0
    return-wide p0

    :cond_3
    return-wide p3
.end method

.method public static synthetic parseTextUnit-lGoEivg$default(Landroid/content/res/TypedArray;ILandroidx/compose/ui/unit/Density;JILjava/lang/Object;)J
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 265
    sget-object p3, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {p3}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide p3

    .line 262
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseTextUnit-lGoEivg(Landroid/content/res/TypedArray;ILandroidx/compose/ui/unit/Density;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final parseXmlFontFamily(Landroid/content/res/Resources;I)Landroidx/compose/ui/text/font/FontFamily;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    const-string v0, "getXml(id)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    :try_start_0
    invoke-static {p1, p0}, Landroidx/core/content/res/FontResourcesParserCompat;->parse(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;

    move-result-object p0

    .line 223
    instance-of v0, p0, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;

    if-eqz v0, :cond_2

    .line 224
    check-cast p0, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;

    invoke-virtual {p0}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object p0

    const-string v0, "result.entries"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 11670
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 226
    invoke-virtual {v3}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    move-result v4

    .line 227
    invoke-virtual {v3}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    move-result v5

    invoke-static {v5}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->fontWeightOf(I)Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v5

    .line 228
    invoke-virtual {v3}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/font/FontStyle$Companion;->getItalic-_-LCdwA()I

    move-result v3

    :goto_1
    move v6, v3

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    sget-object v3, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/font/FontStyle$Companion;->getNormal-_-LCdwA()I

    move-result v3

    goto :goto_1

    :goto_2
    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    .line 225
    invoke-static/range {v4 .. v9}, Landroidx/compose/ui/text/font/FontKt;->Font-YpTlLL0$default(ILandroidx/compose/ui/text/font/FontWeight;IIILjava/lang/Object;)Landroidx/compose/ui/text/font/Font;

    move-result-object v3

    .line 11671
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    :cond_1
    invoke-static {v0}, Landroidx/compose/ui/text/font/FontFamilyKt;->FontFamily(Ljava/util/List;)Landroidx/compose/ui/text/font/FontFamily;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    return-object p0

    :cond_2
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    const/4 p0, 0x0

    return-object p0

    :goto_3
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    throw p0
.end method
