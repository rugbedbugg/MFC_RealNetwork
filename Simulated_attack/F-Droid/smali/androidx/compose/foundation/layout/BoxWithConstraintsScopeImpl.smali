.class final Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;
.super Ljava/lang/Object;
.source "BoxWithConstraints.kt"

# interfaces
.implements Landroidx/compose/foundation/layout/BoxWithConstraintsScope;
.implements Landroidx/compose/foundation/layout/BoxScope;


# instance fields
.field private final synthetic $$delegate_0:Landroidx/compose/foundation/layout/BoxScopeInstance;

.field private final constraints:J

.field private final density:Landroidx/compose/ui/unit/Density;


# direct methods
.method private constructor <init>(Landroidx/compose/ui/unit/Density;J)V
    .locals 1

    const-string v0, "density"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->density:Landroidx/compose/ui/unit/Density;

    iput-wide p2, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->constraints:J

    .line 114
    sget-object p1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    iput-object p1, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->$$delegate_0:Landroidx/compose/foundation/layout/BoxScopeInstance;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/unit/Density;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;-><init>(Landroidx/compose/ui/unit/Density;J)V

    return-void
.end method


# virtual methods
.method public align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 0
    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alignment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->$$delegate_0:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;

    iget-object v1, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->density:Landroidx/compose/ui/unit/Density;

    iget-object v3, p1, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->density:Landroidx/compose/ui/unit/Density;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->constraints:J

    iget-wide v5, p1, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->constraints:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/unit/Constraints;->equals-impl0(JJ)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getConstraints-msEJaDk()J
    .locals 2

    .line 0
    iget-wide v0, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->constraints:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->density:Landroidx/compose/ui/unit/Density;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->constraints:J

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxWithConstraintsScopeImpl(density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->density:Landroidx/compose/ui/unit/Density;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", constraints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->constraints:J

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
