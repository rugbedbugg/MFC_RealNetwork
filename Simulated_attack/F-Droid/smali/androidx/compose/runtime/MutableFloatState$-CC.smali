.class public abstract synthetic Landroidx/compose/runtime/MutableFloatState$-CC;
.super Ljava/lang/Object;
.source "SnapshotFloatState.kt"


# direct methods
.method public static $default$getValue(Landroidx/compose/runtime/MutableFloatState;)Ljava/lang/Float;
    .locals 0

    .line 93
    invoke-interface {p0}, Landroidx/compose/runtime/MutableFloatState;->getFloatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic $default$getValue(Landroidx/compose/runtime/MutableFloatState;)Ljava/lang/Object;
    .locals 0

    .line 87
    invoke-interface {p0}, Landroidx/compose/runtime/MutableFloatState;->getValue()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static $default$setValue(Landroidx/compose/runtime/MutableFloatState;F)V
    .locals 0

    .line 94
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method public static bridge synthetic $default$setValue(Landroidx/compose/runtime/MutableFloatState;Ljava/lang/Object;)V
    .locals 0

    .line 87
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableFloatState;->setValue(F)V

    return-void
.end method
