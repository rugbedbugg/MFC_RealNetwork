.class public final Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;
.super Landroidx/work/impl/constraints/ConstraintsState;
.source "WorkConstraintsTracker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/constraints/ConstraintsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConstraintsNotMet"
.end annotation


# instance fields
.field private final reason:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, v0}, Landroidx/work/impl/constraints/ConstraintsState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;->reason:I

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
    instance-of v1, p1, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;

    iget v1, p0, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;->reason:I

    iget p1, p1, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;->reason:I

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getReason()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;->reason:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;->reason:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConstraintsNotMet(reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;->reason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
