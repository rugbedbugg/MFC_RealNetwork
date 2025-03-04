.class Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RepoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/views/repos/RepoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RepoViewHolder"
.end annotation


# instance fields
.field private final addressView:Landroid/widget/TextView;

.field private final imageView:Landroid/widget/ImageView;

.field private final nameView:Landroid/widget/TextView;

.field private final rootView:Landroid/view/View;

.field private final switchView:Landroid/widget/CompoundButton;

.field final synthetic this$0:Lorg/fdroid/fdroid/views/repos/RepoAdapter;

.field private final unsignedView:Landroid/view/View;

.field private final unverifiedView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$Xpr-nnPUvrGIHtTcmfjfZNFKXLc(Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;Lorg/fdroid/database/Repository;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;->lambda$bind$1(Lorg/fdroid/database/Repository;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m8hB8_Jf0xqdi7Ip57y7Hu2dSks(Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;Lorg/fdroid/database/Repository;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;->lambda$bind$0(Lorg/fdroid/database/Repository;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbind(Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;Lorg/fdroid/database/Repository;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;->bind(Lorg/fdroid/database/Repository;)V

    return-void
.end method

.method constructor <init>(Lorg/fdroid/fdroid/views/repos/RepoAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;->this$0:Lorg/fdroid/fdroid/views/repos/RepoAdapter;

    .line 98
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;->rootView:Landroid/view/View;

    sget p1, Lorg/fdroid/fdroid/R$id;->repo_icon:I

    .line 100
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;->imageView:Landroid/widget/ImageView;

    sget p1, Lorg/fdroid/fdroid/R$id;->repo_switch:I

    .line 101
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CompoundButton;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;->switchView:Landroid/widget/CompoundButton;

    sget p1, Lorg/fdroid/fdroid/R$id;->repo_name:I

    .line 102
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;->nameView:Landroid/widget/TextView;

    sget p1, Lorg/fdroid/fdroid/R$id;->repo_address:I

    .line 103
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;->addressView:Landroid/widget/TextView;

    sget p1, Lorg/fdroid/fdroid/R$id;->repo_unsigned:I

    .line 104
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;->unsignedView:Landroid/view/View;

    sget p1, Lorg/fdroid/fdroid/R$id;->repo_unverified:I

    .line 105
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;->unverifiedView:Landroid/view/View;

    return-void
.end method

.method private bind(Lorg/fdroid/database/Repository;)V
    .locals 4

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;->rootView:Landroid/view/View;

    .line 109
    new-instance v1, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;Lorg/fdroid/database/Repository;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;->switchView:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    .line 114
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;->switchView:Landroid/widget/CompoundButton;

    .line 115
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;->switchView:Landroid/widget/CompoundButton;

    .line 119
    new-instance v1, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder$$ExternalSyntheticLambda1;-><init>(Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;Lorg/fdroid/database/Repository;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    invoke-static {}, Landroidx/core/os/LocaleListCompat;->getDefault()Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/fdroid/database/Repository;->getIcon(Landroidx/core/os/LocaleListCompat;)Lorg/fdroid/index/v2/FileV2;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;->imageView:Landroid/widget/ImageView;

    .line 124
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;->imageView:Landroid/widget/ImageView;

    sget v1, Lorg/fdroid/fdroid/R$drawable;->ic_repo_app_default:I

    .line 125
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;->imageView:Landroid/widget/ImageView;

    .line 127
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 128
    invoke-static {p1, v0}, Lorg/fdroid/fdroid/Utils;->getGlideModel(Lorg/fdroid/database/Repository;Lorg/fdroid/IndexFile;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 129
    invoke-static {}, Lorg/fdroid/fdroid/Utils;->getAlwaysShowIconRequestOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;->imageView:Landroid/widget/ImageView;

    .line 130
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;->nameView:Landroid/widget/TextView;

    .line 132
    invoke-static {}, Lorg/fdroid/fdroid/data/App;->getLocales()Landroidx/core/os/LocaleListCompat;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/fdroid/database/Repository;->getName(Landroidx/core/os/LocaleListCompat;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;->addressView:Landroid/widget/TextView;

    .line 133
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getCertificate()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;->unsignedView:Landroid/view/View;

    .line 135
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;->unverifiedView:Landroid/view/View;

    .line 136
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 137
    :cond_1
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getCertificate()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;->unsignedView:Landroid/view/View;

    .line 138
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;->unverifiedView:Landroid/view/View;

    .line 139
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;->unsignedView:Landroid/view/View;

    .line 141
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;->unverifiedView:Landroid/view/View;

    .line 142
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$bind$0(Lorg/fdroid/database/Repository;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;->this$0:Lorg/fdroid/fdroid/views/repos/RepoAdapter;

    .line 109
    invoke-static {p2}, Lorg/fdroid/fdroid/views/repos/RepoAdapter;->-$$Nest$fgetrepoItemListener(Lorg/fdroid/fdroid/views/repos/RepoAdapter;)Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoItemListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoItemListener;->onClicked(Lorg/fdroid/database/Repository;)V

    return-void
.end method

.method private synthetic lambda$bind$1(Lorg/fdroid/database/Repository;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;->this$0:Lorg/fdroid/fdroid/views/repos/RepoAdapter;

    .line 120
    invoke-static {p2}, Lorg/fdroid/fdroid/views/repos/RepoAdapter;->-$$Nest$fgetrepoItemListener(Lorg/fdroid/fdroid/views/repos/RepoAdapter;)Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoItemListener;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;->this$0:Lorg/fdroid/fdroid/views/repos/RepoAdapter;

    invoke-static {p2}, Lorg/fdroid/fdroid/views/repos/RepoAdapter;->-$$Nest$fgetrepoItemListener(Lorg/fdroid/fdroid/views/repos/RepoAdapter;)Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoItemListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoItemListener;->onToggleEnabled(Lorg/fdroid/database/Repository;)V

    :cond_0
    return-void
.end method
