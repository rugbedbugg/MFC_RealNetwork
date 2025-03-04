.class public final Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;
.super Ljava/lang/Object;
.source "Arrangement.kt"

# interfaces
.implements Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/layout/Arrangement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpacedAligned"
.end annotation


# instance fields
.field private final alignment:Lkotlin/jvm/functions/Function2;

.field private final rtlMirror:Z

.field private final space:F

.field private final spacing:F


# direct methods
.method private constructor <init>(FZLkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->space:F

    iput-boolean p2, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->rtlMirror:Z

    iput-object p3, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->alignment:Lkotlin/jvm/functions/Function2;

    iput p1, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->spacing:F

    return-void
.end method

.method public synthetic constructor <init>(FZLkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLkotlin/jvm/functions/Function2;)V

    return-void
.end method


# virtual methods
.method public arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V
    .locals 9

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sizes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutDirection"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outPositions"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 580
    array-length v0, p3

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->space:F

    .line 581
    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p1

    iget-boolean v0, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->rtlMirror:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 585
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p4, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 586
    :goto_0
    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    if-nez v0, :cond_2

    .line 719
    array-length v0, p3

    move v1, v2

    move v3, v1

    move v4, v3

    move v5, v4

    :goto_1
    if-ge v1, v0, :cond_3

    aget v4, p3, v1

    add-int/lit8 v6, v5, 0x1

    sub-int v7, p2, v4

    .line 587
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, p5, v5

    sub-int v3, p2, v3

    sub-int/2addr v3, v4

    .line 588
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 589
    aget v5, p5, v5

    add-int/2addr v5, v4

    add-int v4, v5, v3

    add-int/lit8 v1, v1, 0x1

    move v5, v6

    move v8, v4

    move v4, v3

    move v3, v8

    goto :goto_1

    .line 709
    :cond_2
    array-length v0, p3

    sub-int/2addr v0, v1

    move v3, v2

    move v4, v3

    :goto_2
    const/4 v1, -0x1

    if-ge v1, v0, :cond_3

    .line 710
    aget v1, p3, v0

    sub-int v4, p2, v1

    .line 587
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, p5, v0

    sub-int v3, p2, v3

    sub-int/2addr v3, v1

    .line 588
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 589
    aget v3, p5, v0

    add-int/2addr v3, v1

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    sub-int/2addr v3, v4

    iget-object p1, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->alignment:Lkotlin/jvm/functions/Function2;

    if-eqz p1, :cond_4

    if-ge v3, p2, :cond_4

    sub-int/2addr p2, v3

    .line 594
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 595
    array-length p2, p5

    :goto_3
    if-ge v2, p2, :cond_4

    .line 596
    aget p3, p5, v2

    add-int/2addr p3, p1

    aput p3, p5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public arrange(Landroidx/compose/ui/unit/Density;I[I[I)V
    .locals 7

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sizes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outPositions"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 605
    sget-object v5, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    iget v1, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->space:F

    iget v3, p1, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->space:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->rtlMirror:Z

    iget-boolean v3, p1, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->rtlMirror:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->alignment:Lkotlin/jvm/functions/Function2;

    iget-object p1, p1, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->alignment:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getSpacing-D9Ej5fM()F
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->spacing:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget v0, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->space:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->rtlMirror:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->alignment:Lkotlin/jvm/functions/Function2;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->rtlMirror:Z

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, "Absolute"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Arrangement#spacedAligned("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->space:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->alignment:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
