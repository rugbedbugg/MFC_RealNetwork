.class public Lorg/fdroid/fdroid/panic/SelectInstalledAppListAdapter;
.super Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;
.source "SelectInstalledAppListAdapter.java"


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
.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1

    .line 20
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 21
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lorg/fdroid/fdroid/Preferences;->getPanicWipeSet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/panic/SelectInstalledAppListAdapter;->selectedApps:Ljava/util/Set;

    .line 23
    invoke-virtual {p1, v0}, Lorg/fdroid/fdroid/Preferences;->setPanicTmpSelectedSet(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/panic/SelectInstalledAppListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/fdroid/fdroid/views/installed/InstalledAppListItemController;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/fdroid/fdroid/views/installed/InstalledAppListItemController;
    .locals 2

    iget-object p2, p0, Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 29
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lorg/fdroid/fdroid/R$layout;->installed_app_list_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 30
    new-instance p2, Lorg/fdroid/fdroid/panic/SelectInstalledAppListItemController;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/installed/InstalledAppListAdapter;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v1, p0, Lorg/fdroid/fdroid/panic/SelectInstalledAppListAdapter;->selectedApps:Ljava/util/Set;

    invoke-direct {p2, v0, p1, v1}, Lorg/fdroid/fdroid/panic/SelectInstalledAppListItemController;-><init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Ljava/util/Set;)V

    return-object p2
.end method
