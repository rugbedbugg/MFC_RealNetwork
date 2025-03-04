.class Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectAppsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/nearby/SelectAppsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppListAdapter"
.end annotation


# instance fields
.field private final allPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/nearby/SelectAppsView$InstalledApp;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private defaultAppIcon:Landroid/graphics/drawable/Drawable;

.field private final filteredPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/nearby/SelectAppsView$InstalledApp;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field private final listView:Landroid/widget/ListView;

.field final synthetic this$0:Lorg/fdroid/fdroid/nearby/SelectAppsView;


# direct methods
.method public static synthetic $r8$lambda$PneCZ8RYHKbW1QNyNTFQO5VGeUk(Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;ILandroid/widget/CompoundButton;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;->lambda$bindView$0(ILandroid/widget/CompoundButton;Z)V

    return-void
.end method

.method constructor <init>(Lorg/fdroid/fdroid/nearby/SelectAppsView;Landroid/widget/ListView;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ListView;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;->this$0:Lorg/fdroid/fdroid/nearby/SelectAppsView;

    .line 110
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;->context:Landroid/content/Context;

    .line 108
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;->filteredPackages:Ljava/util/List;

    iput-object p2, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;->listView:Landroid/widget/ListView;

    .line 112
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;->allPackages:Ljava/util/List;

    .line 113
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/PackageInfo;

    iget-object p3, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;->allPackages:Ljava/util/List;

    .line 114
    new-instance v0, Lorg/fdroid/fdroid/nearby/SelectAppsView$InstalledApp;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lorg/fdroid/fdroid/nearby/SelectAppsView$InstalledApp;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;->filteredPackages:Ljava/util/List;

    iget-object p2, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;->allPackages:Ljava/util/List;

    .line 116
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private getDefaultAppIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;->defaultAppIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const v0, 0x1080093

    .line 145
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;->defaultAppIcon:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;->defaultAppIcon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method private getInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;->inflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget v1, Lorg/fdroid/fdroid/R$style;->SwapTheme_AppList_ListItem:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-class p1, Landroid/view/LayoutInflater;

    .line 138
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;->inflater:Landroid/view/LayoutInflater;

    :cond_0
    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;->inflater:Landroid/view/LayoutInflater;

    return-object p1
.end method

.method private synthetic lambda$bindView$0(ILandroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p2, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;->listView:Landroid/widget/ListView;

    .line 187
    invoke-virtual {p2, p1, p3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    iget-object p2, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;->this$0:Lorg/fdroid/fdroid/nearby/SelectAppsView;

    .line 188
    invoke-static {p2, p1}, Lorg/fdroid/fdroid/nearby/SelectAppsView;->-$$Nest$mtoggleAppSelected(Lorg/fdroid/fdroid/nearby/SelectAppsView;I)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;I)V
    .locals 6

    .line 160
    invoke-virtual {p0, p3}, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;->getItem(I)Lorg/fdroid/fdroid/nearby/SelectAppsView$InstalledApp;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$id;->package_name:I

    .line 162
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lorg/fdroid/fdroid/R$id;->application_label:I

    .line 163
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x1020006

    .line 164
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 168
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v0, Lorg/fdroid/fdroid/nearby/SelectAppsView$InstalledApp;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    invoke-direct {p0, p2}, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;->getDefaultAppIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 173
    :goto_0
    iget-object v4, v0, Lorg/fdroid/fdroid/nearby/SelectAppsView$InstalledApp;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, v0, Lorg/fdroid/fdroid/nearby/SelectAppsView$InstalledApp;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget p2, Lorg/fdroid/fdroid/R$id;->checkbox:I

    .line 180
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 182
    check-cast p1, Landroid/widget/CheckBox;

    const/4 p2, 0x0

    .line 183
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p2, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;->listView:Landroid/widget/ListView;

    .line 185
    invoke-virtual {p2, p3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 186
    new-instance p2, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3}, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;I)V

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;->filteredPackages:Ljava/util/List;

    .line 195
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;->getItem(I)Lorg/fdroid/fdroid/nearby/SelectAppsView$InstalledApp;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lorg/fdroid/fdroid/nearby/SelectAppsView$InstalledApp;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;->filteredPackages:Ljava/util/List;

    .line 200
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/nearby/SelectAppsView$InstalledApp;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 205
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;->getItem(I)Lorg/fdroid/fdroid/nearby/SelectAppsView$InstalledApp;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;->context:Landroid/content/Context;

    .line 153
    invoke-direct {p0, p2}, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;->getInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lorg/fdroid/fdroid/R$layout;->select_local_apps_list_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object p3, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;->context:Landroid/content/Context;

    .line 155
    invoke-virtual {p0, p2, p3, p1}, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;I)V

    return-object p2
.end method

.method setSearchTerm(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;->filteredPackages:Ljava/util/List;

    .line 120
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;->filteredPackages:Ljava/util/List;

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;->allPackages:Ljava/util/List;

    .line 122
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 124
    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;->allPackages:Ljava/util/List;

    .line 125
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/fdroid/nearby/SelectAppsView$InstalledApp;

    .line 126
    iget-object v2, v1, Lorg/fdroid/fdroid/nearby/SelectAppsView$InstalledApp;->name:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/fdroid/fdroid/nearby/SelectAppsView$AppListAdapter;->filteredPackages:Ljava/util/List;

    .line 127
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
