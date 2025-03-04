.class Lorg/fdroid/fdroid/views/apps/AppListItemController$4;
.super Ljava/lang/Object;
.source "AppListItemController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/views/apps/AppListItemController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/views/apps/AppListItemController;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/views/apps/AppListItemController;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController$4;->this$0:Lorg/fdroid/fdroid/views/apps/AppListItemController;

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController$4;->this$0:Lorg/fdroid/fdroid/views/apps/AppListItemController;

    .line 492
    invoke-static {p1}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->-$$Nest$fgetcurrentApp(Lorg/fdroid/fdroid/views/apps/AppListItemController;)Lorg/fdroid/fdroid/data/App;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController$4;->this$0:Lorg/fdroid/fdroid/views/apps/AppListItemController;

    .line 495
    invoke-static {p1}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->-$$Nest$fgetsecondaryButton(Lorg/fdroid/fdroid/views/apps/AppListItemController;)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController$4;->this$0:Lorg/fdroid/fdroid/views/apps/AppListItemController;

    invoke-static {p1}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->-$$Nest$fgetsecondaryButton(Lorg/fdroid/fdroid/views/apps/AppListItemController;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController$4;->this$0:Lorg/fdroid/fdroid/views/apps/AppListItemController;

    .line 496
    invoke-static {p1}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->-$$Nest$monSecondaryButtonPressed(Lorg/fdroid/fdroid/views/apps/AppListItemController;)V

    return-void
.end method
