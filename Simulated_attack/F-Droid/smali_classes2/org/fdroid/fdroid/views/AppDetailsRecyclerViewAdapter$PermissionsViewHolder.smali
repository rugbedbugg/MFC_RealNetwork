.class Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$PermissionsViewHolder;
.super Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;
.source "AppDetailsRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermissionsViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;


# direct methods
.method public static synthetic $r8$lambda$Z7FBMhEIDP9e0MAQeJM1ckGg54A(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$PermissionsViewHolder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$PermissionsViewHolder;->lambda$bindModel$0(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$PermissionsViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1026
    invoke-direct {p0, p2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$bindModel$0(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;->contentView:Landroid/widget/LinearLayout;

    .line 1032
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;->contentView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    .line 1033
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1034
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;->updateExpandableItem(Z)V

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$PermissionsViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1035
    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetrecyclerView(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$PermissionsViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1036
    invoke-static {p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetrecyclerView(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$PermissionsViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1037
    invoke-static {p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetitems(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v1, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_2
    return-void
.end method


# virtual methods
.method public bindModel()V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1031
    new-instance v1, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$PermissionsViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$PermissionsViewHolder$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$PermissionsViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;->headerView:Landroid/widget/TextView;

    sget v1, Lorg/fdroid/fdroid/R$string;->permissions:I

    .line 1040
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x0

    .line 1041
    invoke-virtual {p0, v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;->updateExpandableItem(Z)V

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;->contentView:Landroid/widget/LinearLayout;

    .line 1042
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$PermissionsViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1043
    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetversions(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1044
    new-instance v1, Lorg/fdroid/fdroid/privileged/views/AppDiff;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$PermissionsViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$PermissionsViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v3}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetversions(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/data/Apk;

    invoke-direct {v1, v2, v0}, Lorg/fdroid/fdroid/privileged/views/AppDiff;-><init>(Landroid/content/Context;Lorg/fdroid/fdroid/data/Apk;)V

    .line 1045
    new-instance v0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$PermissionsViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, v1, Lorg/fdroid/fdroid/privileged/views/AppDiff;->apkPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {v0, v2, v1}, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;->contentView:Landroid/widget/LinearLayout;

    const v2, 0xffff

    .line 1046
    invoke-virtual {v0, v2}, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->getPermissionsView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected getIcon()I
    .locals 1

    .line 0
    sget v0, Lorg/fdroid/fdroid/R$drawable;->ic_lock:I

    return v0
.end method
