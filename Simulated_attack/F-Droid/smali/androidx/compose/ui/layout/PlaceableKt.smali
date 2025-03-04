.class public abstract Landroidx/compose/ui/layout/PlaceableKt;
.super Ljava/lang/Object;
.source "Placeable.kt"


# static fields
.field private static final DefaultConstraints:J

.field private static final DefaultLayerBlock:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    sget-object v0, Landroidx/compose/ui/layout/PlaceableKt$DefaultLayerBlock$1;->INSTANCE:Landroidx/compose/ui/layout/PlaceableKt$DefaultLayerBlock$1;

    sput-object v0, Landroidx/compose/ui/layout/PlaceableKt;->DefaultLayerBlock:Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    .line 426
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/ui/layout/PlaceableKt;->DefaultConstraints:J

    return-void
.end method

.method public static final synthetic access$getDefaultConstraints$p()J
    .locals 2

    .line 0
    sget-wide v0, Landroidx/compose/ui/layout/PlaceableKt;->DefaultConstraints:J

    return-wide v0
.end method

.method public static final synthetic access$getDefaultLayerBlock$p()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/layout/PlaceableKt;->DefaultLayerBlock:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method
