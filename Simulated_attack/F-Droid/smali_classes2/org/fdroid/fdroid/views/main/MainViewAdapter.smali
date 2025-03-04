.class Lorg/fdroid/fdroid/views/main/MainViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MainViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private final activity:Landroidx/appcompat/app/AppCompatActivity;

.field private final positionToId:Landroid/util/SparseIntArray;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 3

    .line 55
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/main/MainViewAdapter;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const/4 v0, 0x1

    .line 57
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 59
    new-instance v0, Landroid/widget/PopupMenu;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 60
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 61
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    sget v1, Lorg/fdroid/fdroid/R$menu;->main_activity_screens:I

    invoke-virtual {p1, v1, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 62
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v1

    invoke-direct {p1, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/main/MainViewAdapter;->positionToId:Landroid/util/SparseIntArray;

    const/4 p1, 0x0

    .line 63
    :goto_0
    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/main/MainViewAdapter;->positionToId:Landroid/util/SparseIntArray;

    .line 64
    invoke-interface {v0, p1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->append(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static createEmptyView(Landroidx/appcompat/app/AppCompatActivity;)Lorg/fdroid/fdroid/views/main/MainViewController;
    .locals 3

    .line 108
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 109
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    new-instance v1, Lorg/fdroid/fdroid/views/main/MainViewController;

    invoke-direct {v1, p0, v0}, Lorg/fdroid/fdroid/views/main/MainViewController;-><init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/widget/FrameLayout;)V

    return-object v1
.end method


# virtual methods
.method adapterPositionFromItemId(I)I
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/MainViewAdapter;->positionToId:Landroid/util/SparseIntArray;

    .line 139
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result p1

    return p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/MainViewAdapter;->positionToId:Landroid/util/SparseIntArray;

    .line 124
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/MainViewAdapter;->positionToId:Landroid/util/SparseIntArray;

    .line 135
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/MainViewAdapter;->positionToId:Landroid/util/SparseIntArray;

    .line 129
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 49
    check-cast p1, Lorg/fdroid/fdroid/views/main/MainViewController;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/main/MainViewAdapter;->onBindViewHolder(Lorg/fdroid/fdroid/views/main/MainViewController;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/fdroid/fdroid/views/main/MainViewController;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/main/MainViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/fdroid/fdroid/views/main/MainViewController;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/fdroid/fdroid/views/main/MainViewController;
    .locals 2

    iget-object p1, p0, Lorg/fdroid/fdroid/views/main/MainViewAdapter;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 89
    invoke-static {p1}, Lorg/fdroid/fdroid/views/main/MainViewAdapter;->createEmptyView(Landroidx/appcompat/app/AppCompatActivity;)Lorg/fdroid/fdroid/views/main/MainViewController;

    move-result-object p1

    sget v0, Lorg/fdroid/fdroid/R$id;->latest:I

    if-ne p2, v0, :cond_0

    .line 91
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/main/MainViewController;->bindLatestView()V

    goto :goto_0

    :cond_0
    sget v0, Lorg/fdroid/fdroid/R$id;->categories:I

    if-ne p2, v0, :cond_1

    .line 93
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/main/MainViewController;->bindCategoriesView()V

    goto :goto_0

    :cond_1
    sget v0, Lorg/fdroid/fdroid/R$id;->nearby:I

    if-ne p2, v0, :cond_2

    .line 95
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/main/MainViewController;->bindSwapView()V

    goto :goto_0

    :cond_2
    sget v0, Lorg/fdroid/fdroid/R$id;->updates:I

    if-ne p2, v0, :cond_3

    goto :goto_0

    :cond_3
    sget v0, Lorg/fdroid/fdroid/R$id;->settings:I

    if-ne p2, v0, :cond_4

    .line 100
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/main/MainViewController;->bindSettingsView()V

    :goto_0
    return-object p1

    .line 102
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown view type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 49
    check-cast p1, Lorg/fdroid/fdroid/views/main/MainViewController;

    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/views/main/MainViewAdapter;->onViewAttachedToWindow(Lorg/fdroid/fdroid/views/main/MainViewController;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lorg/fdroid/fdroid/views/main/MainViewController;)V
    .locals 4

    .line 78
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/fdroid/fdroid/views/main/MainViewAdapter;->getItemId(I)J

    move-result-wide v0

    sget v2, Lorg/fdroid/fdroid/R$id;->updates:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 80
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/main/MainViewController;->bindUpdates()V

    goto :goto_0

    :cond_0
    sget p1, Lorg/fdroid/fdroid/R$id;->nearby:I

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/fdroid/fdroid/views/main/MainViewAdapter;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 82
    invoke-static {p1}, Lorg/fdroid/fdroid/views/main/NearbyViewBinder;->updateUsbOtg(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 49
    check-cast p1, Lorg/fdroid/fdroid/views/main/MainViewController;

    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/views/main/MainViewAdapter;->onViewDetachedFromWindow(Lorg/fdroid/fdroid/views/main/MainViewController;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lorg/fdroid/fdroid/views/main/MainViewController;)V
    .locals 4

    .line 70
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/fdroid/fdroid/views/main/MainViewAdapter;->getItemId(I)J

    move-result-wide v0

    sget v2, Lorg/fdroid/fdroid/R$id;->updates:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/main/MainViewController;->unbindUpdates()V

    :cond_0
    return-void
.end method
