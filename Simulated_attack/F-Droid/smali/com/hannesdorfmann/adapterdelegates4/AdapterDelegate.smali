.class public abstract Lcom/hannesdorfmann/adapterdelegates4/AdapterDelegate;
.super Ljava/lang/Object;
.source "AdapterDelegate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract isForViewType(Ljava/lang/Object;I)Z
.end method

.method protected abstract onBindViewHolder(Ljava/lang/Object;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
.end method

.method protected abstract onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end method

.method protected onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method protected onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 0
    return-void
.end method
