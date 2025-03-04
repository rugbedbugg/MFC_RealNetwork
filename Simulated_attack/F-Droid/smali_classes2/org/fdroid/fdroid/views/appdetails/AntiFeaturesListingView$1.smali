.class Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$1;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AntiFeaturesListingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView;->setApp(Lorg/fdroid/fdroid/data/App;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView;

.field final synthetic val$app:Lorg/fdroid/fdroid/data/App;


# direct methods
.method public static synthetic $r8$lambda$GsxLvSG6k8DBUTvUmZ_XE8dxSm0(Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$1;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$1;->lambda$onBindViewHolder$0(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView;Lorg/fdroid/fdroid/data/App;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$1;->this$0:Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$1;->val$app:Lorg/fdroid/fdroid/data/App;

    .line 62
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .line 106
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x80000

    .line 107
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://f-droid.org/docs/Anti-Features#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p1, p0, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$1;->this$0:Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView;

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$1;->val$app:Lorg/fdroid/fdroid/data/App;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, v0, Lorg/fdroid/fdroid/data/App;->antiFeatures:[Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 62
    check-cast p1, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$1;->onBindViewHolder(Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;I)V
    .locals 5

    iget-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$1;->val$app:Lorg/fdroid/fdroid/data/App;

    .line 74
    iget-object v0, v0, Lorg/fdroid/fdroid/data/App;->antiFeatures:[Ljava/lang/String;

    aget-object p2, v0, p2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$1;->this$0:Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView;

    .line 75
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/fdroid/FDroidApp;->getRepoManager(Landroid/content/Context;)Lorg/fdroid/index/RepoManager;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$1;->val$app:Lorg/fdroid/fdroid/data/App;

    iget-wide v1, v1, Lorg/fdroid/fdroid/data/App;->repoId:J

    invoke-virtual {v0, v1, v2}, Lorg/fdroid/index/RepoManager;->getRepository(J)Lorg/fdroid/database/Repository;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 77
    :cond_0
    invoke-static {}, Landroidx/core/os/LocaleListCompat;->getDefault()Landroidx/core/os/LocaleListCompat;

    move-result-object v1

    .line 78
    invoke-virtual {v0}, Lorg/fdroid/database/Repository;->getAntiFeatures()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fdroid/database/AntiFeature;

    if-nez v0, :cond_1

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Anti-feature not defined in repo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AntiFeaturesListingView"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {p1}, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;->-$$Nest$fgetantiFeatureText(Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$1;->this$0:Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView;->-$$Nest$smgetAntiFeatureDescriptionText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$1;->this$0:Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView;

    .line 82
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-static {p1}, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;->-$$Nest$fgetantiFeatureIcon(Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    .line 83
    invoke-static {p1}, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;->-$$Nest$fgetantiFeatureIcon(Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$1;->this$0:Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView;->-$$Nest$smantiFeatureIcon(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {v0, v1}, Lorg/fdroid/database/RepoAttribute;->getDescription(Landroidx/core/os/LocaleListCompat;)Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-static {p1}, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;->-$$Nest$fgetantiFeatureText(Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$1;->this$0:Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView;

    .line 88
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView;->-$$Nest$smgetAntiFeatureDescriptionText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    :cond_2
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$1;->this$0:Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView;

    .line 90
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView;->-$$Nest$smantiFeatureIcon(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$1;->val$app:Lorg/fdroid/fdroid/data/App;

    iget-object v4, p0, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$1;->this$0:Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView;

    .line 91
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v1}, Lorg/fdroid/database/RepoAttribute;->getIcon(Landroidx/core/os/LocaleListCompat;)Lorg/fdroid/index/v2/FileV2;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/fdroid/fdroid/data/App;->loadWithGlide(Landroid/content/Context;Lorg/fdroid/IndexFile;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 92
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->fallback(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 93
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    invoke-static {p1}, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;->-$$Nest$fgetantiFeatureIcon(Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$1;->val$app:Lorg/fdroid/fdroid/data/App;

    .line 97
    iget-object v0, v0, Lorg/fdroid/fdroid/data/App;->antiFeatureReasons:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_3

    .line 99
    invoke-static {p1}, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;->-$$Nest$fgetantiFeatureReason(Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 101
    :cond_3
    invoke-static {p1}, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;->-$$Nest$fgetantiFeatureReason(Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-static {p1}, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;->-$$Nest$fgetantiFeatureReason(Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    :goto_1
    invoke-static {p1}, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;->-$$Nest$fgetentireView(Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$1$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$1;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$1;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;
    .locals 2

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lorg/fdroid/fdroid/R$layout;->listitem_antifeaturelisting:I

    const/4 v1, 0x0

    .line 68
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 69
    new-instance p2, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;

    invoke-direct {p2, p1}, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
