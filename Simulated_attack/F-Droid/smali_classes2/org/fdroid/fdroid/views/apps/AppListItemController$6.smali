.class Lorg/fdroid/fdroid/views/apps/AppListItemController$6;
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

    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController$6;->this$0:Lorg/fdroid/fdroid/views/apps/AppListItemController;

    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 595
    invoke-static {}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->-$$Nest$sfgetprefs()Lorg/fdroid/fdroid/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fdroid/fdroid/Preferences;->getPanicTmpSelectedSet()Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController$6;->this$0:Lorg/fdroid/fdroid/views/apps/AppListItemController;

    .line 596
    invoke-static {v0}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->-$$Nest$fgetcheckBox(Lorg/fdroid/fdroid/views/apps/AppListItemController;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->toggle()V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController$6;->this$0:Lorg/fdroid/fdroid/views/apps/AppListItemController;

    .line 597
    invoke-static {v0}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->-$$Nest$fgetcheckBox(Lorg/fdroid/fdroid/views/apps/AppListItemController;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController$6;->this$0:Lorg/fdroid/fdroid/views/apps/AppListItemController;

    .line 598
    invoke-static {v0}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->-$$Nest$fgetcurrentApp(Lorg/fdroid/fdroid/views/apps/AppListItemController;)Lorg/fdroid/fdroid/data/App;

    move-result-object v0

    iget-object v0, v0, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController$6;->this$0:Lorg/fdroid/fdroid/views/apps/AppListItemController;

    .line 600
    invoke-static {v0}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->-$$Nest$fgetcurrentApp(Lorg/fdroid/fdroid/views/apps/AppListItemController;)Lorg/fdroid/fdroid/data/App;

    move-result-object v0

    iget-object v0, v0, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 602
    :goto_0
    invoke-static {}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->-$$Nest$sfgetprefs()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/fdroid/fdroid/Preferences;->setPanicTmpSelectedSet(Ljava/util/Set;)V

    return-void
.end method
