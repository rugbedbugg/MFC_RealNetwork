.class Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$LinksViewHolder;
.super Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;
.source "AppDetailsRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LinksViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;


# direct methods
.method public static synthetic $r8$lambda$yEQohwvJBMvB46H15N4YZQ9g9Ic(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$LinksViewHolder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$LinksViewHolder;->lambda$bindModel$0(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$LinksViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1059
    invoke-direct {p0, p2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$bindModel$0(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;->contentView:Landroid/widget/LinearLayout;

    .line 1066
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

    .line 1067
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1068
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;->updateExpandableItem(Z)V

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$LinksViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1069
    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetrecyclerView(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$LinksViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1070
    invoke-static {p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetrecyclerView(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$LinksViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1071
    invoke-static {p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetitems(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x3

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
    .locals 9

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$LinksViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1064
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1065
    new-instance v1, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$LinksViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$LinksViewHolder$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$LinksViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;->headerView:Landroid/widget/TextView;

    sget v1, Lorg/fdroid/fdroid/R$string;->links:I

    .line 1074
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x0

    .line 1075
    invoke-virtual {p0, v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;->updateExpandableItem(Z)V

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;->contentView:Landroid/widget/LinearLayout;

    .line 1076
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$LinksViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1079
    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v1

    iget-object v1, v1, Lorg/fdroid/fdroid/data/App;->license:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$LinksViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1080
    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v1

    iget-object v1, v1, Lorg/fdroid/fdroid/data/App;->license:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    .line 1081
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://spdx.org/licenses/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".html"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$LinksViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1082
    invoke-static {v1, v7}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$muriIsSetAndCanBeOpened(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$LinksViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;->contentView:Landroid/widget/LinearLayout;

    sget v5, Lorg/fdroid/fdroid/R$string;->menu_license:I

    sget v6, Lorg/fdroid/fdroid/R$drawable;->ic_license:I

    .line 1083
    invoke-static {v3}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v1

    iget-object v8, v1, Lorg/fdroid/fdroid/data/App;->license:Ljava/lang/String;

    invoke-static/range {v3 .. v8}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$maddLinkItemView(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Landroid/view/ViewGroup;IILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$LinksViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1088
    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v2

    iget-object v2, v2, Lorg/fdroid/fdroid/data/App;->video:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$muriIsSetAndCanBeOpened(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$LinksViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;->contentView:Landroid/widget/LinearLayout;

    sget v3, Lorg/fdroid/fdroid/R$string;->menu_video:I

    sget v4, Lorg/fdroid/fdroid/R$drawable;->ic_video:I

    .line 1089
    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v5

    iget-object v5, v5, Lorg/fdroid/fdroid/data/App;->video:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$maddLinkItemView(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Landroid/view/ViewGroup;IILjava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$LinksViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1093
    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v2

    iget-object v2, v2, Lorg/fdroid/fdroid/data/App;->sourceCode:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$muriIsSetAndCanBeOpened(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$LinksViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;->contentView:Landroid/widget/LinearLayout;

    sget v3, Lorg/fdroid/fdroid/R$string;->menu_source:I

    sget v4, Lorg/fdroid/fdroid/R$drawable;->ic_source_code:I

    .line 1094
    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v5

    iget-object v5, v5, Lorg/fdroid/fdroid/data/App;->sourceCode:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$maddLinkItemView(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Landroid/view/ViewGroup;IILjava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$LinksViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1098
    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v2

    iget-object v2, v2, Lorg/fdroid/fdroid/data/App;->issueTracker:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$muriIsSetAndCanBeOpened(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$LinksViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;->contentView:Landroid/widget/LinearLayout;

    sget v3, Lorg/fdroid/fdroid/R$string;->menu_issues:I

    sget v4, Lorg/fdroid/fdroid/R$drawable;->ic_error:I

    .line 1099
    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v5

    iget-object v5, v5, Lorg/fdroid/fdroid/data/App;->issueTracker:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$maddLinkItemView(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Landroid/view/ViewGroup;IILjava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$LinksViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1103
    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v2

    iget-object v2, v2, Lorg/fdroid/fdroid/data/App;->translation:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$muriIsSetAndCanBeOpened(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$LinksViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;->contentView:Landroid/widget/LinearLayout;

    sget v3, Lorg/fdroid/fdroid/R$string;->menu_translation:I

    sget v4, Lorg/fdroid/fdroid/R$drawable;->ic_translation:I

    .line 1104
    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v5

    iget-object v5, v5, Lorg/fdroid/fdroid/data/App;->translation:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$maddLinkItemView(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Landroid/view/ViewGroup;IILjava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$LinksViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1108
    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v2

    iget-object v2, v2, Lorg/fdroid/fdroid/data/App;->changelog:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$muriIsSetAndCanBeOpened(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$LinksViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;->contentView:Landroid/widget/LinearLayout;

    sget v3, Lorg/fdroid/fdroid/R$string;->menu_changelog:I

    sget v4, Lorg/fdroid/fdroid/R$drawable;->ic_changelog:I

    .line 1109
    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v5

    iget-object v5, v5, Lorg/fdroid/fdroid/data/App;->changelog:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$maddLinkItemView(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Landroid/view/ViewGroup;IILjava/lang/String;)V

    :cond_6
    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$LinksViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1113
    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v2

    iget-object v2, v2, Lorg/fdroid/fdroid/data/App;->webSite:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$muriIsSetAndCanBeOpened(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$LinksViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;->contentView:Landroid/widget/LinearLayout;

    sget v3, Lorg/fdroid/fdroid/R$string;->menu_website:I

    sget v4, Lorg/fdroid/fdroid/R$drawable;->ic_website:I

    .line 1114
    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v5

    iget-object v5, v5, Lorg/fdroid/fdroid/data/App;->webSite:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$maddLinkItemView(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Landroid/view/ViewGroup;IILjava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$LinksViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1118
    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/fdroid/fdroid/R$string;->app_details_subject:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$LinksViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v4}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v4

    iget-object v4, v4, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$LinksViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1119
    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v1

    iget-object v1, v1, Lorg/fdroid/fdroid/data/App;->authorEmail:Ljava/lang/String;

    if-nez v1, :cond_8

    const/4 v0, 0x0

    goto :goto_0

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mailto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$LinksViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v2

    iget-object v2, v2, Lorg/fdroid/fdroid/data/App;->authorEmail:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?subject="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$LinksViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1120
    invoke-static {v1, v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$muriIsSetAndCanBeOpened(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$LinksViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;->contentView:Landroid/widget/LinearLayout;

    sget v3, Lorg/fdroid/fdroid/R$string;->menu_email:I

    sget v4, Lorg/fdroid/fdroid/R$drawable;->ic_email:I

    .line 1121
    invoke-static {v1, v2, v3, v4, v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$maddLinkItemView(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Landroid/view/ViewGroup;IILjava/lang/String;)V

    :cond_9
    return-void
.end method

.method protected getIcon()I
    .locals 1

    .line 0
    sget v0, Lorg/fdroid/fdroid/R$drawable;->ic_website:I

    return v0
.end method
