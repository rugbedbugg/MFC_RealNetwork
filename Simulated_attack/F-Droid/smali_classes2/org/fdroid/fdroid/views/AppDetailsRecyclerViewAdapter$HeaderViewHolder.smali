.class public Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AppDetailsRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeaderViewHolder"
.end annotation


# static fields
.field private static final MAX_LINES:I = 0x5


# instance fields
.field final antiFeaturesLabelView:Landroid/widget/TextView;

.field final antiFeaturesListingView:Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView;

.field final antiFeaturesSectionView:Landroid/view/View;

.field final antiFeaturesWarningView:Landroid/view/View;

.field final authorView:Landroid/widget/TextView;

.field final buttonPrimaryView:Landroid/widget/Button;

.field final buttonSecondaryView:Landroid/widget/Button;

.field descriptionIsExpanded:Z

.field final descriptionMoreView:Landroid/widget/Button;

.field final descriptionView:Landroid/widget/TextView;

.field final iconView:Landroid/widget/ImageView;

.field final lastUpdateView:Landroid/widget/TextView;

.field final progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

.field final progressCancel:Landroid/view/View;

.field final progressLabel:Landroid/widget/TextView;

.field final progressLayout:Landroid/view/View;

.field final progressPercent:Landroid/widget/TextView;

.field final repoChooserView:Landroidx/compose/ui/platform/ComposeView;

.field final summaryView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

.field final titleView:Landroid/widget/TextView;

.field final warningView:Landroid/widget/TextView;

.field final whatsNewView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$-9msBCQLf2cAdXEslArhdZN1eAs(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;Lorg/fdroid/database/Repository;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->lambda$bindModel$1(Lorg/fdroid/database/Repository;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1xJlv1H24MdGNBxADihbTesqy_M(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->lambda$bindModel$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$CVAbQTg4HjPp9--HaMaJyzXqxtA(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->lambda$bindModel$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HyBzqO4pgK7Y7QP175bMgLOvkSU(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LhwmloLyh01pZvH3fU7_zDq5CRk(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->lambda$bindModel$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q1ox_-ApniC0_FC0jZ9H48D0P74(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->lambda$bindModel$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fJ1A_JAxgnjUgA9YyV90nqb-q6E(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->lambda$bindModel$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k3UCkm5R8gaHDYH9aJ8ZrUnwPHI(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->lambda$bindModel$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o9m-hsdjkL0lTnR_boZE4q17qJQ(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->lambda$bindModel$7(Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 436
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget p1, Lorg/fdroid/fdroid/R$id;->icon:I

    .line 437
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->iconView:Landroid/widget/ImageView;

    sget p1, Lorg/fdroid/fdroid/R$id;->title:I

    .line 438
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->titleView:Landroid/widget/TextView;

    sget p1, Lorg/fdroid/fdroid/R$id;->author:I

    .line 439
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->authorView:Landroid/widget/TextView;

    sget p1, Lorg/fdroid/fdroid/R$id;->text_last_update:I

    .line 440
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->lastUpdateView:Landroid/widget/TextView;

    sget p1, Lorg/fdroid/fdroid/R$id;->repoChooserView:I

    .line 441
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/platform/ComposeView;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->repoChooserView:Landroidx/compose/ui/platform/ComposeView;

    .line 442
    sget-object v0, Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed;->INSTANCE:Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed;

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/AbstractComposeView;->setViewCompositionStrategy(Landroidx/compose/ui/platform/ViewCompositionStrategy;)V

    sget p1, Lorg/fdroid/fdroid/R$id;->warning:I

    .line 444
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->warningView:Landroid/widget/TextView;

    sget p1, Lorg/fdroid/fdroid/R$id;->summary:I

    .line 445
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->summaryView:Landroid/widget/TextView;

    sget p1, Lorg/fdroid/fdroid/R$id;->latest:I

    .line 446
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->whatsNewView:Landroid/widget/TextView;

    sget p1, Lorg/fdroid/fdroid/R$id;->description:I

    .line 447
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->descriptionView:Landroid/widget/TextView;

    sget v0, Lorg/fdroid/fdroid/R$id;->description_more:I

    .line 448
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->descriptionMoreView:Landroid/widget/Button;

    sget v1, Lorg/fdroid/fdroid/R$id;->anti_features_section:I

    .line 449
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->antiFeaturesSectionView:Landroid/view/View;

    sget v1, Lorg/fdroid/fdroid/R$id;->label_anti_features:I

    .line 450
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->antiFeaturesLabelView:Landroid/widget/TextView;

    sget v1, Lorg/fdroid/fdroid/R$id;->anti_features_warning:I

    .line 451
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->antiFeaturesWarningView:Landroid/view/View;

    sget v1, Lorg/fdroid/fdroid/R$id;->anti_features_full_listing:I

    .line 452
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView;

    iput-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->antiFeaturesListingView:Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView;

    sget v1, Lorg/fdroid/fdroid/R$id;->primaryButtonView:I

    .line 453
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->buttonPrimaryView:Landroid/widget/Button;

    sget v1, Lorg/fdroid/fdroid/R$id;->secondaryButtonView:I

    .line 454
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->buttonSecondaryView:Landroid/widget/Button;

    sget v1, Lorg/fdroid/fdroid/R$id;->progress_layout:I

    .line 455
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressLayout:Landroid/view/View;

    sget v1, Lorg/fdroid/fdroid/R$id;->progress_bar:I

    .line 456
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    iput-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    sget v1, Lorg/fdroid/fdroid/R$id;->progress_label:I

    .line 457
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressLabel:Landroid/widget/TextView;

    sget v1, Lorg/fdroid/fdroid/R$id;->progress_percent:I

    .line 458
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressPercent:Landroid/widget/TextView;

    sget v1, Lorg/fdroid/fdroid/R$id;->progress_cancel:I

    .line 459
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressCancel:Landroid/view/View;

    const/4 p2, 0x5

    .line 460
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 461
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 462
    new-instance p1, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$bindModel$1(Lorg/fdroid/database/Repository;)V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 568
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcallbacks(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;

    move-result-object v0

    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getRepoId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;->onRepoChanged(J)V

    return-void
.end method

.method private synthetic lambda$bindModel$2()V
    .locals 4

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 638
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v0

    iget-object v0, v0, Lorg/fdroid/fdroid/data/App;->antiFeatures:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v0

    iget-object v0, v0, Lorg/fdroid/fdroid/data/App;->antiFeatures:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->descriptionView:Landroid/widget/TextView;

    .line 639
    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    const/4 v3, 0x5

    if-gt v2, v3, :cond_2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->descriptionMoreView:Landroid/widget/Button;

    const/16 v1, 0x8

    .line 640
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->descriptionMoreView:Landroid/widget/Button;

    .line 642
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$bindModel$3(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 662
    invoke-static {p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcallbacks(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;

    move-result-object p1

    invoke-interface {p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;->uninstallApk()V

    return-void
.end method

.method private synthetic lambda$bindModel$4(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 675
    invoke-static {p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcallbacks(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;

    move-result-object p1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetsuggestedApk(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/Apk;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;->installApk(Lorg/fdroid/fdroid/data/Apk;)V

    return-void
.end method

.method private synthetic lambda$bindModel$5(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 679
    invoke-static {p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcallbacks(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;

    move-result-object p1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetsuggestedApk(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/Apk;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;->installApk(Lorg/fdroid/fdroid/data/Apk;)V

    return-void
.end method

.method private synthetic lambda$bindModel$6(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 685
    invoke-static {p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcallbacks(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;

    move-result-object p1

    invoke-interface {p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;->launchApk()V

    return-void
.end method

.method private synthetic lambda$bindModel$7(Landroid/content/Intent;Landroid/view/View;)V
    .locals 1

    :try_start_0
    iget-object p2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 700
    invoke-static {p2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AppDetailsRecyclerViewA"

    const-string v0, "Error starting activity: "

    .line 702
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$bindModel$8(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 720
    invoke-static {p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcallbacks(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;

    move-result-object p1

    invoke-interface {p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;->installCancel()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 463
    invoke-static {p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetrecyclerView(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->descriptionView:Landroid/widget/TextView;

    .line 464
    invoke-static {p1}, Landroidx/core/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->descriptionView:Landroid/widget/TextView;

    .line 465
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->descriptionMoreView:Landroid/widget/Button;

    sget v0, Lorg/fdroid/fdroid/R$string;->more:I

    .line 466
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->descriptionIsExpanded:Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->descriptionView:Landroid/widget/TextView;

    const v0, 0x7fffffff

    .line 469
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->descriptionMoreView:Landroid/widget/Button;

    sget v0, Lorg/fdroid/fdroid/R$string;->less:I

    .line 470
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->descriptionIsExpanded:Z

    .line 473
    :goto_0
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->updateAntiFeaturesWarning()V

    return-void
.end method

.method private updateAntiFeaturesWarning()V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 743
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v0

    iget-object v0, v0, Lorg/fdroid/fdroid/data/App;->antiFeatures:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v0

    iget-object v0, v0, Lorg/fdroid/fdroid/data/App;->antiFeatures:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->antiFeaturesSectionView:Landroid/view/View;

    .line 744
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->descriptionIsExpanded:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->antiFeaturesSectionView:Landroid/view/View;

    .line 746
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->antiFeaturesWarningView:Landroid/view/View;

    .line 747
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->antiFeaturesLabelView:Landroid/widget/TextView;

    .line 748
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->antiFeaturesListingView:Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView;

    .line 749
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->antiFeaturesSectionView:Landroid/view/View;

    .line 751
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->antiFeaturesWarningView:Landroid/view/View;

    .line 752
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->antiFeaturesLabelView:Landroid/widget/TextView;

    .line 753
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->antiFeaturesListingView:Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView;

    .line 754
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method bindModel()V
    .locals 12

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 535
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 536
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/fdroid/fdroid/Utils;->setIconFromRepoOrPM(Lorg/fdroid/fdroid/data/App;Landroid/widget/ImageView;Landroid/content/Context;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->titleView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 537
    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v1

    iget-object v1, v1, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 538
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v0

    iget-object v0, v0, Lorg/fdroid/fdroid/data/App;->authorName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->authorView:Landroid/widget/TextView;

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 539
    invoke-static {v4}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lorg/fdroid/fdroid/R$string;->by_author_format:I

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v7}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v7

    iget-object v7, v7, Lorg/fdroid/fdroid/data/App;->authorName:Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->authorView:Landroid/widget/TextView;

    .line 540
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->authorView:Landroid/widget/TextView;

    .line 542
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 544
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v0

    iget-object v0, v0, Lorg/fdroid/fdroid/data/App;->lastUpdated:Ljava/util/Date;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->lastUpdateView:Landroid/widget/TextView;

    .line 545
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 546
    invoke-static {v4}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v4

    iget-object v4, v4, Lorg/fdroid/fdroid/data/App;->lastUpdated:Ljava/util/Date;

    invoke-static {v0, v4}, Lorg/fdroid/fdroid/Utils;->formatLastUpdated(Landroid/content/res/Resources;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 548
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fdroid/fdroid/Preferences;->expertMode()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v4}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetsuggestedApk(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/Apk;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v4}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetsuggestedApk(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/Apk;

    move-result-object v4

    iget-object v4, v4, Lorg/fdroid/fdroid/data/Apk;->apkFile:Lorg/fdroid/index/v2/FileV1;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v4}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetsuggestedApk(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/Apk;

    move-result-object v4

    iget-object v4, v4, Lorg/fdroid/fdroid/data/Apk;->apkFile:Lorg/fdroid/index/v2/FileV1;

    .line 549
    invoke-virtual {v4}, Lorg/fdroid/index/v2/FileV1;->getSize()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 550
    invoke-static {v4}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v5}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetsuggestedApk(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/Apk;

    move-result-object v5

    iget-object v5, v5, Lorg/fdroid/fdroid/data/Apk;->apkFile:Lorg/fdroid/index/v2/FileV1;

    invoke-virtual {v5}, Lorg/fdroid/index/v2/FileV1;->getSize()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    .line 551
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->lastUpdateView:Landroid/widget/TextView;

    .line 555
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->lastUpdateView:Landroid/widget/TextView;

    .line 556
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->lastUpdateView:Landroid/widget/TextView;

    .line 558
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 560
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetpreferredRepoId(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 561
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v4}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/fdroid/fdroid/Preferences;->getDefaultRepoAddresses(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 562
    invoke-static {v4}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lorg/fdroid/fdroid/FDroidApp;->getRepoManager(Landroid/content/Context;)Lorg/fdroid/index/RepoManager;

    move-result-object v4

    iget-object v5, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v5}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v5

    iget-wide v5, v5, Lorg/fdroid/fdroid/data/App;->repoId:J

    invoke-virtual {v4, v5, v6}, Lorg/fdroid/index/RepoManager;->getRepository(J)Lorg/fdroid/database/Repository;

    move-result-object v4

    iget-object v5, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 566
    invoke-static {v5}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetrepos(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v1, :cond_5

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->repoChooserView:Landroidx/compose/ui/platform/ComposeView;

    .line 571
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->repoChooserView:Landroidx/compose/ui/platform/ComposeView;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 567
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetrepos(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Ljava/util/List;

    move-result-object v5

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v0

    iget-wide v6, v0, Lorg/fdroid/fdroid/data/App;->repoId:J

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetpreferredRepoId(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    new-instance v10, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v10, p0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder$$ExternalSyntheticLambda1;-><init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcallbacks(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;

    move-result-object v0

    .line 568
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder$$ExternalSyntheticLambda2;

    invoke-direct {v11, v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder$$ExternalSyntheticLambda2;-><init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;)V

    .line 567
    invoke-static/range {v4 .. v11}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt;->setContentRepoChooser(Landroidx/compose/ui/platform/ComposeView;Ljava/util/List;JJLandroidx/core/util/Consumer;Landroidx/core/util/Consumer;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->repoChooserView:Landroidx/compose/ui/platform/ComposeView;

    .line 569
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->repoChooserView:Landroidx/compose/ui/platform/ComposeView;

    .line 574
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 577
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetsuggestedApk(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/Apk;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetrepos(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_7

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v0

    iget-object v0, v0, Lorg/fdroid/fdroid/data/App;->installedSigner:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetpreferredRepoId(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetpreferredRepoId(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Ljava/lang/Long;

    move-result-object v0

    .line 578
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v0

    iget-wide v6, v0, Lorg/fdroid/fdroid/data/App;->repoId:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetversionsLoading(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 580
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v0

    sget v4, Lorg/fdroid/fdroid/R$color;->fdroid_red:I

    invoke-static {v0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->warningView:Landroid/widget/TextView;

    .line 581
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->warningView:Landroid/widget/TextView;

    sget v4, Lorg/fdroid/fdroid/R$string;->warning_no_compat_versions:I

    .line 582
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->warningView:Landroid/widget/TextView;

    .line 583
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 584
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/fdroid/installer/SessionInstallManager;->canBeUsed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetsuggestedApk(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/Apk;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetsuggestedApk(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/Apk;

    move-result-object v0

    iget v0, v0, Lorg/fdroid/fdroid/data/Apk;->targetSdkVersion:I

    .line 585
    invoke-static {v0}, Lorg/fdroid/fdroid/installer/SessionInstallManager;->isTargetSdkSupported(I)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 586
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v0

    sget v4, Lorg/fdroid/fdroid/R$color;->warning:I

    invoke-static {v0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->warningView:Landroid/widget/TextView;

    .line 587
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->warningView:Landroid/widget/TextView;

    sget v4, Lorg/fdroid/fdroid/R$string;->warning_target_sdk:I

    .line 588
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->warningView:Landroid/widget/TextView;

    .line 589
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->warningView:Landroid/widget/TextView;

    .line 591
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 593
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v0

    iget-object v0, v0, Lorg/fdroid/fdroid/data/App;->summary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->summaryView:Landroid/widget/TextView;

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 594
    invoke-static {v4}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v4

    iget-object v4, v4, Lorg/fdroid/fdroid/data/App;->summary:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->summaryView:Landroid/widget/TextView;

    .line 595
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->summaryView:Landroid/widget/TextView;

    .line 597
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 599
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetsuggestedApk(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/Apk;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v0

    iget-object v0, v0, Lorg/fdroid/fdroid/data/App;->whatsNew:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_6

    :cond_a
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 603
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v0

    .line 604
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    .line 605
    invoke-virtual {v0, v3}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 607
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->whatsNewView:Landroid/widget/TextView;

    .line 608
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lorg/fdroid/fdroid/R$string;->details_new_in_version:I

    new-array v7, v1, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v8}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetsuggestedApk(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/Apk;

    move-result-object v8

    iget-object v8, v8, Lorg/fdroid/fdroid/data/Apk;->versionName:Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 609
    invoke-virtual {v5, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 608
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    .line 610
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 611
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v0

    iget-object v0, v0, Lorg/fdroid/fdroid/data/App;->whatsNew:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->whatsNewView:Landroid/widget/TextView;

    .line 612
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->whatsNewView:Landroid/widget/TextView;

    .line 613
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 617
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetrecyclerView(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v4, v4}, Landroidx/recyclerview/widget/RecyclerView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    goto :goto_7

    :cond_b
    :goto_6
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->whatsNewView:Landroid/widget/TextView;

    .line 600
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->summaryView:Landroid/widget/TextView;

    .line 601
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_7
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 619
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v0

    iget-object v0, v0, Lorg/fdroid/fdroid/data/App;->description:Ljava/lang/String;

    new-instance v4, Lorg/fdroid/fdroid/Utils$HtmlTagHandler;

    invoke-direct {v4}, Lorg/fdroid/fdroid/Utils$HtmlTagHandler;-><init>()V

    const/4 v5, 0x0

    invoke-static {v0, v3, v5, v4}, Landroidx/core/text/HtmlCompat;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->descriptionView:Landroid/widget/TextView;

    .line 621
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->descriptionView:Landroid/widget/TextView;

    .line 622
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->trimTrailingNewlines(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->descriptionView:Landroid/widget/TextView;

    .line 623
    invoke-static {v0, v1}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/widget/TextView;I)Z

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->descriptionView:Landroid/widget/TextView;

    .line 625
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v4, v0, Landroid/text/Spannable;

    if-eqz v4, :cond_c

    check-cast v0, Landroid/text/Spannable;

    .line 626
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Landroid/text/style/URLSpan;

    invoke-interface {v0, v3, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/URLSpan;

    .line 627
    array-length v5, v4

    move v6, v3

    :goto_8
    if-ge v6, v5, :cond_c

    aget-object v7, v4, v6

    .line 628
    invoke-interface {v0, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 629
    invoke-interface {v0, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    .line 630
    invoke-interface {v0, v7}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v10

    .line 631
    invoke-interface {v0, v7}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 633
    new-instance v11, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$SafeURLSpan;

    invoke-virtual {v7}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v11, v7}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$SafeURLSpan;-><init>(Ljava/lang/String;)V

    .line 634
    invoke-interface {v0, v11, v8, v9, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_c
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->descriptionView:Landroid/widget/TextView;

    .line 637
    new-instance v4, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder$$ExternalSyntheticLambda3;-><init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->antiFeaturesListingView:Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView;

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 646
    invoke-static {v4}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView;->setApp(Lorg/fdroid/fdroid/data/App;)V

    .line 647
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->updateAntiFeaturesWarning()V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 650
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetversions(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/fdroid/fdroid/data/Apk;

    .line 651
    iget-boolean v4, v4, Lorg/fdroid/fdroid/data/Apk;->compatible:Z

    if-eqz v4, :cond_d

    goto :goto_9

    :cond_e
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 656
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v0

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v4}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/fdroid/fdroid/data/App;->isInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    :goto_9
    move v0, v1

    goto :goto_a

    :cond_f
    move v0, v3

    :goto_a
    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->buttonPrimaryView:Landroid/widget/Button;

    sget v5, Lorg/fdroid/fdroid/R$string;->menu_install:I

    .line 658
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->buttonPrimaryView:Landroid/widget/Button;

    if-eqz v0, :cond_10

    move v0, v3

    goto :goto_b

    :cond_10
    move v0, v2

    .line 659
    :goto_b
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->buttonSecondaryView:Landroid/widget/Button;

    sget v4, Lorg/fdroid/fdroid/R$string;->menu_uninstall:I

    .line 660
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->buttonSecondaryView:Landroid/widget/Button;

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 661
    invoke-static {v4}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v4

    iget-object v5, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v5}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/fdroid/fdroid/data/App;->isUninstallable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_11

    move v4, v3

    goto :goto_c

    :cond_11
    move v4, v2

    :goto_c
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->buttonSecondaryView:Landroid/widget/Button;

    .line 662
    new-instance v4, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder$$ExternalSyntheticLambda4;-><init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 663
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcallbacks(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;->isAppDownloading()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->buttonPrimaryView:Landroid/widget/Button;

    sget v4, Lorg/fdroid/fdroid/R$string;->downloading:I

    .line 664
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->buttonPrimaryView:Landroid/widget/Button;

    .line 665
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->buttonPrimaryView:Landroid/widget/Button;

    .line 666
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->buttonSecondaryView:Landroid/widget/Button;

    .line 667
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressLayout:Landroid/view/View;

    .line 668
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e

    :cond_12
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 669
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v0

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v4}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/fdroid/fdroid/data/App;->isInstalled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetsuggestedApk(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/Apk;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressLayout:Landroid/view/View;

    .line 671
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->buttonPrimaryView:Landroid/widget/Button;

    sget v4, Lorg/fdroid/fdroid/R$string;->menu_install:I

    .line 673
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->buttonPrimaryView:Landroid/widget/Button;

    .line 674
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->buttonPrimaryView:Landroid/widget/Button;

    .line 675
    new-instance v4, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder$$ExternalSyntheticLambda5;-><init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_e

    :cond_13
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 676
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v0

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v4}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/fdroid/fdroid/data/App;->isInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 677
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v0

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v4}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetsuggestedApk(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/Apk;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/fdroid/fdroid/data/App;->canAndWantToUpdate(Lorg/fdroid/fdroid/data/Apk;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->buttonPrimaryView:Landroid/widget/Button;

    sget v4, Lorg/fdroid/fdroid/R$string;->menu_upgrade:I

    .line 678
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->buttonPrimaryView:Landroid/widget/Button;

    .line 679
    new-instance v4, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder$$ExternalSyntheticLambda6;-><init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_d

    :cond_14
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 681
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v0

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v4}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/fdroid/fdroid/data/App;->getMediaApkifInstalled(Landroid/content/Context;)Lorg/fdroid/fdroid/data/Apk;

    move-result-object v0

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 682
    invoke-static {v4}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v5}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v5

    iget-object v5, v5, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v4}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v4

    .line 683
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v5}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v5

    iget-object v5, v5, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_15

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->buttonPrimaryView:Landroid/widget/Button;

    sget v4, Lorg/fdroid/fdroid/R$string;->menu_launch:I

    .line 684
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->buttonPrimaryView:Landroid/widget/Button;

    .line 685
    new-instance v4, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder$$ExternalSyntheticLambda7;-><init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_d

    :cond_15
    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 686
    invoke-static {v4}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v4

    iget-boolean v4, v4, Lorg/fdroid/fdroid/data/App;->isApk:Z

    if-nez v4, :cond_18

    if-eqz v0, :cond_18

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 687
    invoke-static {v4}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/fdroid/fdroid/data/Apk;->getInstalledMediaFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 688
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v5}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 689
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 690
    invoke-static {v5}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "org.fdroid.fdroid.installer"

    invoke-static {v5, v6, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 691
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v6

    .line 692
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 691
    invoke-virtual {v6, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 693
    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x41

    .line 694
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 696
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->buttonPrimaryView:Landroid/widget/Button;

    sget v5, Lorg/fdroid/fdroid/R$string;->menu_open:I

    .line 697
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->buttonPrimaryView:Landroid/widget/Button;

    .line 698
    new-instance v5, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder$$ExternalSyntheticLambda8;

    invoke-direct {v5, p0, v4}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder$$ExternalSyntheticLambda8;-><init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;Landroid/content/Intent;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_d

    :cond_16
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->buttonPrimaryView:Landroid/widget/Button;

    .line 706
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d

    :cond_17
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->buttonPrimaryView:Landroid/widget/Button;

    .line 709
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d

    :cond_18
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->buttonPrimaryView:Landroid/widget/Button;

    .line 712
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_d
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->buttonPrimaryView:Landroid/widget/Button;

    .line 715
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressLayout:Landroid/view/View;

    .line 716
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e

    :cond_19
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressLayout:Landroid/view/View;

    .line 718
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_e
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressCancel:Landroid/view/View;

    .line 720
    new-instance v4, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder$$ExternalSyntheticLambda9;-><init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 721
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetversionsLoading(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressLayout:Landroid/view/View;

    .line 722
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressLabel:Landroid/widget/TextView;

    .line 723
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressCancel:Landroid/view/View;

    .line 724
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressPercent:Landroid/widget/TextView;

    .line 725
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 726
    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 727
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f

    :cond_1a
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressLabel:Landroid/widget/TextView;

    .line 729
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressCancel:Landroid/view/View;

    .line 730
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressPercent:Landroid/widget/TextView;

    .line 731
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_f
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 735
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetpreferredRepoId(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetpreferredRepoId(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v3, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v3}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v3

    iget-wide v3, v3, Lorg/fdroid/fdroid/data/App;->repoId:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->buttonPrimaryView:Landroid/widget/Button;

    .line 737
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->buttonSecondaryView:Landroid/widget/Button;

    .line 738
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1b
    return-void
.end method

.method clearProgress()V
    .locals 5

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressLayout:Landroid/view/View;

    const/16 v1, 0x8

    .line 478
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->buttonPrimaryView:Landroid/widget/Button;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 479
    invoke-static {v2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetversions(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->buttonSecondaryView:Landroid/widget/Button;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 480
    invoke-static {v2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v2

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v4}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/fdroid/fdroid/data/App;->isUninstallable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method setIndeterminateProgress(I)V
    .locals 5

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 485
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 486
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->hide()V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    const/4 v1, 0x1

    .line 487
    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 489
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->show()V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressLayout:Landroid/view/View;

    const/4 v1, 0x0

    .line 490
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->buttonPrimaryView:Landroid/widget/Button;

    const/16 v2, 0x8

    .line 491
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->buttonSecondaryView:Landroid/widget/Button;

    .line 492
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressLabel:Landroid/widget/TextView;

    .line 493
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 494
    invoke-static {v3}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lorg/fdroid/fdroid/R$string;->downloading:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressPercent:Landroid/widget/TextView;

    const-string v3, ""

    .line 495
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lorg/fdroid/fdroid/R$string;->installing:I

    if-eq p1, v0, :cond_2

    sget v0, Lorg/fdroid/fdroid/R$string;->uninstalling:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressCancel:Landroid/view/View;

    .line 499
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressCancel:Landroid/view/View;

    .line 497
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method setProgress(JJ)V
    .locals 7

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressLayout:Landroid/view/View;

    const/4 v1, 0x0

    .line 504
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->buttonPrimaryView:Landroid/widget/Button;

    const/16 v2, 0x8

    .line 505
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->buttonSecondaryView:Landroid/widget/Button;

    .line 506
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressCancel:Landroid/view/View;

    .line 507
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    const/4 v4, 0x1

    if-gtz v0, :cond_0

    iget-object v5, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 510
    invoke-virtual {v5}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 511
    invoke-virtual {v5}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->hide()V

    iget-object v5, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 512
    invoke-virtual {v5, v4}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 515
    invoke-static {p1, p2, p3, p4}, Lorg/fdroid/fdroid/Utils;->getPercent(JJ)I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->setProgressCompat(IZ)V

    :cond_1
    :goto_0
    iget-object v5, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 517
    invoke-virtual {v5}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->show()V

    iget-object v5, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressLabel:Landroid/widget/TextView;

    const-string v6, ""

    .line 519
    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-lez v0, :cond_2

    cmp-long v0, p1, v2

    if-ltz v0, :cond_2

    .line 521
    invoke-static {p1, p2, p3, p4}, Lorg/fdroid/fdroid/Utils;->getPercent(JJ)I

    move-result v0

    iget-object v2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressLabel:Landroid/widget/TextView;

    .line 522
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lorg/fdroid/fdroid/Utils;->getFriendlySize(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    invoke-static {p3, p4}, Lorg/fdroid/fdroid/Utils;->getFriendlySize(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 522
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressLabel:Landroid/widget/TextView;

    iget-object p2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 524
    invoke-static {p2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object p2

    sget p3, Lorg/fdroid/fdroid/R$string;->app__tts__downloading_progress:I

    new-array p4, v4, [Ljava/lang/Object;

    .line 525
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p4, v1

    .line 524
    invoke-virtual {p2, p3, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressPercent:Landroid/widget/TextView;

    .line 526
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array p3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v1

    const-string p4, "%d%%"

    invoke-static {p2, p4, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    cmp-long p3, p1, v2

    if-ltz p3, :cond_3

    iget-object p3, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressLabel:Landroid/widget/TextView;

    .line 528
    invoke-static {p1, p2}, Lorg/fdroid/fdroid/Utils;->getFriendlySize(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressLabel:Landroid/widget/TextView;

    iget-object p2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 529
    invoke-static {p2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object p2

    sget p3, Lorg/fdroid/fdroid/R$string;->downloading:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->progressPercent:Landroid/widget/TextView;

    .line 530
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method
