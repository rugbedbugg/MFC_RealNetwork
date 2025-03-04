.class public final Landroidx/work/impl/constraints/controllers/BatteryChargingController;
.super Landroidx/work/impl/constraints/controllers/ConstraintController;
.source "ContraintControllers.kt"


# instance fields
.field private final reason:I


# direct methods
.method public constructor <init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V
    .locals 1

    const-string v0, "tracker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0, p1}, Landroidx/work/impl/constraints/controllers/ConstraintController;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    const/4 p1, 0x6

    iput p1, p0, Landroidx/work/impl/constraints/controllers/BatteryChargingController;->reason:I

    return-void
.end method


# virtual methods
.method public getReason()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/work/impl/constraints/controllers/BatteryChargingController;->reason:I

    return v0
.end method

.method public hasConstraint(Landroidx/work/impl/model/WorkSpec;)Z
    .locals 1

    const-string v0, "workSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object p1, p1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-virtual {p1}, Landroidx/work/Constraints;->requiresCharging()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isConstrained(Ljava/lang/Object;)Z
    .locals 0

    .line 68
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/controllers/BatteryChargingController;->isConstrained(Z)Z

    move-result p1

    return p1
.end method

.method public isConstrained(Z)Z
    .locals 0

    .line 0
    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
