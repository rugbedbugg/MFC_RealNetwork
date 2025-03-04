.class Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SwapSuccessView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/nearby/SwapSuccessView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private final apks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/fdroid/data/Apk;",
            ">;"
        }
    .end annotation
.end field

.field private final apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/data/App;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/fdroid/fdroid/nearby/SwapSuccessView;


# direct methods
.method static bridge synthetic -$$Nest$fgetapks(Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;->apks:Ljava/util/Map;

    return-object p0
.end method

.method private constructor <init>(Lorg/fdroid/fdroid/nearby/SwapSuccessView;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;->this$0:Lorg/fdroid/fdroid/nearby/SwapSuccessView;

    .line 137
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 139
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;->apps:Ljava/util/List;

    .line 140
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;->apks:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lorg/fdroid/fdroid/nearby/SwapSuccessView;Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;-><init>(Lorg/fdroid/fdroid/nearby/SwapSuccessView;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;->apps:Ljava/util/List;

    .line 369
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 137
    check-cast p1, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;->onBindViewHolder(Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;I)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;->apps:Ljava/util/List;

    .line 364
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/fdroid/fdroid/data/App;

    invoke-virtual {p1, p2}, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->setApp(Lorg/fdroid/fdroid/data/App;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 137
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;
    .locals 2

    .line 357
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lorg/fdroid/fdroid/R$layout;->swap_app_list_item:I

    const/4 v1, 0x0

    .line 358
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 359
    new-instance p2, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;-><init>(Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method setApps(Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/data/App;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/fdroid/data/Apk;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;->apps:Ljava/util/List;

    .line 373
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;->apps:Ljava/util/List;

    .line 374
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;->apks:Ljava/util/Map;

    .line 375
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;->apks:Ljava/util/Map;

    .line 376
    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 377
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
