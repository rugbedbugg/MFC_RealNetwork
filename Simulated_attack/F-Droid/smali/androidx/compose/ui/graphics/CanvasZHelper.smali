.class final Landroidx/compose/ui/graphics/CanvasZHelper;
.super Ljava/lang/Object;
.source "CanvasUtils.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/graphics/CanvasZHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/graphics/CanvasZHelper;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/CanvasZHelper;-><init>()V

    sput-object v0, Landroidx/compose/ui/graphics/CanvasZHelper;->INSTANCE:Landroidx/compose/ui/graphics/CanvasZHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final enableZ(Landroid/graphics/Canvas;Z)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 96
    invoke-static {p1}, Landroidx/compose/ui/graphics/CanvasZHelper$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-static {p1}, Landroidx/compose/ui/graphics/CanvasZHelper$$ExternalSyntheticApiModelOutline1;->m(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method
