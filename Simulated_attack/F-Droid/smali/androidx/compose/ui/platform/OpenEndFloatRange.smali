.class final Landroidx/compose/ui/platform/OpenEndFloatRange;
.super Ljava/lang/Object;
.source "AndroidComposeViewAccessibilityDelegateCompat.android.kt"

# interfaces
.implements Landroidx/compose/ui/platform/OpenEndRange;


# instance fields
.field private final _endExclusive:F

.field private final _start:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/platform/OpenEndFloatRange;->_start:F

    iput p2, p0, Landroidx/compose/ui/platform/OpenEndFloatRange;->_endExclusive:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 163
    instance-of v0, p1, Landroidx/compose/ui/platform/OpenEndFloatRange;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/platform/OpenEndFloatRange;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/platform/OpenEndFloatRange;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/OpenEndFloatRange;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Landroidx/compose/ui/platform/OpenEndFloatRange;->_start:F

    .line 164
    check-cast p1, Landroidx/compose/ui/platform/OpenEndFloatRange;

    iget v1, p1, Landroidx/compose/ui/platform/OpenEndFloatRange;->_start:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Landroidx/compose/ui/platform/OpenEndFloatRange;->_endExclusive:F

    iget p1, p1, Landroidx/compose/ui/platform/OpenEndFloatRange;->_endExclusive:F

    cmpg-float p1, v0, p1

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic getEndExclusive()Ljava/lang/Comparable;
    .locals 1

    .line 148
    invoke-virtual {p0}, Landroidx/compose/ui/platform/OpenEndFloatRange;->getEndExclusive()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getEndExclusive()Ljava/lang/Float;
    .locals 1

    iget v0, p0, Landroidx/compose/ui/platform/OpenEndFloatRange;->_endExclusive:F

    .line 155
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStart()Ljava/lang/Comparable;
    .locals 1

    .line 148
    invoke-virtual {p0}, Landroidx/compose/ui/platform/OpenEndFloatRange;->getStart()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getStart()Ljava/lang/Float;
    .locals 1

    iget v0, p0, Landroidx/compose/ui/platform/OpenEndFloatRange;->_start:F

    .line 154
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 168
    invoke-virtual {p0}, Landroidx/compose/ui/platform/OpenEndFloatRange;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/compose/ui/platform/OpenEndFloatRange;->_start:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/platform/OpenEndFloatRange;->_endExclusive:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 0
    iget v0, p0, Landroidx/compose/ui/platform/OpenEndFloatRange;->_start:F

    iget v1, p0, Landroidx/compose/ui/platform/OpenEndFloatRange;->_endExclusive:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroidx/compose/ui/platform/OpenEndFloatRange;->_start:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "..<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/platform/OpenEndFloatRange;->_endExclusive:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
