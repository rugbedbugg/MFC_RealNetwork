.class public Lorg/fdroid/fdroid/views/apps/AppListActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AppListActivity.java"

# interfaces
.implements Lorg/fdroid/fdroid/views/apps/CategoryTextWatcher$SearchTermsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/views/apps/AppListActivity$SortClause;
    }
.end annotation


# static fields
.field public static final EXTRA_CATEGORY:Ljava/lang/String; = "org.fdroid.fdroid.views.apps.AppListActivity.EXTRA_CATEGORY"

.field public static final EXTRA_CATEGORY_NAME:Ljava/lang/String; = "org.fdroid.fdroid.views.apps.AppListActivity.EXTRA_CATEGORY_NAME"

.field public static final EXTRA_REPO_ID:Ljava/lang/String; = "org.fdroid.fdroid.views.apps.AppListActivity.REPO_ID"

.field public static final EXTRA_SEARCH_TERMS:Ljava/lang/String; = "org.fdroid.fdroid.views.apps.AppListActivity.EXTRA_SEARCH_TERMS"

.field private static final SEARCH_TERMS_KEY:Ljava/lang/String; = "searchTerms"

.field private static final SORT_CLAUSE_KEY:Ljava/lang/String; = "sortClauseSelected"

.field public static final TAG:Ljava/lang/String; = "AppListActivity"

.field private static savedSearchSettings:Landroid/content/SharedPreferences;


# instance fields
.field private appAdapter:Lorg/fdroid/fdroid/views/apps/AppListAdapter;

.field private appView:Landroidx/recyclerview/widget/RecyclerView;

.field private categoryId:Ljava/lang/String;

.field private db:Lorg/fdroid/database/FDroidDatabase;

.field private emptyState:Landroid/widget/TextView;

.field private hiddenAppNotice:Landroid/view/View;

.field private itemsLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end field

.field private keyboardStateMonitor:Lorg/fdroid/fdroid/Utils$KeyboardStateMonitor;

.field private repoId:J

.field private searchInput:Landroid/widget/EditText;

.field private searchTerms:Ljava/lang/String;

.field private sortClauseSelected:Ljava/lang/String;

.field private sortImage:Landroid/widget/ImageView;


# direct methods
.method public static synthetic $r8$lambda$3ZPJU_PeIBRqalx2Q0_T4yAjQ1c(Lorg/fdroid/fdroid/views/apps/AppListActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/fdroid/fdroid/views/apps/AppListActivity;->lambda$onCreate$0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$5abAjuFela5YK3gcuNQ9PKoKaoA(Lorg/fdroid/fdroid/views/apps/AppListActivity;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/apps/AppListActivity;->onAppsLoaded(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D8B8ofQNnnEm_2nYWZuLqx85pXI(Lorg/fdroid/fdroid/views/apps/AppListActivity;Lorg/fdroid/database/AppListItem;Lorg/fdroid/database/AppListItem;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/views/apps/AppListActivity;->lambda$onAppsLoaded$6(Lorg/fdroid/database/AppListItem;Lorg/fdroid/database/AppListItem;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$DW8AwJQ5HUSdY-DyRyI96oV1ivw(Lorg/fdroid/fdroid/views/apps/AppListActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/apps/AppListActivity;->lambda$onCreate$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_1spCsGOL5a0OUpXQ3v7L-K9X8k(Lorg/fdroid/fdroid/views/apps/AppListActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/apps/AppListActivity;->lambda$onCreate$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_k7UYM3LVpXBOOnAa3nNoIrUjDs(Lorg/fdroid/fdroid/views/apps/AppListActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/apps/AppListActivity;->lambda$onCreate$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$arIJ4H2ebNCD0-Qmu-n7-XwsI9Y(Lorg/fdroid/fdroid/views/apps/AppListActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/apps/AppListActivity;->lambda$onAppsLoaded$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$hv3U-RpMkNufDFUeUBqnYIwBiPA(Lorg/fdroid/fdroid/views/apps/AppListActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/apps/AppListActivity;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private static getSavedSearchSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "saved-search-settings"

    const/4 v1, 0x0

    .line 327
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private getSearchText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    .line 249
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p2, :cond_1

    .line 253
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$onAppsLoaded$5()V
    .locals 1

    const/4 v0, 0x1

    .line 265
    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/views/apps/AppListActivity;->setShowHiddenAppsNotice(Z)V

    return-void
.end method

.method private synthetic lambda$onAppsLoaded$6(Lorg/fdroid/database/AppListItem;Lorg/fdroid/database/AppListItem;)I
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->sortClauseSelected:Ljava/lang/String;

    const-string v1, "lastUpdated"

    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p2}, Lorg/fdroid/database/AppListItem;->getLastUpdated()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/fdroid/database/AppListItem;->getLastUpdated()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->sortClauseSelected:Ljava/lang/String;

    const-string v1, "name"

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    invoke-virtual {p1}, Lorg/fdroid/database/AppListItem;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_1

    move-object p1, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/fdroid/database/AppListItem;->getName()Ljava/lang/String;

    move-result-object p1

    .line 273
    :goto_0
    invoke-static {}, Lorg/fdroid/fdroid/compat/LocaleCompat;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 274
    invoke-virtual {p2}, Lorg/fdroid/database/AppListItem;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lorg/fdroid/database/AppListItem;->getName()Ljava/lang/String;

    move-result-object v1

    .line 275
    :goto_1
    invoke-static {}, Lorg/fdroid/fdroid/compat/LocaleCompat;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 276
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$onCreate$0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x3

    const/4 p3, 0x0

    if-ne p2, p1, :cond_0

    const-class p1, Landroid/view/inputmethod/InputMethodManager;

    .line 127
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->searchInput:Landroid/widget/EditText;

    .line 129
    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->appView:Landroidx/recyclerview/widget/RecyclerView;

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    const/4 p1, 0x1

    return p1

    :cond_0
    return p3
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->sortClauseSelected:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "lastUpdated"

    if-nez v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown sort clause: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->sortClauseSelected:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppListActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->sortClauseSelected:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->sortClauseSelected:Ljava/lang/String;

    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->sortImage:Landroid/widget/ImageView;

    sget v0, Lorg/fdroid/fdroid/R$drawable;->ic_sort:I

    .line 150
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->sortClauseSelected:Ljava/lang/String;

    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->sortImage:Landroid/widget/ImageView;

    sget v0, Lorg/fdroid/fdroid/R$drawable;->ic_last_updated:I

    .line 146
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "sortClauseSelected"

    iget-object v1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->sortClauseSelected:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lorg/fdroid/fdroid/views/apps/AppListActivity;->putSavedSearchSettings(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/apps/AppListActivity;->loadItems()V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->appView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    .line 158
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method private synthetic lambda$onCreate$2(Landroid/view/View;)V
    .locals 2

    .line 163
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/fdroid/fdroid/views/main/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "org.fdroid.fdroid.views.main.MainActivity.VIEW_SETTINGS"

    const/4 v1, 0x1

    .line 164
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$onCreate$3(Landroid/view/View;)V
    .locals 0

    .line 170
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$onCreate$4(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->searchInput:Landroid/widget/EditText;

    const-string v1, ""

    .line 174
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->searchInput:Landroid/widget/EditText;

    .line 175
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->keyboardStateMonitor:Lorg/fdroid/fdroid/Utils$KeyboardStateMonitor;

    .line 176
    invoke-virtual {v0}, Lorg/fdroid/fdroid/Utils$KeyboardStateMonitor;->isKeyboardVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    .line 178
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    :cond_0
    return-void
.end method

.method private loadItems()V
    .locals 6

    iget-object v4, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->searchTerms:Ljava/lang/String;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->itemsLiveData:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    :cond_0
    const-string v0, "name"

    iget-object v1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->sortClauseSelected:Ljava/lang/String;

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/fdroid/database/AppListSortOrder;->NAME:Lorg/fdroid/database/AppListSortOrder;

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/fdroid/database/AppListSortOrder;->LAST_UPDATED:Lorg/fdroid/database/AppListSortOrder;

    goto :goto_0

    :goto_1
    iget-wide v0, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->repoId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->db:Lorg/fdroid/database/FDroidDatabase;

    .line 237
    invoke-interface {v0}, Lorg/fdroid/database/FDroidDatabase;->getAppDao()Lorg/fdroid/database/AppDao;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-wide v2, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->repoId:J

    invoke-interface/range {v0 .. v5}, Lorg/fdroid/database/AppDao;->getAppListItems(Landroid/content/pm/PackageManager;JLjava/lang/String;Lorg/fdroid/database/AppListSortOrder;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->itemsLiveData:Landroidx/lifecycle/LiveData;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->categoryId:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->db:Lorg/fdroid/database/FDroidDatabase;

    .line 239
    invoke-interface {v0}, Lorg/fdroid/database/FDroidDatabase;->getAppDao()Lorg/fdroid/database/AppDao;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-interface {v0, v1, v4, v5}, Lorg/fdroid/database/AppDao;->getAppListItems(Landroid/content/pm/PackageManager;Ljava/lang/String;Lorg/fdroid/database/AppListSortOrder;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->itemsLiveData:Landroidx/lifecycle/LiveData;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->db:Lorg/fdroid/database/FDroidDatabase;

    .line 241
    invoke-interface {v0}, Lorg/fdroid/database/FDroidDatabase;->getAppDao()Lorg/fdroid/database/AppDao;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->categoryId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v4, v5}, Lorg/fdroid/database/AppDao;->getAppListItems(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/database/AppListSortOrder;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->itemsLiveData:Landroidx/lifecycle/LiveData;

    :goto_2
    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->itemsLiveData:Landroidx/lifecycle/LiveData;

    .line 243
    new-instance v1, Lorg/fdroid/fdroid/views/apps/AppListActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/fdroid/fdroid/views/apps/AppListActivity$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/views/apps/AppListActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private onAppsLoaded(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/AppListItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 264
    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/views/apps/AppListActivity;->setShowHiddenAppsNotice(Z)V

    iget-object v1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->appAdapter:Lorg/fdroid/fdroid/views/apps/AppListAdapter;

    .line 265
    new-instance v2, Lorg/fdroid/fdroid/views/apps/AppListActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/fdroid/fdroid/views/apps/AppListActivity$$ExternalSyntheticLambda1;-><init>(Lorg/fdroid/fdroid/views/apps/AppListActivity;)V

    invoke-virtual {v1, v2}, Lorg/fdroid/fdroid/views/apps/AppListAdapter;->setHasHiddenAppsCallback(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->searchTerms:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 268
    new-instance v1, Lorg/fdroid/fdroid/views/apps/AppListActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/fdroid/fdroid/views/apps/AppListActivity$$ExternalSyntheticLambda2;-><init>(Lorg/fdroid/fdroid/views/apps/AppListActivity;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    iget-object v1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->appAdapter:Lorg/fdroid/fdroid/views/apps/AppListAdapter;

    iget-wide v2, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->repoId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 284
    :goto_0
    invoke-virtual {v1, v2}, Lorg/fdroid/fdroid/views/apps/AppListAdapter;->setHideInstallButton(Z)V

    iget-object v1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->appAdapter:Lorg/fdroid/fdroid/views/apps/AppListAdapter;

    .line 285
    invoke-virtual {v1, p1}, Lorg/fdroid/fdroid/views/apps/AppListAdapter;->setItems(Ljava/util/List;)V

    .line 286
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0x8

    if-lez p1, :cond_2

    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->emptyState:Landroid/widget/TextView;

    .line 287
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->appView:Landroidx/recyclerview/widget/RecyclerView;

    .line 288
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->emptyState:Landroid/widget/TextView;

    .line 290
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->appView:Landroidx/recyclerview/widget/RecyclerView;

    .line 291
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private parseIntentForSearchQuery()V
    .locals 6

    .line 204
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "org.fdroid.fdroid.views.apps.AppListActivity.EXTRA_CATEGORY"

    .line 205
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    iput-object v1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->categoryId:Ljava/lang/String;

    const-string v1, "org.fdroid.fdroid.views.apps.AppListActivity.EXTRA_SEARCH_TERMS"

    .line 206
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    iput-object v1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->searchTerms:Ljava/lang/String;

    const-string v1, "org.fdroid.fdroid.views.apps.AppListActivity.REPO_ID"

    .line 207
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const-wide/16 v4, -0x1

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    :cond_2
    iput-wide v4, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->repoId:J

    const-wide/16 v1, 0x0

    cmp-long v1, v4, v1

    if-lez v1, :cond_3

    .line 209
    invoke-static {p0}, Lorg/fdroid/fdroid/FDroidApp;->getRepoManager(Landroid/content/Context;)Lorg/fdroid/index/RepoManager;

    move-result-object v0

    iget-wide v1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->repoId:J

    invoke-virtual {v0, v1, v2}, Lorg/fdroid/index/RepoManager;->getRepository(J)Lorg/fdroid/database/Repository;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 211
    invoke-static {}, Landroidx/core/os/LocaleListCompat;->getDefault()Landroidx/core/os/LocaleListCompat;

    move-result-object v1

    iget-object v2, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->searchInput:Landroid/widget/EditText;

    .line 212
    invoke-virtual {v0, v1}, Lorg/fdroid/database/Repository;->getName(Landroidx/core/os/LocaleListCompat;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->searchTerms:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/fdroid/fdroid/views/apps/AppListActivity;->getSearchText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    const-string v1, "org.fdroid.fdroid.views.apps.AppListActivity.EXTRA_CATEGORY_NAME"

    .line 215
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 216
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_4
    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->searchInput:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->searchTerms:Ljava/lang/String;

    .line 217
    invoke-direct {p0, v3, v1}, Lorg/fdroid/fdroid/views/apps/AppListActivity;->getSearchText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->searchInput:Landroid/widget/EditText;

    .line 220
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->categoryId:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->appView:Landroidx/recyclerview/widget/RecyclerView;

    .line 225
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_6
    return-void
.end method

.method private static putSavedSearchSettings(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->savedSearchSettings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 314
    invoke-static {p0}, Lorg/fdroid/fdroid/views/apps/AppListActivity;->getSavedSearchSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->savedSearchSettings:Landroid/content/SharedPreferences;

    :cond_0
    sget-object p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->savedSearchSettings:Landroid/content/SharedPreferences;

    .line 316
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static removeSavedSearchSettings(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->savedSearchSettings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 321
    invoke-static {p0}, Lorg/fdroid/fdroid/views/apps/AppListActivity;->getSavedSearchSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->savedSearchSettings:Landroid/content/SharedPreferences;

    :cond_0
    sget-object p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->savedSearchSettings:Landroid/content/SharedPreferences;

    .line 323
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setShowHiddenAppsNotice(Z)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->hiddenAppNotice:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 260
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/FDroidApp;

    .line 106
    invoke-virtual {v0, p0}, Lorg/fdroid/fdroid/FDroidApp;->setSecureWindow(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 108
    invoke-virtual {v0, p0}, Lorg/fdroid/fdroid/FDroidApp;->applyPureBlackBackgroundInDarkTheme(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 110
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lorg/fdroid/fdroid/R$layout;->activity_app_list:I

    .line 112
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/fdroid/fdroid/data/DBHelper;->getDb(Landroid/content/Context;)Lorg/fdroid/database/FDroidDatabase;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->db:Lorg/fdroid/database/FDroidDatabase;

    .line 115
    new-instance p1, Lorg/fdroid/fdroid/Utils$KeyboardStateMonitor;

    sget v0, Lorg/fdroid/fdroid/R$id;->app_list_root:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/fdroid/fdroid/Utils$KeyboardStateMonitor;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->keyboardStateMonitor:Lorg/fdroid/fdroid/Utils$KeyboardStateMonitor;

    .line 117
    invoke-static {p0}, Lorg/fdroid/fdroid/views/apps/AppListActivity;->getSavedSearchSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    sput-object p1, Lorg/fdroid/fdroid/views/apps/AppListActivity;->savedSearchSettings:Landroid/content/SharedPreferences;

    const-string v0, "searchTerms"

    const/4 v1, 0x0

    .line 118
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->searchTerms:Ljava/lang/String;

    sget-object p1, Lorg/fdroid/fdroid/views/apps/AppListActivity;->savedSearchSettings:Landroid/content/SharedPreferences;

    const-string v0, "sortClauseSelected"

    const-string v1, "lastUpdated"

    .line 119
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->sortClauseSelected:Ljava/lang/String;

    sget p1, Lorg/fdroid/fdroid/R$id;->search:I

    .line 121
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->searchInput:Landroid/widget/EditText;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->searchTerms:Ljava/lang/String;

    .line 122
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->searchInput:Landroid/widget/EditText;

    .line 123
    new-instance v0, Lorg/fdroid/fdroid/views/apps/CategoryTextWatcher;

    invoke-direct {v0, p0, p1, p0}, Lorg/fdroid/fdroid/views/apps/CategoryTextWatcher;-><init>(Landroid/content/Context;Landroid/widget/EditText;Lorg/fdroid/fdroid/views/apps/CategoryTextWatcher$SearchTermsChangedListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->searchInput:Landroid/widget/EditText;

    .line 124
    new-instance v0, Lorg/fdroid/fdroid/views/apps/AppListActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/apps/AppListActivity$$ExternalSyntheticLambda3;-><init>(Lorg/fdroid/fdroid/views/apps/AppListActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    sget p1, Lorg/fdroid/fdroid/R$id;->sort:I

    .line 138
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->sortImage:Landroid/widget/ImageView;

    const-string v0, "name"

    iget-object v1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->sortClauseSelected:Ljava/lang/String;

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lorg/fdroid/fdroid/R$drawable;->ic_sort:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/fdroid/fdroid/R$drawable;->ic_last_updated:I

    .line 139
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->sortImage:Landroid/widget/ImageView;

    .line 142
    new-instance v0, Lorg/fdroid/fdroid/views/apps/AppListActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/apps/AppListActivity$$ExternalSyntheticLambda4;-><init>(Lorg/fdroid/fdroid/views/apps/AppListActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lorg/fdroid/fdroid/R$id;->hiddenAppNotice:I

    .line 161
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->hiddenAppNotice:Landroid/view/View;

    .line 162
    new-instance v0, Lorg/fdroid/fdroid/views/apps/AppListActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/apps/AppListActivity$$ExternalSyntheticLambda5;-><init>(Lorg/fdroid/fdroid/views/apps/AppListActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lorg/fdroid/fdroid/R$id;->empty_state:I

    .line 167
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->emptyState:Landroid/widget/TextView;

    sget p1, Lorg/fdroid/fdroid/R$id;->back:I

    .line 169
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 170
    new-instance v0, Lorg/fdroid/fdroid/views/apps/AppListActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/apps/AppListActivity$$ExternalSyntheticLambda6;-><init>(Lorg/fdroid/fdroid/views/apps/AppListActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lorg/fdroid/fdroid/R$id;->clear:I

    .line 172
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 173
    new-instance v0, Lorg/fdroid/fdroid/views/apps/AppListActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/apps/AppListActivity$$ExternalSyntheticLambda7;-><init>(Lorg/fdroid/fdroid/views/apps/AppListActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    new-instance p1, Lorg/fdroid/fdroid/views/apps/AppListAdapter;

    invoke-direct {p1, p0}, Lorg/fdroid/fdroid/views/apps/AppListAdapter;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->appAdapter:Lorg/fdroid/fdroid/views/apps/AppListAdapter;

    sget p1, Lorg/fdroid/fdroid/R$id;->app_list:I

    .line 187
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->appView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    .line 188
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->appView:Landroidx/recyclerview/widget/RecyclerView;

    .line 189
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->appView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->appAdapter:Lorg/fdroid/fdroid/views/apps/AppListAdapter;

    .line 190
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 193
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/apps/AppListActivity;->parseIntentForSearchQuery()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 198
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 199
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 200
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fdroid/fdroid/Preferences;->isBackgroundDownloadAllowed()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    .line 199
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->applyDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;

    return-void
.end method

.method public onSearchTermsChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->categoryId:Ljava/lang/String;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->repoId:J

    .line 302
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->searchTerms:Ljava/lang/String;

    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity;->appView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    .line 303
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 304
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/apps/AppListActivity;->loadItems()V

    .line 305
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "searchTerms"

    if-eqz p1, :cond_2

    .line 306
    invoke-static {p0, v0}, Lorg/fdroid/fdroid/views/apps/AppListActivity;->removeSavedSearchSettings(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 308
    :cond_2
    invoke-static {p0, v0, p2}, Lorg/fdroid/fdroid/views/apps/AppListActivity;->putSavedSearchSettings(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
