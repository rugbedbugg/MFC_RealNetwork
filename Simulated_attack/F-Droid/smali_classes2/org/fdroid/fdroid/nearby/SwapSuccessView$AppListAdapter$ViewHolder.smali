.class Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SwapSuccessView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$DownloadReceiver;
    }
.end annotation


# instance fields
.field private apk:Lorg/fdroid/fdroid/data/Apk;

.field private app:Lorg/fdroid/fdroid/data/App;

.field btnInstall:Landroid/widget/Button;

.field private final cancelListener:Landroid/view/View$OnClickListener;

.field iconView:Landroid/widget/ImageView;

.field private final installListener:Landroid/view/View$OnClickListener;

.field private final localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field nameView:Landroid/widget/TextView;

.field progressView:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

.field statusIncompatible:Landroid/widget/TextView;

.field statusInstalled:Landroid/widget/TextView;

.field final synthetic this$1:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;


# direct methods
.method static bridge synthetic -$$Nest$fgetapk(Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;)Lorg/fdroid/fdroid/data/Apk;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->apk:Lorg/fdroid/fdroid/data/Apk;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetapp(Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;)Lorg/fdroid/fdroid/data/App;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->app:Lorg/fdroid/fdroid/data/App;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlocalBroadcastManager(Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mresetView(Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->resetView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowProgress(Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->showProgress()V

    return-void
.end method

.method constructor <init>(Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->this$1:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;

    .line 209
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 275
    new-instance v0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$2;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$2;-><init>(Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->cancelListener:Landroid/view/View$OnClickListener;

    .line 284
    new-instance v0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$3;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$3;-><init>(Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->installListener:Landroid/view/View$OnClickListener;

    .line 210
    iget-object p1, p1, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;->this$0:Lorg/fdroid/fdroid/nearby/SwapSuccessView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    sget p1, Lorg/fdroid/fdroid/R$id;->progress:I

    .line 211
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->progressView:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    sget p1, Lorg/fdroid/fdroid/R$id;->name:I

    .line 212
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    const p1, 0x1020006

    .line 213
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    sget p1, Lorg/fdroid/fdroid/R$id;->btn_install:I

    .line 214
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->btnInstall:Landroid/widget/Button;

    sget p1, Lorg/fdroid/fdroid/R$id;->status_installed:I

    .line 215
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->statusInstalled:Landroid/widget/TextView;

    sget p1, Lorg/fdroid/fdroid/R$id;->status_incompatible:I

    .line 216
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->statusIncompatible:Landroid/widget/TextView;

    return-void
.end method

.method private resetView()V
    .locals 4

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->app:Lorg/fdroid/fdroid/data/App;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->progressView:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 299
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->progressView:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 300
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->hide()V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->progressView:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    const/4 v1, 0x1

    .line 301
    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    :cond_1
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->progressView:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 303
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->show()V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->app:Lorg/fdroid/fdroid/data/App;

    .line 305
    iget-object v0, v0, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    .line 306
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    .line 309
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->this$1:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;

    iget-object v1, v1, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;->this$0:Lorg/fdroid/fdroid/nearby/SwapSuccessView;

    invoke-static {v1}, Lorg/fdroid/fdroid/nearby/SwapSuccessView;->-$$Nest$fgetrepo(Lorg/fdroid/fdroid/nearby/SwapSuccessView;)Lorg/fdroid/database/Repository;

    move-result-object v1

    iget-object v2, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->app:Lorg/fdroid/fdroid/data/App;

    iget-object v2, v2, Lorg/fdroid/fdroid/data/App;->iconFile:Lorg/fdroid/index/v2/FileV2;

    .line 310
    invoke-static {v1, v2}, Lorg/fdroid/fdroid/Utils;->getGlideModel(Lorg/fdroid/database/Repository;Lorg/fdroid/IndexFile;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 311
    invoke-static {}, Lorg/fdroid/fdroid/Utils;->getAlwaysShowIconRequestOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    .line 312
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->app:Lorg/fdroid/fdroid/data/App;

    .line 314
    invoke-virtual {v0}, Lorg/fdroid/fdroid/data/App;->hasUpdates()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->btnInstall:Landroid/widget/Button;

    sget v3, Lorg/fdroid/fdroid/R$string;->menu_upgrade:I

    .line 315
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->btnInstall:Landroid/widget/Button;

    .line 316
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->btnInstall:Landroid/widget/Button;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->installListener:Landroid/view/View$OnClickListener;

    .line 317
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->statusIncompatible:Landroid/widget/TextView;

    .line 318
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->statusInstalled:Landroid/widget/TextView;

    .line 319
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->app:Lorg/fdroid/fdroid/data/App;

    iget-object v3, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->this$1:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;

    .line 320
    iget-object v3, v3, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;->this$0:Lorg/fdroid/fdroid/nearby/SwapSuccessView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/fdroid/fdroid/data/App;->isInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->btnInstall:Landroid/widget/Button;

    .line 321
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->statusIncompatible:Landroid/widget/TextView;

    .line 322
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->statusInstalled:Landroid/widget/TextView;

    .line 323
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->statusInstalled:Landroid/widget/TextView;

    sget v1, Lorg/fdroid/fdroid/R$string;->app_installed:I

    .line 324
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->app:Lorg/fdroid/fdroid/data/App;

    .line 325
    iget-boolean v0, v0, Lorg/fdroid/fdroid/data/App;->compatible:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->btnInstall:Landroid/widget/Button;

    .line 326
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->statusIncompatible:Landroid/widget/TextView;

    .line 327
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->statusInstalled:Landroid/widget/TextView;

    .line 328
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->progressView:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 329
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->btnInstall:Landroid/widget/Button;

    sget v3, Lorg/fdroid/fdroid/R$string;->cancel:I

    .line 330
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->btnInstall:Landroid/widget/Button;

    .line 331
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->btnInstall:Landroid/widget/Button;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->cancelListener:Landroid/view/View$OnClickListener;

    .line 332
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->statusIncompatible:Landroid/widget/TextView;

    .line 333
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->statusInstalled:Landroid/widget/TextView;

    .line 334
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->btnInstall:Landroid/widget/Button;

    sget v3, Lorg/fdroid/fdroid/R$string;->menu_install:I

    .line 336
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->btnInstall:Landroid/widget/Button;

    .line 337
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->btnInstall:Landroid/widget/Button;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->installListener:Landroid/view/View$OnClickListener;

    .line 338
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->statusIncompatible:Landroid/widget/TextView;

    .line 339
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->statusInstalled:Landroid/widget/TextView;

    .line 340
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private showProgress()V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->btnInstall:Landroid/widget/Button;

    sget v1, Lorg/fdroid/fdroid/R$string;->cancel:I

    .line 345
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->btnInstall:Landroid/widget/Button;

    const/4 v1, 0x0

    .line 346
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->btnInstall:Landroid/widget/Button;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->cancelListener:Landroid/view/View$OnClickListener;

    .line 347
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->progressView:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 348
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->show()V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->statusInstalled:Landroid/widget/TextView;

    const/16 v1, 0x8

    .line 349
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->statusIncompatible:Landroid/widget/TextView;

    .line 350
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public setApp(Lorg/fdroid/fdroid/data/App;)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->app:Lorg/fdroid/fdroid/data/App;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, v0, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->app:Lorg/fdroid/fdroid/data/App;

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->this$1:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;

    .line 222
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;->-$$Nest$fgetapks(Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->app:Lorg/fdroid/fdroid/data/App;

    iget-object v0, v0, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/data/Apk;

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->apk:Lorg/fdroid/fdroid/data/Apk;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 225
    new-instance v0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$DownloadReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$DownloadReceiver;-><init>(Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$DownloadReceiver-IA;)V

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->apk:Lorg/fdroid/fdroid/data/Apk;

    .line 226
    invoke-virtual {v1}, Lorg/fdroid/fdroid/data/Apk;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/fdroid/fdroid/net/DownloaderService;->getIntentFilter(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    .line 225
    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 227
    new-instance v0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$1;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$1;-><init>(Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;)V

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->apk:Lorg/fdroid/fdroid/data/Apk;

    .line 269
    invoke-virtual {v1}, Lorg/fdroid/fdroid/data/Apk;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/fdroid/fdroid/installer/Installer;->getInstallIntentFilter(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    .line 227
    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 272
    :cond_1
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->resetView()V

    return-void
.end method
