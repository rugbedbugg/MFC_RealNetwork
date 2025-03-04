.class public Landroidx/constraintlayout/core/state/WidgetFrame;
.super Ljava/lang/Object;
.source "WidgetFrame.java"


# instance fields
.field public alpha:F

.field public bottom:I

.field public interpolatedPos:F

.field public left:I

.field public final mCustom:Ljava/util/HashMap;

.field public name:Ljava/lang/String;

.field public pivotX:F

.field public pivotY:F

.field public right:I

.field public rotationX:F

.field public rotationY:F

.field public rotationZ:F

.field public scaleX:F

.field public scaleY:F

.field public top:I

.field public translationX:F

.field public translationY:F

.field public translationZ:F

.field public visibility:I

.field public widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->alpha:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->interpolatedPos:F

    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->visibility:I

    .line 62
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->name:Ljava/lang/String;

    iput-object p1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    return-void
.end method
