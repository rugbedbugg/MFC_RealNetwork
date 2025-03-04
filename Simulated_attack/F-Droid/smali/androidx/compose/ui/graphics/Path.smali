.class public interface abstract Landroidx/compose/ui/graphics/Path;
.super Ljava/lang/Object;
.source "Path.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/Path$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/graphics/Path$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/graphics/Path$Companion;->$$INSTANCE:Landroidx/compose/ui/graphics/Path$Companion;

    sput-object v0, Landroidx/compose/ui/graphics/Path;->Companion:Landroidx/compose/ui/graphics/Path$Companion;

    return-void
.end method


# virtual methods
.method public abstract addPath-Uv8p0NA(Landroidx/compose/ui/graphics/Path;J)V
.end method

.method public abstract addRect(Landroidx/compose/ui/geometry/Rect;)V
.end method

.method public abstract addRoundRect(Landroidx/compose/ui/geometry/RoundRect;)V
.end method

.method public abstract close()V
.end method

.method public abstract cubicTo(FFFFFF)V
.end method

.method public abstract getBounds()Landroidx/compose/ui/geometry/Rect;
.end method

.method public abstract getFillType-Rg-k1Os()I
.end method

.method public abstract isConvex()Z
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract lineTo(FF)V
.end method

.method public abstract moveTo(FF)V
.end method

.method public abstract op-N5in7k0(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;I)Z
.end method

.method public abstract relativeCubicTo(FFFFFF)V
.end method

.method public abstract relativeLineTo(FF)V
.end method

.method public abstract reset()V
.end method

.method public abstract rewind()V
.end method

.method public abstract setFillType-oQ8Xj4U(I)V
.end method

.method public abstract translate-k-4lQ0M(J)V
.end method
