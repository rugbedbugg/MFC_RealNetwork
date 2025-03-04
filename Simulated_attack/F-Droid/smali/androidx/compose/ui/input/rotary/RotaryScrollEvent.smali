.class public final Landroidx/compose/ui/input/rotary/RotaryScrollEvent;
.super Ljava/lang/Object;
.source "RotaryScrollEvent.kt"


# instance fields
.field private final horizontalScrollPixels:F

.field private final uptimeMillis:J

.field private final verticalScrollPixels:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(FFJ)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;->verticalScrollPixels:F

    iput p2, p0, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;->horizontalScrollPixels:F

    iput-wide p3, p0, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;->uptimeMillis:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 44
    instance-of v0, p1, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;

    if-eqz v0, :cond_0

    .line 45
    check-cast p1, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;

    iget v0, p1, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;->verticalScrollPixels:F

    iget v1, p0, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;->verticalScrollPixels:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    .line 46
    iget v0, p1, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;->horizontalScrollPixels:F

    iget v1, p0, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;->horizontalScrollPixels:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    .line 47
    iget-wide v0, p1, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;->uptimeMillis:J

    iget-wide v2, p0, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;->uptimeMillis:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;->verticalScrollPixels:F

    .line 50
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;->horizontalScrollPixels:F

    .line 51
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;->uptimeMillis:J

    .line 52
    invoke-static {v1, v2}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RotaryScrollEvent(verticalScrollPixels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;->verticalScrollPixels:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",horizontalScrollPixels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;->horizontalScrollPixels:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",uptimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;->uptimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
