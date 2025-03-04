.class Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "AppDetailsRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->getLinearSmoothScroller(I)Landroidx/recyclerview/widget/LinearSmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$1;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 239
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1

    .line 245
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x42960000    # 75.0f

    div-float/2addr v0, p1

    return v0
.end method
