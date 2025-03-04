.class public Lorg/fdroid/fdroid/views/categories/AppCardController;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AppCardController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DAYS_TO_CONSIDER_NEW:I = 0xe


# instance fields
.field private final activity:Landroidx/appcompat/app/AppCompatActivity;

.field private currentApp:Lorg/fdroid/database/AppOverviewItem;

.field private final icon:Landroid/widget/ImageView;

.field private final name:Landroid/widget/TextView;

.field private final newTag:Landroid/widget/TextView;

.field private final summary:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V
    .locals 0

    .line 58
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/categories/AppCardController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget p1, Lorg/fdroid/fdroid/R$id;->icon:I

    .line 62
    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->requireViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/categories/AppCardController;->icon:Landroid/widget/ImageView;

    sget p1, Lorg/fdroid/fdroid/R$id;->name:I

    .line 63
    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->requireViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/categories/AppCardController;->name:Landroid/widget/TextView;

    sget p1, Lorg/fdroid/fdroid/R$id;->summary:I

    .line 64
    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->requireViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/categories/AppCardController;->summary:Landroid/widget/TextView;

    sget p1, Lorg/fdroid/fdroid/R$id;->new_tag:I

    .line 66
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/categories/AppCardController;->newTag:Landroid/widget/TextView;

    .line 68
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isConsideredNew(Lorg/fdroid/database/AppOverviewItem;)Z
    .locals 4

    .line 88
    invoke-virtual {p1}, Lorg/fdroid/database/AppOverviewItem;->getAdded()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/fdroid/database/AppOverviewItem;->getLastUpdated()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 91
    :cond_0
    invoke-virtual {p1}, Lorg/fdroid/database/AppOverviewItem;->getAdded()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/fdroid/fdroid/Utils;->daysSince(J)I

    move-result p1

    const/16 v0, 0xe

    if-gt p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public bindApp(Lorg/fdroid/database/AppOverviewItem;)V
    .locals 2

    iput-object p1, p0, Lorg/fdroid/fdroid/views/categories/AppCardController;->currentApp:Lorg/fdroid/database/AppOverviewItem;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/categories/AppCardController;->name:Landroid/widget/TextView;

    .line 74
    invoke-virtual {p1}, Lorg/fdroid/database/AppOverviewItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/categories/AppCardController;->summary:Landroid/widget/TextView;

    .line 75
    invoke-virtual {p1}, Lorg/fdroid/database/AppOverviewItem;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/categories/AppCardController;->newTag:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 78
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/categories/AppCardController;->isConsideredNew(Lorg/fdroid/database/AppOverviewItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/views/categories/AppCardController;->newTag:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/categories/AppCardController;->newTag:Landroid/widget/TextView;

    const/16 v1, 0x8

    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/categories/AppCardController;->icon:Landroid/widget/ImageView;

    .line 84
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/fdroid/fdroid/Utils;->setIconFromRepoOrPM(Lorg/fdroid/database/AppOverviewItem;Landroid/widget/ImageView;Landroid/content/Context;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lorg/fdroid/fdroid/views/categories/AppCardController;->currentApp:Lorg/fdroid/database/AppOverviewItem;

    if-nez p1, :cond_0

    return-void

    .line 103
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/categories/AppCardController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const-class v1, Lorg/fdroid/fdroid/views/AppDetailsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/categories/AppCardController;->currentApp:Lorg/fdroid/database/AppOverviewItem;

    .line 104
    invoke-virtual {v0}, Lorg/fdroid/database/AppOverviewItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appid"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/categories/AppCardController;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/categories/AppCardController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v2, Lorg/fdroid/fdroid/R$string;->transition_app_item_icon:I

    .line 106
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {v0, v1}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/categories/AppCardController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const/4 v2, 0x1

    new-array v2, v2, [Landroidx/core/util/Pair;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 110
    invoke-static {v1, v2}, Landroidx/core/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroidx/core/util/Pair;)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/categories/AppCardController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 111
    invoke-static {v1, p1, v0}, Landroidx/core/content/ContextCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
