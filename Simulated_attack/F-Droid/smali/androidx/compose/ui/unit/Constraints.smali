.class public final Landroidx/compose/ui/unit/Constraints;
.super Ljava/lang/Object;
.source "Constraints.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/unit/Constraints$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/unit/Constraints$Companion;

.field private static final HeightMask:[I

.field private static final MinHeightOffsets:[I

.field private static final WidthMask:[I


# instance fields
.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 0
    new-instance v0, Landroidx/compose/ui/unit/Constraints$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/unit/Constraints$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    const/16 v0, 0x11

    const/16 v1, 0xf

    const/16 v2, 0x12

    const/16 v3, 0x14

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/unit/Constraints;->MinHeightOffsets:[I

    const v0, 0xffff

    const v1, 0x3ffff

    const/16 v2, 0x7fff

    const/16 v3, 0x1fff

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v4

    sput-object v4, Landroidx/compose/ui/unit/Constraints;->WidthMask:[I

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/unit/Constraints;->HeightMask:[I

    return-void
.end method

.method private synthetic constructor <init>(J)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/ui/unit/Constraints;->value:J

    return-void
.end method

.method public static final synthetic access$getMinHeightOffsets$cp()[I
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/unit/Constraints;->MinHeightOffsets:[I

    return-object v0
.end method

.method public static final synthetic box-impl(J)Landroidx/compose/ui/unit/Constraints;
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/unit/Constraints;

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/Constraints;-><init>(J)V

    return-object v0
.end method

.method public static constructor-impl(J)J
    .locals 0

    .line 0
    return-wide p0
.end method

.method public static final copy-Zbe2FdA(JIIII)J
    .locals 0

    if-ltz p4, :cond_4

    if-ltz p2, :cond_4

    const/16 p0, 0x29

    const p1, 0x7fffffff

    if-ge p3, p2, :cond_1

    if-ne p3, p1, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "maxWidth("

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") must be >= minWidth("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 167
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-ge p5, p4, :cond_3

    if-ne p5, p1, :cond_2

    goto :goto_1

    .line 171
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "maxHeight("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") must be >= minHeight("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 170
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    sget-object p0, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    .line 173
    invoke-virtual {p0, p2, p3, p4, p5}, Landroidx/compose/ui/unit/Constraints$Companion;->createConstraints-Zbe2FdA$ui_unit_release(IIII)J

    move-result-wide p0

    return-wide p0

    .line 165
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "minHeight("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") and minWidth("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") must be >= 0"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 164
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 159
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result p2

    :cond_0
    move v2, p2

    and-int/lit8 p2, p6, 0x2

    if-eqz p2, :cond_1

    .line 160
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p3

    :cond_1
    move v3, p3

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    .line 161
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result p4

    :cond_2
    move v4, p4

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    .line 162
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p5

    :cond_3
    move v5, p5

    move-wide v0, p0

    .line 158
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA(JIIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static equals-impl(JLjava/lang/Object;)Z
    .locals 4

    .line 0
    instance-of v0, p2, Landroidx/compose/ui/unit/Constraints;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Landroidx/compose/ui/unit/Constraints;

    invoke-virtual {p2}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v2

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(JJ)Z
    .locals 0

    .line 0
    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final getFocusIndex-impl(J)I
    .locals 2

    .line 0
    const-wide/16 v0, 0x3

    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static final getHasBoundedHeight-impl(J)Z
    .locals 3

    .line 127
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getFocusIndex-impl(J)I

    move-result v0

    sget-object v1, Landroidx/compose/ui/unit/Constraints;->HeightMask:[I

    .line 128
    aget v1, v1, v0

    sget-object v2, Landroidx/compose/ui/unit/Constraints;->MinHeightOffsets:[I

    .line 129
    aget v0, v2, v0

    add-int/lit8 v0, v0, 0x1f

    shr-long/2addr p0, v0

    long-to-int p0, p0

    and-int/2addr p0, v1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final getHasBoundedWidth-impl(J)Z
    .locals 2

    sget-object v0, Landroidx/compose/ui/unit/Constraints;->WidthMask:[I

    .line 117
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getFocusIndex-impl(J)I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x21

    shr-long/2addr p0, v1

    long-to-int p0, p0

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final getHasFixedHeight-impl(J)Z
    .locals 1

    .line 143
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v0

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final getHasFixedWidth-impl(J)Z
    .locals 1

    .line 137
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v0

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final getMaxHeight-impl(J)I
    .locals 3

    .line 104
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getFocusIndex-impl(J)I

    move-result v0

    sget-object v1, Landroidx/compose/ui/unit/Constraints;->HeightMask:[I

    .line 105
    aget v1, v1, v0

    sget-object v2, Landroidx/compose/ui/unit/Constraints;->MinHeightOffsets:[I

    .line 106
    aget v0, v2, v0

    add-int/lit8 v0, v0, 0x1f

    shr-long/2addr p0, v0

    long-to-int p0, p0

    and-int/2addr p0, v1

    if-nez p0, :cond_0

    const p0, 0x7fffffff

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    :goto_0
    return p0
.end method

.method public static final getMaxWidth-impl(J)I
    .locals 2

    sget-object v0, Landroidx/compose/ui/unit/Constraints;->WidthMask:[I

    .line 82
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getFocusIndex-impl(J)I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x21

    shr-long/2addr p0, v1

    long-to-int p0, p0

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const p0, 0x7fffffff

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    :goto_0
    return p0
.end method

.method public static final getMinHeight-impl(J)I
    .locals 3

    .line 92
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getFocusIndex-impl(J)I

    move-result v0

    sget-object v1, Landroidx/compose/ui/unit/Constraints;->HeightMask:[I

    .line 93
    aget v1, v1, v0

    sget-object v2, Landroidx/compose/ui/unit/Constraints;->MinHeightOffsets:[I

    .line 94
    aget v0, v2, v0

    shr-long/2addr p0, v0

    long-to-int p0, p0

    and-int/2addr p0, v1

    return p0
.end method

.method public static final getMinWidth-impl(J)I
    .locals 2

    sget-object v0, Landroidx/compose/ui/unit/Constraints;->WidthMask:[I

    .line 72
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getFocusIndex-impl(J)I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    shr-long/2addr p0, v1

    long-to-int p0, p0

    and-int/2addr p0, v0

    return p0
.end method

.method public static hashCode-impl(J)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticBackport0;->m(J)I

    move-result p0

    return p0
.end method

.method public static toString-impl(J)Ljava/lang/String;
    .locals 4

    .line 177
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v0

    const-string v1, "Infinity"

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 178
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v3

    if-ne v3, v2, :cond_1

    goto :goto_1

    .line 180
    :cond_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 181
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Constraints(minWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", maxWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", minHeight = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result p0

    .line 181
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", maxHeight = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    iget-wide v0, p0, Landroidx/compose/ui/unit/Constraints;->value:J

    invoke-static {v0, v1, p1}, Landroidx/compose/ui/unit/Constraints;->equals-impl(JLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget-wide v0, p0, Landroidx/compose/ui/unit/Constraints;->value:J

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->hashCode-impl(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/unit/Constraints;->value:J

    .line 176
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()J
    .locals 2

    .line 0
    iget-wide v0, p0, Landroidx/compose/ui/unit/Constraints;->value:J

    return-wide v0
.end method
