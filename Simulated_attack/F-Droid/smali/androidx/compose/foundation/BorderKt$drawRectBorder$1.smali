.class final Landroidx/compose/foundation/BorderKt$drawRectBorder$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Border.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/BorderKt;->drawRectBorder-NsqcLGU(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/graphics/Brush;JJZF)Landroidx/compose/ui/draw/DrawResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $brush:Landroidx/compose/ui/graphics/Brush;

.field final synthetic $rectTopLeft:J

.field final synthetic $size:J

.field final synthetic $style:Landroidx/compose/ui/graphics/drawscope/DrawStyle;


# direct methods
.method constructor <init>(Landroidx/compose/ui/graphics/Brush;JJLandroidx/compose/ui/graphics/drawscope/DrawStyle;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;->$brush:Landroidx/compose/ui/graphics/Brush;

    iput-wide p2, p0, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;->$rectTopLeft:J

    iput-wide p4, p0, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;->$size:J

    iput-object p6, p0, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;->$style:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 458
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;->invoke(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 13

    const-string v0, "$this$onDrawWithContent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V

    iget-object v2, p0, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;->$brush:Landroidx/compose/ui/graphics/Brush;

    iget-wide v3, p0, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;->$rectTopLeft:J

    iget-wide v5, p0, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;->$size:J

    const/4 v7, 0x0

    iget-object v8, p0, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;->$style:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x68

    const/4 v12, 0x0

    move-object v1, p1

    .line 460
    invoke-static/range {v1 .. v12}, Landroidx/compose/ui/graphics/drawscope/DrawScope$-CC;->drawRect-AsUm42w$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    return-void
.end method
