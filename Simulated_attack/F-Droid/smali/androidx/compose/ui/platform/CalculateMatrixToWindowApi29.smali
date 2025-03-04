.class final Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;
.super Ljava/lang/Object;
.source "AndroidComposeView.android.kt"

# interfaces
.implements Landroidx/compose/ui/platform/CalculateMatrixToWindow;


# instance fields
.field private final tmpMatrix:Landroid/graphics/Matrix;

.field private final tmpPosition:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1973
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1975
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;->tmpMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;->tmpPosition:[I

    return-void
.end method


# virtual methods
.method public calculateMatrixToWindow-EL8BTi8(Landroid/view/View;[F)V
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "matrix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;->tmpMatrix:Landroid/graphics/Matrix;

    .line 1980
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;->tmpMatrix:Landroid/graphics/Matrix;

    .line 1981
    invoke-static {p1, v0}, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 1982
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1984
    :goto_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1985
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 1986
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;->tmpPosition:[I

    .line 1988
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;->tmpPosition:[I

    const/4 v1, 0x0

    .line 1989
    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    .line 1990
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object p1, p0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;->tmpPosition:[I

    .line 1991
    aget v0, p1, v1

    aget p1, p1, v3

    iget-object v1, p0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;->tmpMatrix:Landroid/graphics/Matrix;

    sub-int/2addr v0, v2

    int-to-float v0, v0

    sub-int/2addr p1, v4

    int-to-float p1, p1

    .line 1992
    invoke-virtual {v1, v0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;->tmpMatrix:Landroid/graphics/Matrix;

    .line 1993
    invoke-static {p2, p1}, Landroidx/compose/ui/graphics/AndroidMatrixConversions_androidKt;->setFrom-tU-YjHk([FLandroid/graphics/Matrix;)V

    return-void
.end method
