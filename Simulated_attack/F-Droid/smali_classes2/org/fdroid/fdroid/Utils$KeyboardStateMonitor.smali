.class public Lorg/fdroid/fdroid/Utils$KeyboardStateMonitor;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyboardStateMonitor"
.end annotation


# instance fields
.field private visible:Z


# direct methods
.method public static synthetic $r8$lambda$x707Bl2_KJ6C1oz664EU2y3mjfY(Lorg/fdroid/fdroid/Utils$KeyboardStateMonitor;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/Utils$KeyboardStateMonitor;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/fdroid/fdroid/Utils$KeyboardStateMonitor;->visible:Z

    .line 885
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/fdroid/fdroid/Utils$KeyboardStateMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/fdroid/fdroid/Utils$KeyboardStateMonitor$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/Utils$KeyboardStateMonitor;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 7

    .line 886
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 887
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 888
    invoke-virtual {p1, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int p1, v0, p1

    int-to-double v1, p1

    int-to-double v3, v0

    const-wide v5, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v3, v5

    cmpl-double p1, v1, v3

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/fdroid/fdroid/Utils$KeyboardStateMonitor;->visible:Z

    return-void
.end method


# virtual methods
.method public isKeyboardVisible()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/fdroid/fdroid/Utils$KeyboardStateMonitor;->visible:Z

    return v0
.end method
