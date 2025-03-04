.class public Lorg/fdroid/fdroid/panic/SelectInstalledAppListItemController;
.super Lorg/fdroid/fdroid/views/installed/InstalledAppListItemController;
.source "SelectInstalledAppListItemController.java"


# instance fields
.field private final selectedApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Landroid/view/View;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/views/installed/InstalledAppListItemController;-><init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V

    iput-object p3, p0, Lorg/fdroid/fdroid/panic/SelectInstalledAppListItemController;->selectedApps:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method protected getCurrentViewState(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)Lorg/fdroid/fdroid/views/apps/AppListItemState;
    .locals 1

    .line 33
    new-instance p2, Lorg/fdroid/fdroid/views/apps/AppListItemState;

    invoke-direct {p2, p1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;-><init>(Lorg/fdroid/fdroid/data/App;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/panic/SelectInstalledAppListItemController;->selectedApps:Ljava/util/Set;

    iget-object p1, p1, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->setCheckBoxStatus(Z)Lorg/fdroid/fdroid/views/apps/AppListItemState;

    move-result-object p1

    return-object p1
.end method

.method protected onActionButtonPressed(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V
    .locals 0

    .line 38
    invoke-super {p0, p1, p2}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->onActionButtonPressed(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V

    return-void
.end method
