.class abstract Landroidx/transition/ViewUtilsBase;
.super Ljava/lang/Object;
.source "ViewUtilsBase.java"


# static fields
.field private static sViewFlagsField:Ljava/lang/reflect/Field;

.field private static sViewFlagsFieldFetched:Z


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clearNonTransitionAlpha(Landroid/view/View;)V
.end method

.method public abstract getTransitionAlpha(Landroid/view/View;)F
.end method

.method public abstract saveNonTransitionAlpha(Landroid/view/View;)V
.end method

.method public abstract setLeftTopRightBottom(Landroid/view/View;IIII)V
.end method

.method public abstract setTransitionAlpha(Landroid/view/View;F)V
.end method

.method public setTransitionVisibility(Landroid/view/View;I)V
    .locals 3

    sget-boolean v0, Landroidx/transition/ViewUtilsBase;->sViewFlagsFieldFetched:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "mViewFlags"

    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/transition/ViewUtilsBase;->sViewFlagsField:Ljava/lang/reflect/Field;

    .line 158
    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "ViewUtilsBase"

    const-string v2, "fetchViewFlagsField: "

    .line 160
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sput-boolean v0, Landroidx/transition/ViewUtilsBase;->sViewFlagsFieldFetched:Z

    :cond_0
    sget-object v0, Landroidx/transition/ViewUtilsBase;->sViewFlagsField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 166
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sget-object v1, Landroidx/transition/ViewUtilsBase;->sViewFlagsField:Ljava/lang/reflect/Field;

    and-int/lit8 v0, v0, -0xd

    or-int/2addr p2, v0

    .line 167
    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void
.end method

.method public abstract transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V
.end method

.method public abstract transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V
.end method
