.class final Landroidx/compose/ui/platform/RenderNodeLayer$Companion$getMatrix$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RenderNodeLayer.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/RenderNodeLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/platform/RenderNodeLayer$Companion$getMatrix$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/platform/RenderNodeLayer$Companion$getMatrix$1;

    invoke-direct {v0}, Landroidx/compose/ui/platform/RenderNodeLayer$Companion$getMatrix$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/RenderNodeLayer$Companion$getMatrix$1;->INSTANCE:Landroidx/compose/ui/platform/RenderNodeLayer$Companion$getMatrix$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 364
    check-cast p1, Landroidx/compose/ui/platform/DeviceRenderNode;

    check-cast p2, Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/platform/RenderNodeLayer$Companion$getMatrix$1;->invoke(Landroidx/compose/ui/platform/DeviceRenderNode;Landroid/graphics/Matrix;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/platform/DeviceRenderNode;Landroid/graphics/Matrix;)V
    .locals 1

    const-string v0, "rn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "matrix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    invoke-interface {p1, p2}, Landroidx/compose/ui/platform/DeviceRenderNode;->getMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method
