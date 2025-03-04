.class public Lorg/fdroid/fdroid/views/updates/items/UpdateableApp$Delegate;
.super Lcom/hannesdorfmann/adapterdelegates4/AdapterDelegate;
.source "UpdateableApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/views/updates/items/UpdateableApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Delegate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hannesdorfmann/adapterdelegates4/AdapterDelegate;"
    }
.end annotation


# instance fields
.field private final activity:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/hannesdorfmann/adapterdelegates4/AdapterDelegate;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableApp$Delegate;->activity:Landroidx/appcompat/app/AppCompatActivity;

    return-void
.end method


# virtual methods
.method protected bridge synthetic isForViewType(Ljava/lang/Object;I)Z
    .locals 0

    .line 36
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/updates/items/UpdateableApp$Delegate;->isForViewType(Ljava/util/List;I)Z

    move-result p1

    return p1
.end method

.method protected isForViewType(Ljava/util/List;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/views/updates/items/AppUpdateData;",
            ">;I)Z"
        }
    .end annotation

    .line 46
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lorg/fdroid/fdroid/views/updates/items/UpdateableApp;

    return p1
.end method

.method protected bridge synthetic onBindViewHolder(Ljava/lang/Object;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 0

    .line 36
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/fdroid/fdroid/views/updates/items/UpdateableApp$Delegate;->onBindViewHolder(Ljava/util/List;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    return-void
.end method

.method protected onBindViewHolder(Ljava/util/List;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/views/updates/items/AppUpdateData;",
            ">;I",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/views/updates/items/UpdateableApp;

    .line 60
    check-cast p3, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController;

    iget-object p2, p1, Lorg/fdroid/fdroid/views/updates/items/UpdateableApp;->app:Lorg/fdroid/fdroid/data/App;

    iget-object p1, p1, Lorg/fdroid/fdroid/views/updates/items/UpdateableApp;->apk:Lorg/fdroid/fdroid/data/Apk;

    const/4 p4, 0x0

    invoke-virtual {p3, p2, p1, p4}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->bindModel(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)V

    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5

    .line 52
    new-instance v0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableApp$Delegate;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lorg/fdroid/fdroid/R$layout;->updateable_app_list_item:I

    const/4 v4, 0x0

    .line 53
    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController;-><init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V

    return-object v0
.end method
