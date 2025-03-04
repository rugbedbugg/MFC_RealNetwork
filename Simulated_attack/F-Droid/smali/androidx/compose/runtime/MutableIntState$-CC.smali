.class public abstract synthetic Landroidx/compose/runtime/MutableIntState$-CC;
.super Ljava/lang/Object;
.source "SnapshotIntState.kt"


# direct methods
.method public static $default$getValue(Landroidx/compose/runtime/MutableIntState;)Ljava/lang/Integer;
    .locals 0

    .line 93
    invoke-interface {p0}, Landroidx/compose/runtime/MutableIntState;->getIntValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic $default$getValue(Landroidx/compose/runtime/MutableIntState;)Ljava/lang/Object;
    .locals 0

    .line 87
    invoke-interface {p0}, Landroidx/compose/runtime/MutableIntState;->getValue()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static $default$setValue(Landroidx/compose/runtime/MutableIntState;I)V
    .locals 0

    .line 94
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    return-void
.end method

.method public static bridge synthetic $default$setValue(Landroidx/compose/runtime/MutableIntState;Ljava/lang/Object;)V
    .locals 0

    .line 87
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->setValue(I)V

    return-void
.end method
