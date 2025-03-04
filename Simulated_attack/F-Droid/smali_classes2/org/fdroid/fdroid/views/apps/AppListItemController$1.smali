.class Lorg/fdroid/fdroid/views/apps/AppListItemController$1;
.super Landroid/view/ViewOutlineProvider;
.source "AppListItemController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/apps/AppListItemController;-><init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/views/apps/AppListItemController;

.field final synthetic val$activity:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/views/apps/AppListItemController;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController$1;->this$0:Lorg/fdroid/fdroid/views/apps/AppListItemController;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController$1;->val$activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 136
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3

    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController$1;->val$activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 139
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    const/high16 v1, 0x41100000    # 9.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iget-object v1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController$1;->this$0:Lorg/fdroid/fdroid/views/apps/AppListItemController;

    .line 147
    invoke-static {v1}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->-$$Nest$fgetinstallButton(Lorg/fdroid/fdroid/views/apps/AppListItemController;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController$1;->this$0:Lorg/fdroid/fdroid/views/apps/AppListItemController;

    .line 148
    invoke-static {v2}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->-$$Nest$fgetinstallButton(Lorg/fdroid/fdroid/views/apps/AppListItemController;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, p1

    .line 149
    invoke-virtual {p2, v0, p1, v1, v2}, Landroid/graphics/Outline;->setOval(IIII)V

    return-void
.end method
