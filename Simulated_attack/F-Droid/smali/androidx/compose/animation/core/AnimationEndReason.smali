.class public final enum Landroidx/compose/animation/core/AnimationEndReason;
.super Ljava/lang/Enum;
.source "AnimationEndReason.kt"


# static fields
.field private static final synthetic $VALUES:[Landroidx/compose/animation/core/AnimationEndReason;

.field public static final enum BoundReached:Landroidx/compose/animation/core/AnimationEndReason;

.field public static final enum Finished:Landroidx/compose/animation/core/AnimationEndReason;


# direct methods
.method private static final synthetic $values()[Landroidx/compose/animation/core/AnimationEndReason;
    .locals 3

    .line 0
    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/compose/animation/core/AnimationEndReason;

    const/4 v1, 0x0

    sget-object v2, Landroidx/compose/animation/core/AnimationEndReason;->BoundReached:Landroidx/compose/animation/core/AnimationEndReason;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroidx/compose/animation/core/AnimationEndReason;->Finished:Landroidx/compose/animation/core/AnimationEndReason;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Landroidx/compose/animation/core/AnimationEndReason;

    const-string v1, "BoundReached"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/animation/core/AnimationEndReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/animation/core/AnimationEndReason;->BoundReached:Landroidx/compose/animation/core/AnimationEndReason;

    .line 35
    new-instance v0, Landroidx/compose/animation/core/AnimationEndReason;

    const-string v1, "Finished"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/animation/core/AnimationEndReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/animation/core/AnimationEndReason;->Finished:Landroidx/compose/animation/core/AnimationEndReason;

    invoke-static {}, Landroidx/compose/animation/core/AnimationEndReason;->$values()[Landroidx/compose/animation/core/AnimationEndReason;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/core/AnimationEndReason;->$VALUES:[Landroidx/compose/animation/core/AnimationEndReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/animation/core/AnimationEndReason;
    .locals 1

    .line 0
    const-class v0, Landroidx/compose/animation/core/AnimationEndReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/AnimationEndReason;

    return-object p0
.end method

.method public static values()[Landroidx/compose/animation/core/AnimationEndReason;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/animation/core/AnimationEndReason;->$VALUES:[Landroidx/compose/animation/core/AnimationEndReason;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/animation/core/AnimationEndReason;

    return-object v0
.end method
