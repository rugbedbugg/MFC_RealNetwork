.class public Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$Delegate;
.super Lcom/hannesdorfmann/adapterdelegates4/AdapterDelegate;
.source "UpdateableAppsHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader;
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
.field private final inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/hannesdorfmann/adapterdelegates4/AdapterDelegate;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$Delegate;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method protected bridge synthetic isForViewType(Ljava/lang/Object;I)Z
    .locals 0

    .line 42
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$Delegate;->isForViewType(Ljava/util/List;I)Z

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

    .line 52
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader;

    return p1
.end method

.method protected bridge synthetic onBindViewHolder(Ljava/lang/Object;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 0

    .line 42
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$Delegate;->onBindViewHolder(Ljava/util/List;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

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

    .line 64
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader;

    .line 65
    check-cast p3, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$ViewHolder;

    invoke-virtual {p3, p1}, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$ViewHolder;->bindHeader(Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader;)V

    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    .line 58
    new-instance v0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$ViewHolder;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$Delegate;->inflater:Landroid/view/LayoutInflater;

    sget v2, Lorg/fdroid/fdroid/R$layout;->updates_header:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method
