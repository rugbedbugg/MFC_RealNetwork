.class public abstract synthetic Landroidx/compose/runtime/MutableLongState$-CC;
.super Ljava/lang/Object;
.source "SnapshotLongState.kt"


# direct methods
.method public static $default$getValue(Landroidx/compose/runtime/MutableLongState;)Ljava/lang/Long;
    .locals 2

    .line 94
    invoke-interface {p0}, Landroidx/compose/runtime/MutableLongState;->getLongValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic $default$getValue(Landroidx/compose/runtime/MutableLongState;)Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-interface {p0}, Landroidx/compose/runtime/MutableLongState;->getValue()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static $default$setValue(Landroidx/compose/runtime/MutableLongState;J)V
    .locals 0

    .line 95
    invoke-interface {p0, p1, p2}, Landroidx/compose/runtime/MutableLongState;->setLongValue(J)V

    return-void
.end method

.method public static bridge synthetic $default$setValue(Landroidx/compose/runtime/MutableLongState;Ljava/lang/Object;)V
    .locals 2

    .line 88
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Landroidx/compose/runtime/MutableLongState;->setValue(J)V

    return-void
.end method
