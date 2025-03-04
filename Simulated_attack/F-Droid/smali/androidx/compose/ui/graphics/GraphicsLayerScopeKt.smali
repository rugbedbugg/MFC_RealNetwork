.class public abstract Landroidx/compose/ui/graphics/GraphicsLayerScopeKt;
.super Ljava/lang/Object;
.source "GraphicsLayerScope.kt"


# static fields
.field private static final DefaultShadowColor:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/ui/graphics/GraphicsLayerScopeKt;->DefaultShadowColor:J

    return-void
.end method

.method public static final getDefaultShadowColor()J
    .locals 2

    .line 0
    sget-wide v0, Landroidx/compose/ui/graphics/GraphicsLayerScopeKt;->DefaultShadowColor:J

    return-wide v0
.end method
