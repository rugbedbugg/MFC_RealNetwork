.class public Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "UpdateableAppsHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private final appsToUpdate:Landroid/widget/TextView;

.field private final downloadAll:Landroid/widget/Button;

.field private header:Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader;

.field private final toggleAppsToUpdate:Landroid/widget/Button;

.field private final updatesAvailable:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$U0T1amYpeUaMdWSxJDlnAKoGoM8(Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$ViewHolder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$ViewHolder;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jdvyEjrBwAV4IQp1eLGQsjyBmEk(Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$ViewHolder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$ViewHolder;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 79
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Lorg/fdroid/fdroid/R$id;->text_updates_available:I

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$ViewHolder;->updatesAvailable:Landroid/widget/TextView;

    sget v0, Lorg/fdroid/fdroid/R$id;->text_apps_to_update:I

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$ViewHolder;->appsToUpdate:Landroid/widget/TextView;

    sget v0, Lorg/fdroid/fdroid/R$id;->button_download_all:I

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$ViewHolder;->downloadAll:Landroid/widget/Button;

    sget v1, Lorg/fdroid/fdroid/R$id;->button_toggle_apps_to_update:I

    .line 84
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$ViewHolder;->toggleAppsToUpdate:Landroid/widget/Button;

    .line 85
    new-instance v1, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$ViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$ViewHolder$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$ViewHolder;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 90
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    new-instance p1, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$ViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$ViewHolder$$ExternalSyntheticLambda1;-><init>(Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$ViewHolder;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$ViewHolder;->header:Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader;

    .line 86
    iget-object p1, p1, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader;->adapter:Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;

    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->toggleAllUpdateableApps()V

    .line 87
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$ViewHolder;->updateToggleButtonText()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$ViewHolder;->downloadAll:Landroid/widget/Button;

    const/16 v0, 0x8

    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$ViewHolder;->header:Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader;

    .line 93
    iget-object p1, p1, Lorg/fdroid/fdroid/views/updates/items/AppUpdateData;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getInstance(Landroid/content/Context;)Lorg/fdroid/fdroid/AppUpdateStatusManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->checkForUpdatesAndInstall()V

    return-void
.end method

.method private updateToggleButtonText()V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$ViewHolder;->header:Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader;

    .line 114
    iget-object v0, v0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader;->adapter:Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;

    invoke-virtual {v0}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->canViewAllUpdateableApps()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$ViewHolder;->toggleAppsToUpdate:Landroid/widget/Button;

    sget v1, Lorg/fdroid/fdroid/R$string;->updates__hide_updateable_apps:I

    .line 115
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$ViewHolder;->toggleAppsToUpdate:Landroid/widget/Button;

    sget v1, Lorg/fdroid/fdroid/R$string;->updates__show_updateable_apps:I

    .line 117
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method bindHeader(Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader;)V
    .locals 7

    iput-object p1, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$ViewHolder;->header:Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$ViewHolder;->updatesAvailable:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 100
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/fdroid/fdroid/R$plurals;->updates__download_updates_for_apps:I

    iget-object v3, p1, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader;->apps:Ljava/util/List;

    .line 101
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader;->apps:Ljava/util/List;

    .line 102
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 101
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader;->apps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    iget-object p1, p1, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader;->apps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/fdroid/views/updates/items/UpdateableApp;

    .line 106
    iget-object v1, v1, Lorg/fdroid/fdroid/views/updates/items/UpdateableApp;->app:Lorg/fdroid/fdroid/data/App;

    iget-object v1, v1, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$ViewHolder;->appsToUpdate:Landroid/widget/TextView;

    const-string v1, ", "

    .line 109
    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppsHeader$ViewHolder;->updateToggleButtonText()V

    return-void
.end method
