.class abstract Landroidx/transition/ViewGroupUtils;
.super Ljava/lang/Object;
.source "ViewGroupUtils.java"


# static fields
.field private static sTryHiddenSuppressLayout:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method static getOverlay(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayImpl;
    .locals 1

    .line 47
    new-instance v0, Landroidx/transition/ViewGroupOverlayApi18;

    invoke-direct {v0, p0}, Landroidx/transition/ViewGroupOverlayApi18;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method private static hiddenSuppressLayout(Landroid/view/ViewGroup;Z)V
    .locals 1

    sget-boolean v0, Landroidx/transition/ViewGroupUtils;->sTryHiddenSuppressLayout:Z

    if-eqz v0, :cond_0

    .line 72
    :try_start_0
    invoke-static {p0, p1}, Landroidx/transition/ViewGroupUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/ViewGroup;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    sput-boolean p0, Landroidx/transition/ViewGroupUtils;->sTryHiddenSuppressLayout:Z

    :cond_0
    :goto_0
    return-void
.end method

.method static suppressLayout(Landroid/view/ViewGroup;Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 57
    invoke-static {p0, p1}, Landroidx/transition/ViewGroupUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/ViewGroup;Z)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-static {p0, p1}, Landroidx/transition/ViewGroupUtils;->hiddenSuppressLayout(Landroid/view/ViewGroup;Z)V

    :goto_0
    return-void
.end method
