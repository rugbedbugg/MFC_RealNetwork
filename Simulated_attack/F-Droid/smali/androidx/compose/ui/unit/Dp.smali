.class public final Landroidx/compose/ui/unit/Dp;
.super Ljava/lang/Object;
.source "Dp.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/unit/Dp$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/unit/Dp$Companion;

.field private static final Hairline:F

.field private static final Infinity:F

.field private static final Unspecified:F


# instance fields
.field private final value:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/unit/Dp$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v0, 0x0

    .line 109
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/ui/unit/Dp;->Hairline:F

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 115
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/ui/unit/Dp;->Infinity:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 121
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/ui/unit/Dp;->Unspecified:F

    return-void
.end method

.method private synthetic constructor <init>(F)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/unit/Dp;->value:F

    return-void
.end method

.method public static final synthetic access$getHairline$cp()F
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/unit/Dp;->Hairline:F

    return v0
.end method

.method public static final synthetic access$getUnspecified$cp()F
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/unit/Dp;->Unspecified:F

    return v0
.end method

.method public static final synthetic box-impl(F)Landroidx/compose/ui/unit/Dp;
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v0, p0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    return-object v0
.end method

.method public static compareTo-0680j_4(FF)I
    .locals 0

    .line 98
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method public static constructor-impl(F)F
    .locals 0

    .line 0
    return p0
.end method

.method public static equals-impl(FLjava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Landroidx/compose/ui/unit/Dp;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(FF)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hashCode-impl(F)I
    .locals 0

    .line 0
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    return p0
.end method

.method public static toString-impl(F)Ljava/lang/String;
    .locals 1

    .line 137
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Dp.Unspecified"

    goto :goto_0

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ".dp"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 43
    check-cast p1, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/unit/Dp;->compareTo-0680j_4(F)I

    move-result p1

    return p1
.end method

.method public compareTo-0680j_4(F)I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/unit/Dp;->value:F

    .line 98
    invoke-static {v0, p1}, Landroidx/compose/ui/unit/Dp;->compareTo-0680j_4(FF)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/unit/Dp;->value:F

    invoke-static {v0, p1}, Landroidx/compose/ui/unit/Dp;->equals-impl(FLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/unit/Dp;->value:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroidx/compose/ui/unit/Dp;->value:F

    .line 101
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()F
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/unit/Dp;->value:F

    return v0
.end method
