.class public Lorg/fdroid/fdroid/nearby/SelectAppsView;
.super Lorg/fdroid/fdroid/nearby/SwapView;
.source "SelectAppsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;,
        Lorg/fdroid/fdroid/nearby/SelectAppsView$InstalledApp;
    }
.end annotation


# instance fields
.field private adapter:Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;

.field private listView:Landroid/widget/ListView;


# direct methods
.method public static synthetic $r8$lambda$OsNLVrg_H0s8d-M0jmVUmmM29Fs(Lorg/fdroid/fdroid/nearby/SelectAppsView;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/fdroid/fdroid/nearby/SelectAppsView;->lambda$onFinishInflate$0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtoggleAppSelected(Lorg/fdroid/fdroid/nearby/SelectAppsView;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/SelectAppsView;->toggleAppSelected(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/SwapView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/nearby/SwapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lorg/fdroid/fdroid/nearby/SwapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/fdroid/fdroid/nearby/SwapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 63
    invoke-direct {p0, p3}, Lorg/fdroid/fdroid/nearby/SelectAppsView;->toggleAppSelected(I)V

    return-void
.end method

.method private toggleAppSelected(I)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView;->adapter:Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;

    .line 74
    invoke-virtual {v0, p1}, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;->getItem(I)Lorg/fdroid/fdroid/nearby/SelectAppsView$InstalledApp;

    move-result-object p1

    iget-object p1, p1, Lorg/fdroid/fdroid/nearby/SelectAppsView$InstalledApp;->packageName:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapView;->getActivity()Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->getSwapService()Lorg/fdroid/fdroid/nearby/SwapService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/fdroid/fdroid/nearby/SwapService;->hasSelectedPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapView;->getActivity()Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->getSwapService()Lorg/fdroid/fdroid/nearby/SwapService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/fdroid/fdroid/nearby/SwapService;->deselectPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapView;->getActivity()Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->getSwapService()Lorg/fdroid/fdroid/nearby/SwapService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/fdroid/fdroid/nearby/SwapService;->selectPackage(Ljava/lang/String;)V

    .line 80
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapView;->getActivity()Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->getSwapService()Lorg/fdroid/fdroid/nearby/SwapService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/nearby/SwapService;->getAppsToSwap()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/fdroid/fdroid/nearby/LocalRepoService;->create(Landroid/content/Context;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public afterAppsLoaded()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView;->listView:Landroid/widget/ListView;

    .line 84
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView;->listView:Landroid/widget/ListView;

    .line 85
    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/fdroid/nearby/SelectAppsView$InstalledApp;

    .line 86
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapView;->getActivity()Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->getSwapService()Lorg/fdroid/fdroid/nearby/SwapService;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fdroid/fdroid/nearby/SwapService;->ensureFDroidSelected()V

    .line 87
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapView;->getActivity()Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->getSwapService()Lorg/fdroid/fdroid/nearby/SwapService;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fdroid/fdroid/nearby/SwapService;->getAppsToSwap()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 88
    iget-object v4, v1, Lorg/fdroid/fdroid/nearby/SelectAppsView$InstalledApp;->packageName:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView;->listView:Landroid/widget/ListView;

    const/4 v4, 0x1

    .line 89
    invoke-virtual {v3, v0, v4}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 55
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    sget v0, Lorg/fdroid/fdroid/R$id;->list:I

    .line 56
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView;->listView:Landroid/widget/ListView;

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 58
    new-instance v1, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;

    iget-object v2, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView;->listView:Landroid/widget/ListView;

    invoke-direct {v1, p0, v2, v0}, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;-><init>(Lorg/fdroid/fdroid/nearby/SelectAppsView;Landroid/widget/ListView;Ljava/util/List;)V

    iput-object v1, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView;->adapter:Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView;->listView:Landroid/widget/ListView;

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView;->listView:Landroid/widget/ListView;

    const/4 v1, 0x2

    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView;->listView:Landroid/widget/ListView;

    .line 63
    new-instance v1, Lorg/fdroid/fdroid/nearby/SelectAppsView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/fdroid/fdroid/nearby/SelectAppsView$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/nearby/SelectAppsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 64
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SelectAppsView;->afterAppsLoaded()V

    return-void
.end method

.method public setCurrentFilterString(Ljava/lang/String;)V
    .locals 1

    .line 69
    invoke-super {p0, p1}, Lorg/fdroid/fdroid/nearby/SwapView;->setCurrentFilterString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView;->adapter:Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;

    .line 70
    invoke-virtual {v0, p1}, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;->setSearchTerm(Ljava/lang/String;)V

    return-void
.end method
