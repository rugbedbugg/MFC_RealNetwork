.class public abstract Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AdapterDataObserver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onChanged()V
.end method

.method public onItemRangeChanged(II)V
    .locals 0

    .line 0
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0

    .line 12663
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    return-void
.end method

.method public abstract onItemRangeInserted(II)V
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    .line 0
    return-void
.end method

.method public abstract onItemRangeRemoved(II)V
.end method

.method public onStateRestorationPolicyChanged()V
    .locals 0

    .line 0
    return-void
.end method
