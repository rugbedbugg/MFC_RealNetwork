.class public Lorg/fdroid/fdroid/views/ScreenShotsActivity$ScreenShotPageFragment;
.super Landroidx/fragment/app/Fragment;
.source "ScreenShotsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/views/ScreenShotsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenShotPageFragment"
.end annotation


# static fields
.field private static final ARG_REPO_ID:Ljava/lang/String; = "ARG_REPO_ID"

.field private static final ARG_SCREENSHOT_URL:Ljava/lang/String; = "ARG_SCREENSHOT_URL"


# instance fields
.field private repoId:J

.field private screenshot:Lorg/fdroid/index/v2/FileV2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static newInstance(JLorg/fdroid/index/v2/FileV2;)Lorg/fdroid/fdroid/views/ScreenShotsActivity$ScreenShotPageFragment;
    .locals 3

    .line 121
    new-instance v0, Lorg/fdroid/fdroid/views/ScreenShotsActivity$ScreenShotPageFragment;

    invoke-direct {v0}, Lorg/fdroid/fdroid/views/ScreenShotsActivity$ScreenShotPageFragment;-><init>()V

    .line 122
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ARG_REPO_ID"

    .line 123
    invoke-virtual {v1, v2, p0, p1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "ARG_SCREENSHOT_URL"

    .line 124
    invoke-virtual {p2}, Lorg/fdroid/index/v2/FileV2;->serialize()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory$-CC;->$default$getDefaultViewModelCreationExtras(Landroidx/lifecycle/HasDefaultViewModelProviderFactory;)Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 134
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "ARG_REPO_ID"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/fdroid/fdroid/views/ScreenShotsActivity$ScreenShotPageFragment;->repoId:J

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "ARG_SCREENSHOT_URL"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/fdroid/index/v2/FileV2;->deserialize(Ljava/lang/String;)Lorg/fdroid/index/v2/FileV2;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/views/ScreenShotsActivity$ScreenShotPageFragment;->screenshot:Lorg/fdroid/index/v2/FileV2;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    sget p3, Lorg/fdroid/fdroid/R$layout;->activity_screenshots_page:I

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget p2, Lorg/fdroid/fdroid/R$id;->screenshot:I

    .line 145
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 146
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    iget-wide v0, p0, Lorg/fdroid/fdroid/views/ScreenShotsActivity$ScreenShotPageFragment;->repoId:J

    iget-object v2, p0, Lorg/fdroid/fdroid/views/ScreenShotsActivity$ScreenShotPageFragment;->screenshot:Lorg/fdroid/index/v2/FileV2;

    invoke-static {p3, v0, v1, v2}, Lorg/fdroid/fdroid/data/App;->loadWithGlide(Landroid/content/Context;JLorg/fdroid/IndexFile;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p3

    invoke-static {}, Lorg/fdroid/fdroid/views/ScreenShotsActivity;->-$$Nest$sfgetallowDownload()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 147
    invoke-virtual {p3, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p3

    check-cast p3, Lcom/bumptech/glide/RequestBuilder;

    sget v0, Lorg/fdroid/fdroid/R$drawable;->screenshot_placeholder:I

    .line 148
    invoke-virtual {p3, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p3

    check-cast p3, Lcom/bumptech/glide/RequestBuilder;

    sget v0, Lorg/fdroid/fdroid/R$drawable;->screenshot_placeholder:I

    .line 149
    invoke-virtual {p3, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->fallback(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p3

    check-cast p3, Lcom/bumptech/glide/RequestBuilder;

    .line 150
    invoke-virtual {p3, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-object p1
.end method
