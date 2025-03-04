.class Lorg/fdroid/fdroid/views/main/MainViewController;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MainViewController.java"


# instance fields
.field private final activity:Landroidx/appcompat/app/AppCompatActivity;

.field private final frame:Landroid/widget/FrameLayout;

.field private updatesView:Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/widget/FrameLayout;)V
    .locals 1

    .line 29
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/fdroid/fdroid/views/main/MainViewController;->updatesView:Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/main/MainViewController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/main/MainViewController;->frame:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public bindCategoriesView()V
    .locals 3

    .line 62
    new-instance v0, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/main/MainViewController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/main/MainViewController;->frame:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1, v2}, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder;-><init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public bindLatestView()V
    .locals 3

    .line 38
    new-instance v0, Lorg/fdroid/fdroid/views/main/LatestViewBinder;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/main/MainViewController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/main/MainViewController;->frame:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1, v2}, Lorg/fdroid/fdroid/views/main/LatestViewBinder;-><init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public bindSettingsView()V
    .locals 4

    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/MainViewController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 92
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$layout;->main_tab_settings:I

    iget-object v2, p0, Lorg/fdroid/fdroid/views/main/MainViewController;->frame:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method public bindSwapView()V
    .locals 3

    .line 72
    :try_start_0
    new-instance v0, Lorg/fdroid/fdroid/views/main/NearbyViewBinder;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/main/MainViewController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/main/MainViewController;->frame:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1, v2}, Lorg/fdroid/fdroid/views/main/NearbyViewBinder;-><init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/widget/FrameLayout;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public bindUpdates()V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/MainViewController;->updatesView:Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/main/MainViewController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/main/MainViewController;->frame:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1, v2}, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;-><init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/views/main/MainViewController;->updatesView:Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/MainViewController;->updatesView:Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;

    .line 49
    invoke-virtual {v0}, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;->bind()V

    return-void
.end method

.method public unbindUpdates()V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/MainViewController;->updatesView:Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;->unbind()V

    :cond_0
    return-void
.end method
