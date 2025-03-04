.class Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionsViewHolder;
.super Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;
.source "AppDetailsRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VersionsViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;


# direct methods
.method public static synthetic $r8$lambda$onyTd3hixJkEeFeGafLIRM9I7yY(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionsViewHolder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionsViewHolder;->lambda$bindModel$0(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionsViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 931
    invoke-direct {p0, p2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$bindModel$0(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionsViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 937
    invoke-static {p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetshowVersions(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p1, v0, v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$msetShowVersions(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;ZZ)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionsViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 938
    invoke-static {p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetshowVersions(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;->updateExpandableItem(Z)V

    return-void
.end method


# virtual methods
.method public bindModel()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 936
    new-instance v1, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionsViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionsViewHolder$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionsViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;->headerView:Landroid/widget/TextView;

    sget v1, Lorg/fdroid/fdroid/R$string;->versions:I

    .line 940
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionsViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 941
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetshowVersions(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;->updateExpandableItem(Z)V

    return-void
.end method

.method protected getIcon()I
    .locals 1

    .line 0
    sget v0, Lorg/fdroid/fdroid/R$drawable;->ic_versions:I

    return v0
.end method
