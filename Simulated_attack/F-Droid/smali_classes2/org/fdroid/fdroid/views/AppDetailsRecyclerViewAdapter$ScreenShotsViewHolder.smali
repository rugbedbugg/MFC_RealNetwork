.class Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ScreenShotsViewHolder;
.super Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsViewHolder;
.source "AppDetailsRecyclerViewAdapter.java"

# interfaces
.implements Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenShotsViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ScreenShotsViewHolder$ItemDecorator;
    }
.end annotation


# instance fields
.field itemDecorator:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ScreenShotsViewHolder$ItemDecorator;

.field final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ScreenShotsViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 785
    invoke-direct {p0, p2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Lorg/fdroid/fdroid/R$id;->screenshots:I

    .line 786
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ScreenShotsViewHolder;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 787
    new-instance v0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ScreenShotsViewHolder$ItemDecorator;

    invoke-static {p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ScreenShotsViewHolder$ItemDecorator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ScreenShotsViewHolder;->itemDecorator:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ScreenShotsViewHolder$ItemDecorator;

    .line 788
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method


# virtual methods
.method public bindModel()V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ScreenShotsViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 793
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 794
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ScreenShotsViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ScreenShotsViewHolder;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 795
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 796
    new-instance v0, Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ScreenShotsViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter;-><init>(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter$Listener;)V

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ScreenShotsViewHolder;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 797
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ScreenShotsViewHolder;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    .line 798
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ScreenShotsViewHolder;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 799
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public onScreenshotClick(I)V
    .locals 5

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ScreenShotsViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 804
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/fdroid/fdroid/data/App;->getAllScreenshots()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ScreenShotsViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 805
    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ScreenShotsViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ScreenShotsViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v3}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v3

    iget-wide v3, v3, Lorg/fdroid/fdroid/data/App;->repoId:J

    invoke-static {v2, v3, v4, v0, p1}, Lorg/fdroid/fdroid/views/ScreenShotsActivity;->getStartIntent(Landroid/content/Context;JLjava/util/List;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
