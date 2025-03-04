.class abstract Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;
.super Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsViewHolder;
.source "AppDetailsRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ExpandableLinearLayoutViewHolder"
.end annotation


# instance fields
.field final contentView:Landroid/widget/LinearLayout;

.field final headerView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 906
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Lorg/fdroid/fdroid/R$id;->information:I

    .line 907
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;->headerView:Landroid/widget/TextView;

    sget v0, Lorg/fdroid/fdroid/R$id;->ll_content:I

    .line 908
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;->contentView:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method protected abstract getIcon()I
.end method

.method updateExpandableItem(Z)V
    .locals 4

    .line 919
    invoke-virtual {p0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;->getIcon()I

    move-result v0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;->headerView:Landroid/widget/TextView;

    .line 920
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;->headerView:Landroid/widget/TextView;

    .line 921
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/fdroid/fdroid/R$drawable;->ic_expand_less:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;->headerView:Landroid/widget/TextView;

    .line 922
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lorg/fdroid/fdroid/R$drawable;->ic_expand_more:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;->headerView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 p1, 0x0

    .line 923
    invoke-static {v3, v0, p1, v1, p1}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
