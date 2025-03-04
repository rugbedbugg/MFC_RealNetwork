.class public final Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;
.super Ljava/lang/Object;
.source "AndroidFontResolveInterceptor.android.kt"

# interfaces
.implements Landroidx/compose/ui/text/font/PlatformResolveInterceptor;


# instance fields
.field private final fontWeightAdjustment:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;->fontWeightAdjustment:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;

    iget v1, p0, Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;->fontWeightAdjustment:I

    iget p1, p1, Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;->fontWeightAdjustment:I

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;->fontWeightAdjustment:I

    return v0
.end method

.method public synthetic interceptFontFamily(Landroidx/compose/ui/text/font/FontFamily;)Landroidx/compose/ui/text/font/FontFamily;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/compose/ui/text/font/PlatformResolveInterceptor$-CC;->$default$interceptFontFamily(Landroidx/compose/ui/text/font/PlatformResolveInterceptor;Landroidx/compose/ui/text/font/FontFamily;)Landroidx/compose/ui/text/font/FontFamily;

    move-result-object p1

    return-object p1
.end method

.method public synthetic interceptFontStyle-T2F_aPo(I)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/compose/ui/text/font/PlatformResolveInterceptor$-CC;->$default$interceptFontStyle-T2F_aPo(Landroidx/compose/ui/text/font/PlatformResolveInterceptor;I)I

    move-result p1

    return p1
.end method

.method public synthetic interceptFontSynthesis-Mscr08Y(I)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/compose/ui/text/font/PlatformResolveInterceptor$-CC;->$default$interceptFontSynthesis-Mscr08Y(Landroidx/compose/ui/text/font/PlatformResolveInterceptor;I)I

    move-result p1

    return p1
.end method

.method public interceptFontWeight(Landroidx/compose/ui/text/font/FontWeight;)Landroidx/compose/ui/text/font/FontWeight;
    .locals 2

    const-string v0, "fontWeight"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;->fontWeightAdjustment:I

    if-eqz v0, :cond_1

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/FontWeight;->getWeight()I

    move-result p1

    iget v0, p0, Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;->fontWeightAdjustment:I

    add-int/2addr p1, v0

    const/4 v0, 0x1

    const/16 v1, 0x3e8

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    .line 47
    new-instance v0, Landroidx/compose/ui/text/font/FontWeight;

    invoke-direct {v0, p1}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    return-object v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidFontResolveInterceptor(fontWeightAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;->fontWeightAdjustment:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
