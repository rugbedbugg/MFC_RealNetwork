.class final Landroidx/compose/foundation/text/selection/HandleImageCache;
.super Ljava/lang/Object;
.source "AndroidSelectionHandles.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/text/selection/HandleImageCache;

.field private static canvas:Landroidx/compose/ui/graphics/Canvas;

.field private static canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

.field private static imageBitmap:Landroidx/compose/ui/graphics/ImageBitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/foundation/text/selection/HandleImageCache;

    invoke-direct {v0}, Landroidx/compose/foundation/text/selection/HandleImageCache;-><init>()V

    sput-object v0, Landroidx/compose/foundation/text/selection/HandleImageCache;->INSTANCE:Landroidx/compose/foundation/text/selection/HandleImageCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCanvas()Landroidx/compose/ui/graphics/Canvas;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/foundation/text/selection/HandleImageCache;->canvas:Landroidx/compose/ui/graphics/Canvas;

    return-object v0
.end method

.method public final getCanvasDrawScope()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/foundation/text/selection/HandleImageCache;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    return-object v0
.end method

.method public final getImageBitmap()Landroidx/compose/ui/graphics/ImageBitmap;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/foundation/text/selection/HandleImageCache;->imageBitmap:Landroidx/compose/ui/graphics/ImageBitmap;

    return-object v0
.end method

.method public final setCanvas(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 0

    .line 0
    sput-object p1, Landroidx/compose/foundation/text/selection/HandleImageCache;->canvas:Landroidx/compose/ui/graphics/Canvas;

    return-void
.end method

.method public final setCanvasDrawScope(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;)V
    .locals 0

    .line 0
    sput-object p1, Landroidx/compose/foundation/text/selection/HandleImageCache;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    return-void
.end method

.method public final setImageBitmap(Landroidx/compose/ui/graphics/ImageBitmap;)V
    .locals 0

    .line 0
    sput-object p1, Landroidx/compose/foundation/text/selection/HandleImageCache;->imageBitmap:Landroidx/compose/ui/graphics/ImageBitmap;

    return-void
.end method
