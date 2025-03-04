.class Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ScreenShotsRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter$Listener;,
        Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter$ScreenShotViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private final displayImageOptions:Lcom/bumptech/glide/request/RequestOptions;

.field private final listener:Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter$Listener;

.field private final repoId:J

.field private final screenshots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/FileV2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetlistener(Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter;)Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter$Listener;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter;->listener:Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter$Listener;

    return-object p0
.end method

.method constructor <init>(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter$Listener;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    iget-wide v0, p1, Lorg/fdroid/fdroid/data/App;->repoId:J

    iput-wide v0, p0, Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter;->repoId:J

    iput-object p2, p0, Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter;->listener:Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter$Listener;

    .line 33
    invoke-virtual {p1}, Lorg/fdroid/fdroid/data/App;->getAllScreenshots()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter;->screenshots:Ljava/util/List;

    .line 35
    new-instance p1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget p2, Lorg/fdroid/fdroid/R$drawable;->screenshot_placeholder:I

    .line 36
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->fallback(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/request/RequestOptions;

    sget p2, Lorg/fdroid/fdroid/R$drawable;->screenshot_placeholder:I

    .line 37
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/request/RequestOptions;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter;->displayImageOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter;->screenshots:Ljava/util/List;

    .line 57
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 42
    check-cast p1, Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter$ScreenShotViewHolder;

    .line 43
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter;->repoId:J

    iget-object v3, p0, Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter;->screenshots:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/fdroid/IndexFile;

    invoke-static {v0, v1, v2, p2}, Lorg/fdroid/fdroid/data/App;->loadWithGlide(Landroid/content/Context;JLorg/fdroid/IndexFile;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter;->displayImageOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 44
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget-object p1, p1, Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter$ScreenShotViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lorg/fdroid/fdroid/R$layout;->app_details2_screenshot_item:I

    const/4 v1, 0x0

    .line 51
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 52
    new-instance p2, Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter$ScreenShotViewHolder;

    invoke-direct {p2, p0, p1}, Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter$ScreenShotViewHolder;-><init>(Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter;Landroid/view/View;)V

    return-object p2
.end method
