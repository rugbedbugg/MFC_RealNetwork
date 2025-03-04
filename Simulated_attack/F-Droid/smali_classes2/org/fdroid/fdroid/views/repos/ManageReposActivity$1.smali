.class Lorg/fdroid/fdroid/views/repos/ManageReposActivity$1;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.source "ManageReposActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/views/repos/ManageReposActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastFromPos:I

.field private lastToPos:I

.field final synthetic this$0:Lorg/fdroid/fdroid/views/repos/ManageReposActivity;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/views/repos/ManageReposActivity;II)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$1;->this$0:Lorg/fdroid/fdroid/views/repos/ManageReposActivity;

    .line 68
    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$1;->lastFromPos:I

    iput p1, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$1;->lastToPos:I

    return-void
.end method


# virtual methods
.method public isLongPressDragEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$1;->this$0:Lorg/fdroid/fdroid/views/repos/ManageReposActivity;

    .line 107
    invoke-static {v0}, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;->-$$Nest$fgetisItemReorderingEnabled(Lorg/fdroid/fdroid/views/repos/ManageReposActivity;)Z

    move-result v0

    return v0
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 76
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    .line 77
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p2

    iget-object p3, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$1;->this$0:Lorg/fdroid/fdroid/views/repos/ManageReposActivity;

    .line 78
    invoke-static {p3}, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;->-$$Nest$fgetrepoAdapter(Lorg/fdroid/fdroid/views/repos/ManageReposActivity;)Lorg/fdroid/fdroid/views/repos/RepoAdapter;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    iget p3, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$1;->lastFromPos:I

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    iput p1, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$1;->lastFromPos:I

    :cond_0
    iput p2, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$1;->lastToPos:I

    const/4 p1, 0x1

    return p1
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 86
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    if-nez p2, :cond_2

    iget p1, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$1;->lastFromPos:I

    iget p2, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$1;->lastToPos:I

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$1;->this$0:Lorg/fdroid/fdroid/views/repos/ManageReposActivity;

    .line 89
    invoke-static {p1}, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;->-$$Nest$fgetrepoAdapter(Lorg/fdroid/fdroid/views/repos/ManageReposActivity;)Lorg/fdroid/fdroid/views/repos/RepoAdapter;

    move-result-object p1

    iget p2, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$1;->lastFromPos:I

    invoke-virtual {p1, p2}, Lorg/fdroid/fdroid/views/repos/RepoAdapter;->getItem(I)Lorg/fdroid/database/Repository;

    move-result-object p1

    iget-object p2, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$1;->this$0:Lorg/fdroid/fdroid/views/repos/ManageReposActivity;

    .line 90
    invoke-static {p2}, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;->-$$Nest$fgetrepoAdapter(Lorg/fdroid/fdroid/views/repos/ManageReposActivity;)Lorg/fdroid/fdroid/views/repos/RepoAdapter;

    move-result-object p2

    iget v0, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$1;->lastToPos:I

    invoke-virtual {p2, v0}, Lorg/fdroid/fdroid/views/repos/RepoAdapter;->getItem(I)Lorg/fdroid/database/Repository;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$1;->this$0:Lorg/fdroid/fdroid/views/repos/ManageReposActivity;

    const/4 v1, 0x0

    .line 93
    invoke-static {v0, v1}, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;->-$$Nest$fputisItemReorderingEnabled(Lorg/fdroid/fdroid/views/repos/ManageReposActivity;Z)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$1;->this$0:Lorg/fdroid/fdroid/views/repos/ManageReposActivity;

    .line 94
    invoke-static {v0}, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;->-$$Nest$fgetrepoManager(Lorg/fdroid/fdroid/views/repos/ManageReposActivity;)Lorg/fdroid/index/RepoManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/fdroid/index/RepoManager;->reorderRepositories(Lorg/fdroid/database/Repository;Lorg/fdroid/database/Repository;)V

    goto :goto_0

    .line 96
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not find one of the repos: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$1;->lastFromPos:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$1;->lastToPos:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ManageReposActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 p1, -0x1

    iput p1, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$1;->lastFromPos:I

    iput p1, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$1;->lastToPos:I

    :cond_2
    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 0
    return-void
.end method
