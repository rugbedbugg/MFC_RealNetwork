.class public Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AppDetailsRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;,
        Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;,
        Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ScreenShotsViewHolder;,
        Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;,
        Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$LinksViewHolder;,
        Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$PermissionsViewHolder;,
        Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionsViewHolder;,
        Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$NoVersionsViewHolder;,
        Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionsLoadingViewHolder;,
        Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;,
        Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsViewHolder;,
        Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$SafeURLSpan;,
        Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ExpandableLinearLayoutViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AppDetailsRecyclerViewA"

.field private static final VIEWTYPE_DONATE:I = 0x2

.field private static final VIEWTYPE_HEADER:I = 0x0

.field private static final VIEWTYPE_LINKS:I = 0x3

.field private static final VIEWTYPE_NO_VERSIONS:I = 0x6

.field private static final VIEWTYPE_PERMISSIONS:I = 0x4

.field private static final VIEWTYPE_SCREENSHOTS:I = 0x1

.field private static final VIEWTYPE_VERSION:I = 0x8

.field private static final VIEWTYPE_VERSIONS:I = 0x5

.field private static final VIEWTYPE_VERSIONS_LOADING:I = 0x7


# instance fields
.field private app:Lorg/fdroid/fdroid/data/App;

.field private final callbacks:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;

.field private final compatibleVersionsDifferentSigner:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/data/Apk;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private downloadedApk:Lorg/fdroid/fdroid/data/Apk;

.field private headerView:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private preferredRepoId:Ljava/lang/Long;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final repos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/database/Repository;",
            ">;"
        }
    .end annotation
.end field

.field private showVersions:Z

.field private suggestedApk:Lorg/fdroid/fdroid/data/Apk;

.field private final versions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/data/Apk;",
            ">;"
        }
    .end annotation
.end field

.field private final versionsExpandTracker:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private versionsLoading:Z


# direct methods
.method public static synthetic $r8$lambda$2CozllMADleKmc9GKUknOEBqex0(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->lambda$addLinkItemView$1(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$G-glHlxXz7u2TRBv9goa20a_u6M(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->lambda$addLinkItemView$0(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->app:Lorg/fdroid/fdroid/data/App;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcallbacks(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->callbacks:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcompatibleVersionsDifferentSigner(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->compatibleVersionsDifferentSigner:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdownloadedApk(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/Apk;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->downloadedApk:Lorg/fdroid/fdroid/data/Apk;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetitems(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->items:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpreferredRepoId(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Ljava/lang/Long;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->preferredRepoId:Ljava/lang/Long;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrecyclerView(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrepos(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->repos:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetshowVersions(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->showVersions:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsuggestedApk(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/Apk;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->suggestedApk:Lorg/fdroid/fdroid/data/Apk;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetversions(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->versions:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetversionsExpandTracker(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->versionsExpandTracker:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetversionsLoading(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->versionsLoading:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$maddLinkItemView(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Landroid/view/ViewGroup;IILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->addLinkItemView(Landroid/view/ViewGroup;IILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddLinkItemView(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Landroid/view/ViewGroup;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->addLinkItemView(Landroid/view/ViewGroup;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monLinkClicked(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->onLinkClicked(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetShowVersions(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->setShowVersions(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$muriIsSetAndCanBeOpened(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->uriIsSetAndCanBeOpened(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;)V
    .locals 1

    .line 138
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->items:Ljava/util/List;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->repos:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->preferredRepoId:Ljava/lang/Long;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->versions:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->compatibleVersionsDifferentSigner:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->versionsLoading:Z

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->versionsExpandTracker:Ljava/util/HashMap;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->context:Landroid/content/Context;

    iput-object p3, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->callbacks:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->app:Lorg/fdroid/fdroid/data/App;

    const/4 p1, 0x0

    .line 143
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->addItem(I)V

    return-void
.end method

.method private addItem(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 257
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->shouldShowDonate()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 259
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->shouldShowPermissions()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->items:Ljava/util/List;

    .line 262
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addLinkItemView(Landroid/view/ViewGroup;IILjava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 1400
    invoke-direct/range {v0 .. v5}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->addLinkItemView(Landroid/view/ViewGroup;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addLinkItemView(Landroid/view/ViewGroup;IILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1404
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$layout;->app_details2_link_item:I

    const/4 v2, 0x0

    .line 1405
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez p5, :cond_0

    .line 1408
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p5, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1410
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p5, v3, v2

    invoke-virtual {v1, p2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1412
    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1413
    invoke-static {v0, p3, v2, v2, v2}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V

    .line 1414
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1415
    new-instance p1, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p4}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1416
    new-instance p1, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2, p4}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private getLinearSmoothScroller(I)Landroidx/recyclerview/widget/LinearSmoothScroller;
    .locals 3

    .line 239
    new-instance v0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$1;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$1;-><init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Landroid/content/Context;)V

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->versions:Ljava/util/List;

    .line 249
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr p1, v1

    add-int/lit8 p1, p1, -0x1

    .line 250
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    return-object v0
.end method

.method private synthetic lambda$addLinkItemView$0(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1415
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->onLinkClicked(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$addLinkItemView$1(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)Z
    .locals 1

    iget-object p3, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->context:Landroid/content/Context;

    sget v0, Lorg/fdroid/fdroid/R$string;->copied_url_to_clipboard:I

    .line 1417
    invoke-static {p3, p1, p2, v0}, Lorg/fdroid/fdroid/Utils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1
.end method

.method private notifyVersionViewsChanged()V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->items:Ljava/util/List;

    const/4 v1, 0x5

    .line 284
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->versions:Ljava/util/List;

    .line 285
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method private onLinkClicked(Ljava/lang/String;)V
    .locals 1

    .line 1423
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->callbacks:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;

    .line 1424
    invoke-interface {v0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;->openUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setShowVersions(ZZ)V
    .locals 3

    iput-boolean p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->showVersions:Z

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->items:Ljava/util/List;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->versions:Ljava/util/List;

    .line 215
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->items:Ljava/util/List;

    const/4 v2, 0x5

    .line 216
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->items:Ljava/util/List;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->versions:Ljava/util/List;

    .line 223
    invoke-interface {p1, v2, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->versions:Ljava/util/List;

    .line 224
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 226
    invoke-direct {p0, v2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->getLinearSmoothScroller(I)Landroidx/recyclerview/widget/LinearSmoothScroller;

    move-result-object p1

    iget-object p2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 227
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->versions:Ljava/util/List;

    .line 230
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 232
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private shouldShowDonate()Z
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->app:Lorg/fdroid/fdroid/data/App;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 275
    :cond_0
    iget-object v0, v0, Lorg/fdroid/fdroid/data/App;->donate:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->uriIsSetAndCanBeOpened(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->app:Lorg/fdroid/fdroid/data/App;

    .line 276
    invoke-virtual {v0}, Lorg/fdroid/fdroid/data/App;->getBitcoinUri()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->uriIsSetAndCanBeOpened(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->app:Lorg/fdroid/fdroid/data/App;

    .line 277
    invoke-virtual {v0}, Lorg/fdroid/fdroid/data/App;->getLitecoinUri()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->uriIsSetAndCanBeOpened(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->app:Lorg/fdroid/fdroid/data/App;

    .line 278
    invoke-virtual {v0}, Lorg/fdroid/fdroid/data/App;->getFlattrUri()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->uriIsSetAndCanBeOpened(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->app:Lorg/fdroid/fdroid/data/App;

    .line 279
    invoke-virtual {v0}, Lorg/fdroid/fdroid/data/App;->getLiberapayUri()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->uriIsSetAndCanBeOpened(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->app:Lorg/fdroid/fdroid/data/App;

    .line 280
    invoke-virtual {v0}, Lorg/fdroid/fdroid/data/App;->getOpenCollectiveUri()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->uriIsSetAndCanBeOpened(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private shouldShowPermissions()Z
    .locals 4

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->app:Lorg/fdroid/fdroid/data/App;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 268
    :cond_0
    iget-object v0, v0, Lorg/fdroid/fdroid/data/App;->installedApk:Lorg/fdroid/fdroid/data/Apk;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->suggestedApk:Lorg/fdroid/fdroid/data/Apk;

    :cond_1
    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 269
    iget-boolean v0, v0, Lorg/fdroid/fdroid/data/Apk;->compatible:Z

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iget-object v3, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->versions:Ljava/util/List;

    .line 270
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v0, :cond_3

    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->showIncompatibleVersions()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method public static trimTrailingNewlines(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 1445
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 1449
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 1450
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1454
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    return-object p0

    :cond_3
    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    .line 1457
    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private uriIsSetAndCanBeOpened(Ljava/lang/String;)Z
    .locals 3

    .line 1429
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1432
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 1433
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method clearProgress()V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->headerView:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->clearProgress()V

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->downloadedApk:Lorg/fdroid/fdroid/data/Apk;

    if-eqz v0, :cond_1

    .line 298
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->notifyVersionViewsChanged()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->downloadedApk:Lorg/fdroid/fdroid/data/Apk;

    :cond_1
    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->items:Ljava/util/List;

    .line 398
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->items:Ljava/util/List;

    .line 403
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/fdroid/fdroid/data/Apk;

    if-eqz v0, :cond_0

    const/16 p1, 0x8

    return p1

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->items:Ljava/util/List;

    .line 406
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method notifyAboutDownloadedApk(Lorg/fdroid/fdroid/data/Apk;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->downloadedApk:Lorg/fdroid/fdroid/data/Apk;

    .line 290
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->notifyVersionViewsChanged()V

    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 761
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 362
    invoke-virtual {p0, p2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->items:Ljava/util/List;

    .line 382
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/fdroid/fdroid/data/Apk;

    .line 383
    check-cast p1, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;

    invoke-virtual {p1, p2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->bindModel(Lorg/fdroid/fdroid/data/Apk;)V

    goto :goto_0

    .line 378
    :pswitch_1
    check-cast p1, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsViewHolder;

    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsViewHolder;->bindModel()V

    goto :goto_0

    .line 365
    :pswitch_2
    check-cast p1, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->headerView:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;

    .line 367
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->bindModel()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 318
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    .line 356
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown view type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget p2, Lorg/fdroid/fdroid/R$layout;->app_details2_version_item:I

    .line 353
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 354
    new-instance p2, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;

    invoke-direct {p2, p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;-><init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    sget p2, Lorg/fdroid/fdroid/R$layout;->app_details2_loading:I

    .line 349
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 350
    new-instance p2, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionsLoadingViewHolder;

    invoke-direct {p2, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionsLoadingViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    sget p2, Lorg/fdroid/fdroid/R$layout;->app_details2_links:I

    .line 345
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 346
    new-instance p2, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$NoVersionsViewHolder;

    invoke-direct {p2, p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$NoVersionsViewHolder;-><init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Landroid/view/View;)V

    goto :goto_0

    :pswitch_3
    sget p2, Lorg/fdroid/fdroid/R$layout;->app_details2_links:I

    .line 341
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 342
    new-instance p2, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionsViewHolder;

    invoke-direct {p2, p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionsViewHolder;-><init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Landroid/view/View;)V

    goto :goto_0

    :pswitch_4
    sget p2, Lorg/fdroid/fdroid/R$layout;->app_details2_links:I

    .line 337
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 338
    new-instance p2, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$PermissionsViewHolder;

    invoke-direct {p2, p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$PermissionsViewHolder;-><init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Landroid/view/View;)V

    goto :goto_0

    :pswitch_5
    sget p2, Lorg/fdroid/fdroid/R$layout;->app_details2_links:I

    .line 333
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 334
    new-instance p2, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$LinksViewHolder;

    invoke-direct {p2, p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$LinksViewHolder;-><init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Landroid/view/View;)V

    goto :goto_0

    :pswitch_6
    sget p2, Lorg/fdroid/fdroid/R$layout;->app_details2_donate:I

    .line 329
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 330
    new-instance p2, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;

    invoke-direct {p2, p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;-><init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Landroid/view/View;)V

    goto :goto_0

    :pswitch_7
    sget p2, Lorg/fdroid/fdroid/R$layout;->app_details2_screenshots:I

    .line 325
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 326
    new-instance p2, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ScreenShotsViewHolder;

    invoke-direct {p2, p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$ScreenShotsViewHolder;-><init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Landroid/view/View;)V

    goto :goto_0

    :pswitch_8
    sget p2, Lorg/fdroid/fdroid/R$layout;->app_details2_header:I

    .line 321
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 322
    new-instance p2, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;

    invoke-direct {p2, p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;-><init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Landroid/view/View;)V

    :goto_0
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 768
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 390
    instance-of v0, p1, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->headerView:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;

    .line 393
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method setIndeterminateProgress(I)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->headerView:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->setIndeterminateProgress(I)V

    :cond_0
    return-void
.end method

.method setProgress(JJ)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->headerView:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->setProgress(JJ)V

    :cond_0
    return-void
.end method

.method setRepos(Ljava/util/List;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Repository;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->repos:Ljava/util/List;

    .line 203
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->repos:Ljava/util/List;

    .line 204
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 205
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->preferredRepoId:Ljava/lang/Long;

    const/4 p1, 0x0

    .line 206
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method setShowVersions(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 210
    invoke-direct {p0, p1, v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->setShowVersions(ZZ)V

    return-void
.end method

.method public updateItems(Lorg/fdroid/fdroid/data/App;Ljava/util/List;Lorg/fdroid/database/AppPrefs;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/fdroid/data/App;",
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/data/Apk;",
            ">;",
            "Lorg/fdroid/database/AppPrefs;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->app:Lorg/fdroid/fdroid/data/App;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->versionsLoading:Z

    iget-object v2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->items:Ljava/util/List;

    .line 150
    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->versions:Ljava/util/List;

    .line 151
    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->suggestedApk:Lorg/fdroid/fdroid/data/Apk;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->compatibleVersionsDifferentSigner:Ljava/util/List;

    .line 155
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 156
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fdroid/fdroid/Preferences;->showIncompatibleVersions()Z

    move-result v2

    if-eqz p2, :cond_6

    .line 158
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/fdroid/fdroid/data/Apk;

    .line 159
    iget-boolean v5, v4, Lorg/fdroid/fdroid/data/Apk;->compatible:Z

    if-nez v5, :cond_3

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v5, v0

    goto :goto_3

    :cond_3
    :goto_2
    move v5, v1

    .line 160
    :goto_3
    iget-object v6, p1, Lorg/fdroid/fdroid/data/App;->installedSigner:Ljava/lang/String;

    if-eqz v6, :cond_5

    if-nez v2, :cond_5

    .line 161
    iget-object v7, v4, Lorg/fdroid/fdroid/data/Apk;->signer:Ljava/lang/String;

    .line 162
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    move v6, v0

    goto :goto_5

    :cond_5
    :goto_4
    move v6, v1

    :goto_5
    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->compatibleVersionsDifferentSigner:Ljava/util/List;

    .line 164
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_1

    iget-object v5, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->versions:Ljava/util/List;

    .line 166
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->versionsExpandTracker:Ljava/util/HashMap;

    .line 167
    invoke-virtual {v4}, Lorg/fdroid/fdroid/data/Apk;->getApkPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->versionsExpandTracker:Ljava/util/HashMap;

    .line 168
    invoke-virtual {v4}, Lorg/fdroid/fdroid/data/Apk;->getApkPath()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_8

    .line 175
    invoke-virtual {p1, p2, p3}, Lorg/fdroid/fdroid/data/App;->findSuggestedApk(Ljava/util/List;Lorg/fdroid/database/AppPrefs;)Lorg/fdroid/fdroid/data/Apk;

    move-result-object p2

    .line 178
    iget-object p3, p1, Lorg/fdroid/fdroid/data/App;->installedSigner:Ljava/lang/String;

    if-eqz p3, :cond_7

    if-eqz p2, :cond_8

    iget-object v2, p2, Lorg/fdroid/fdroid/data/Apk;->signer:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    :cond_7
    iput-object p2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->suggestedApk:Lorg/fdroid/fdroid/data/Apk;

    .line 183
    :cond_8
    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->addItem(I)V

    .line 184
    invoke-virtual {p1}, Lorg/fdroid/fdroid/data/App;->getAllScreenshots()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-direct {p0, v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->addItem(I)V

    :cond_9
    const/4 p1, 0x2

    .line 185
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->addItem(I)V

    const/4 p1, 0x3

    .line 186
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->addItem(I)V

    const/4 p1, 0x4

    .line 187
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->addItem(I)V

    iget-boolean p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->versionsLoading:Z

    if-eqz p1, :cond_a

    const/4 p1, 0x7

    .line 189
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->addItem(I)V

    goto :goto_6

    :cond_a
    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->versions:Ljava/util/List;

    .line 190
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    const/4 p1, 0x6

    .line 191
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->addItem(I)V

    goto :goto_6

    :cond_b
    const/4 p1, 0x5

    .line 193
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->addItem(I)V

    iget-boolean p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->showVersions:Z

    if-eqz p1, :cond_c

    .line 195
    invoke-virtual {p0, v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->setShowVersions(Z)V

    .line 199
    :cond_c
    :goto_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
