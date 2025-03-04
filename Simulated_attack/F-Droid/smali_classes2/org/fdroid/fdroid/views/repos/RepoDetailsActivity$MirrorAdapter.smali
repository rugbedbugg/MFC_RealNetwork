.class Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RepoDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MirrorAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter$MirrorViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private final disabledMirrors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mirrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/download/Mirror;",
            ">;"
        }
    .end annotation
.end field

.field private final repo:Lorg/fdroid/database/Repository;

.field final synthetic this$0:Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;


# direct methods
.method public static synthetic $r8$lambda$gqct6VWsgh_xuXXxpnUiPcp08Ww(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;Ljava/lang/String;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;->lambda$onBindViewHolder$1(Ljava/lang/String;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$loQaXuhv0PYKFQ9e3dVl2FZ8zTs(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;->lambda$onBindViewHolder$0(Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;Lorg/fdroid/database/Repository;I)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;->this$0:Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;

    .line 527
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;->repo:Lorg/fdroid/database/Repository;

    .line 529
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;->mirrors:Ljava/util/List;

    .line 530
    new-instance p1, Ljava/util/HashSet;

    invoke-virtual {p2}, Lorg/fdroid/database/Repository;->getDisabledMirrors()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;->disabledMirrors:Ljava/util/HashSet;

    return-void
.end method

.method constructor <init>(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;Lorg/fdroid/database/Repository;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/database/Repository;",
            "Ljava/util/List<",
            "Lorg/fdroid/download/Mirror;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;->this$0:Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;

    .line 521
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;->repo:Lorg/fdroid/database/Repository;

    iput-object p3, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;->mirrors:Ljava/util/List;

    .line 524
    new-instance p1, Ljava/util/HashSet;

    invoke-virtual {p2}, Lorg/fdroid/database/Repository;->getDisabledMirrors()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;->disabledMirrors:Ljava/util/HashSet;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;->this$0:Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;

    .line 580
    invoke-static {v0}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->-$$Nest$fgetrepositoryDao(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;)Lorg/fdroid/database/RepositoryDao;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;->repo:Lorg/fdroid/database/Repository;

    invoke-virtual {v1}, Lorg/fdroid/database/Repository;->getRepoId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p1}, Lorg/fdroid/database/RepositoryDao;->updateDisabledMirrors(JLjava/util/List;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method private synthetic lambda$onBindViewHolder$1(Ljava/lang/String;Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p3, :cond_0

    iget-object p2, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;->disabledMirrors:Ljava/util/HashSet;

    .line 566
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;->disabledMirrors:Ljava/util/HashSet;

    .line 568
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;->repo:Lorg/fdroid/database/Repository;

    const/4 p2, 0x1

    .line 571
    invoke-virtual {p1, p2}, Lorg/fdroid/database/Repository;->getAllMirrors(Z)Ljava/util/List;

    move-result-object p1

    .line 572
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;->disabledMirrors:Ljava/util/HashSet;

    .line 573
    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result p2

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;->disabledMirrors:Ljava/util/HashSet;

    iget-object p2, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;->repo:Lorg/fdroid/database/Repository;

    .line 575
    invoke-virtual {p2}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;->this$0:Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;

    .line 576
    invoke-static {p1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->-$$Nest$fgetadapterToNotify(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;)Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 578
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;->disabledMirrors:Ljava/util/HashSet;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p2, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;->this$0:Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;

    .line 579
    new-instance p3, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;Ljava/util/ArrayList;)V

    invoke-static {p2, p3}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->-$$Nest$mrunOffUiThread(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;->mirrors:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 597
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 507
    check-cast p1, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter$MirrorViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;->onBindViewHolder(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter$MirrorViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter$MirrorViewHolder;I)V
    .locals 3

    .line 548
    iget-object v0, p1, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter$MirrorViewHolder;->view:Landroid/view/View;

    sget v1, Lorg/fdroid/fdroid/R$id;->repo_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;->mirrors:Ljava/util/List;

    .line 549
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/fdroid/download/Mirror;

    .line 550
    invoke-virtual {p2}, Lorg/fdroid/download/Mirror;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    invoke-virtual {p2}, Lorg/fdroid/download/Mirror;->getBaseUrl()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;->disabledMirrors:Ljava/util/HashSet;

    .line 554
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 555
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 560
    :goto_0
    iget-object v1, p1, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter$MirrorViewHolder;->view:Landroid/view/View;

    sget v2, Lorg/fdroid/fdroid/R$id;->repo_switch:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    const/4 v2, 0x0

    .line 562
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 563
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 564
    new-instance v0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 585
    iget-object p2, p1, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter$MirrorViewHolder;->view:Landroid/view/View;

    sget v0, Lorg/fdroid/fdroid/R$id;->repo_unverified:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x8

    .line 586
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 588
    iget-object p1, p1, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter$MirrorViewHolder;->view:Landroid/view/View;

    sget p2, Lorg/fdroid/fdroid/R$id;->repo_unsigned:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 589
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 507
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter$MirrorViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter$MirrorViewHolder;
    .locals 2

    .line 542
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lorg/fdroid/fdroid/R$layout;->repo_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 543
    new-instance p2, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter$MirrorViewHolder;

    invoke-direct {p2, p0, p1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter$MirrorViewHolder;-><init>(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method setUserMirrors(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 534
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;->mirrors:Ljava/util/List;

    .line 535
    new-instance v2, Lorg/fdroid/download/Mirror;

    invoke-direct {v2, v0}, Lorg/fdroid/download/Mirror;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
