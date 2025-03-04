.class public Lorg/fdroid/fdroid/views/main/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/views/main/MainActivity$NonScrollingHorizontalLayoutManager;
    }
.end annotation


# static fields
.field public static final ACTION_REQUEST_SWAP:Ljava/lang/String; = "requestSwap"

.field private static final EXTRA_VIEW_CATEGORIES:Ljava/lang/String; = "org.fdroid.fdroid.views.main.MainActivity.VIEW_CATEGORIES"

.field public static final EXTRA_VIEW_LATEST:Ljava/lang/String; = "org.fdroid.fdroid.views.main.MainActivity.VIEW_LATEST"

.field private static final EXTRA_VIEW_NEARBY:Ljava/lang/String; = "org.fdroid.fdroid.views.main.MainActivity.VIEW_NEARBY"

.field public static final EXTRA_VIEW_SETTINGS:Ljava/lang/String; = "org.fdroid.fdroid.views.main.MainActivity.VIEW_SETTINGS"

.field public static final EXTRA_VIEW_UPDATES:Ljava/lang/String; = "org.fdroid.fdroid.views.main.MainActivity.VIEW_UPDATES"

.field static final REQUEST_LOCATION_PERMISSIONS:I = 0xef0f

.field static final REQUEST_STORAGE_ACCESS:I = 0x40e5

.field static final REQUEST_STORAGE_PERMISSIONS:I = 0xb004

.field private static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field private adapter:Lorg/fdroid/fdroid/views/main/MainViewAdapter;

.field private bottomNavigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field private pager:Landroidx/recyclerview/widget/RecyclerView;

.field private final permissionLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher;"
        }
    .end annotation
.end field

.field private updatesBadge:Lcom/google/android/material/badge/BadgeDrawable;


# direct methods
.method public static synthetic $r8$lambda$CQdL9uPNkjA2Q6WCfQxQnd9Mf9Y(Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/fdroid/fdroid/views/main/MainActivity;->lambda$new$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lty-JPJsKD87wSbUIwKroICrWQo(Lorg/fdroid/fdroid/views/main/MainActivity;Landroid/view/MenuItem;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/main/MainActivity;->lambda$onCreate$1(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$nIlfqc73j3Nycfz6EfLTant3F1o(Lorg/fdroid/fdroid/views/main/MainActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/main/MainActivity;->refreshUpdatesBadge(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 76
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 97
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    new-instance v1, Lorg/fdroid/fdroid/views/main/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/fdroid/fdroid/views/main/MainActivity$$ExternalSyntheticLambda0;-><init>()V

    .line 98
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/views/main/MainActivity;->permissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private handleMainViewSelectIntent(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "org.fdroid.fdroid.views.main.MainActivity.VIEW_NEARBY"

    .line 252
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget p1, Lorg/fdroid/fdroid/R$id;->nearby:I

    .line 253
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/main/MainActivity;->setSelectedMenuInNav(I)V

    return v1

    :cond_0
    const-string v0, "org.fdroid.fdroid.views.main.MainActivity.VIEW_UPDATES"

    .line 255
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget p1, Lorg/fdroid/fdroid/R$id;->updates:I

    .line 256
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/main/MainActivity;->setSelectedMenuInNav(I)V

    return v1

    :cond_1
    const-string v0, "org.fdroid.fdroid.views.main.MainActivity.VIEW_SETTINGS"

    .line 258
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lorg/fdroid/fdroid/R$id;->settings:I

    .line 259
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/main/MainActivity;->setSelectedMenuInNav(I)V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private handleSearchOrAppViewIntent(Landroid/content/Intent;)V
    .locals 7

    .line 271
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "query"

    .line 272
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 273
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/main/MainActivity;->performSearch(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 277
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 282
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-virtual {p1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_11

    .line 287
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 291
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v5, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "details"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v5, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "www.amazon.com"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v5, 0x7

    goto :goto_0

    :sswitch_2
    const-string v2, "staging.f-droid.org"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v5, 0x6

    goto :goto_0

    :sswitch_3
    const-string v2, "www.f-droid.org"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_4
    const-string v2, "f-droid.org"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "amazon.com"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_6
    const-string v2, "play.google.com"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_7
    const-string v2, "apps"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    move v5, v3

    goto :goto_0

    :sswitch_8
    const-string v2, "search"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v5, 0x0

    :goto_0
    const-string v0, "q"

    const-string v2, "id"

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_3

    .line 311
    :pswitch_0
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    :pswitch_1
    const-string v0, "/app/"

    .line 295
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "/packages/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "^/[a-z][a-z][a-zA-Z_-]*/packages/.*"

    .line 296
    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1

    :cond_d
    const-string v0, "/repository/browse"

    .line 299
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "fdfilter"

    .line 301
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "fdid"

    .line 304
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    :cond_e
    const-string v0, "/app"

    .line 305
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "/packages"

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_3

    .line 298
    :cond_f
    :goto_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :pswitch_2
    const-string v5, "/store/apps/details"

    .line 318
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 320
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_10
    const-string v2, "/store/search"

    .line 321
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 323
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :pswitch_3
    const-string v0, "p"

    .line 331
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "s"

    .line 332
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 315
    :pswitch_4
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_11
    const-string v1, "fdroid.app"

    .line 335
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 337
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_12
    const-string v1, "fdroid.search"

    .line 338
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 340
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    :goto_2
    move-object v6, v4

    move-object v4, p1

    move-object p1, v6

    goto :goto_4

    :cond_13
    :goto_3
    move-object p1, v4

    .line 343
    :goto_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "pname:"

    .line 345
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ":"

    if-eqz v0, :cond_14

    .line 346
    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v3

    .line 350
    :cond_14
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 351
    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v4, v0, v3

    .line 355
    :cond_15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "\'"

    const-string v2, "MainActivity"

    if-nez v0, :cond_16

    const-string v0, "[^A-Za-z\\d_.]"

    const-string v3, ""

    .line 357
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FDroid launched via app link for \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/fdroid/fdroid/views/AppDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "appid"

    .line 360
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 362
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_5

    .line 363
    :cond_16
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_17

    .line 364
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FDroid launched via search link for \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-direct {p0, v4}, Lorg/fdroid/fdroid/views/main/MainActivity;->performSearch(Ljava/lang/String;)V

    :cond_17
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x36059a58 -> :sswitch_8
        0x2dca72 -> :sswitch_7
        0x1b24f46 -> :sswitch_6
        0x68fce97 -> :sswitch_5
        0x19a1c3cb -> :sswitch_4
        0x1d8c9df4 -> :sswitch_3
        0x22421298 -> :sswitch_2
        0x383c8b4e -> :sswitch_1
        0x5cd8f242 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private initialRepoUpdateIfRequired()V
    .locals 2

    .line 185
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->isIndexNeverUpdated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-static {p0}, Lorg/fdroid/fdroid/FDroidApp;->getRepoUpdateManager(Landroid/content/Context;)Lorg/fdroid/fdroid/RepoUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/RepoUpdateManager;->isUpdating()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MainActivity"

    const-string v1, "We haven\'t done an update yet. Forcing repo update."

    .line 187
    invoke-static {v0, v1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {p0}, Lorg/fdroid/fdroid/work/RepoUpdateWorker;->updateNow(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$new$0(Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/MainActivity;->pager:Landroidx/recyclerview/widget/RecyclerView;

    .line 123
    invoke-interface {p1}, Landroid/view/MenuItem;->getOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 125
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lorg/fdroid/fdroid/R$id;->latest:I

    if-ne v0, v1, :cond_0

    .line 126
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object p1

    const-string v0, "org.fdroid.fdroid.views.main.MainActivity.VIEW_LATEST"

    invoke-virtual {p1, v0}, Lorg/fdroid/fdroid/Preferences;->setBottomNavigationViewName(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lorg/fdroid/fdroid/R$id;->categories:I

    if-ne v0, v1, :cond_1

    .line 128
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object p1

    const-string v0, "org.fdroid.fdroid.views.main.MainActivity.VIEW_CATEGORIES"

    invoke-virtual {p1, v0}, Lorg/fdroid/fdroid/Preferences;->setBottomNavigationViewName(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lorg/fdroid/fdroid/R$id;->nearby:I

    if-ne v0, v1, :cond_2

    .line 130
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object p1

    const-string v0, "org.fdroid.fdroid.views.main.MainActivity.VIEW_NEARBY"

    invoke-virtual {p1, v0}, Lorg/fdroid/fdroid/Preferences;->setBottomNavigationViewName(Ljava/lang/String;)V

    .line 132
    invoke-static {p0}, Lorg/fdroid/fdroid/views/main/NearbyViewBinder;->updateUsbOtg(Landroid/content/Context;)V

    goto :goto_0

    .line 133
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lorg/fdroid/fdroid/R$id;->updates:I

    if-ne v0, v1, :cond_3

    .line 134
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object p1

    const-string v0, "org.fdroid.fdroid.views.main.MainActivity.VIEW_UPDATES"

    invoke-virtual {p1, v0}, Lorg/fdroid/fdroid/Preferences;->setBottomNavigationViewName(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lorg/fdroid/fdroid/R$id;->settings:I

    if-ne p1, v0, :cond_4

    .line 136
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object p1

    const-string v0, "org.fdroid.fdroid.views.main.MainActivity.VIEW_SETTINGS"

    invoke-virtual {p1, v0}, Lorg/fdroid/fdroid/Preferences;->setBottomNavigationViewName(Ljava/lang/String;)V

    :cond_4
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private performSearch(Ljava/lang/String;)V
    .locals 2

    .line 380
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/fdroid/fdroid/views/apps/AppListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "org.fdroid.fdroid.views.apps.AppListActivity.EXTRA_SEARCH_TERMS"

    .line 381
    invoke-static {p1}, Lorg/fdroid/fdroid/views/main/MainActivity;->sanitizeSearchTerms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private refreshUpdatesBadge(I)V
    .locals 1

    if-gtz p1, :cond_0

    iget-object p1, p0, Lorg/fdroid/fdroid/views/main/MainActivity;->updatesBadge:Lcom/google/android/material/badge/BadgeDrawable;

    const/4 v0, 0x0

    .line 387
    invoke-virtual {p1, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setVisible(Z)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/main/MainActivity;->updatesBadge:Lcom/google/android/material/badge/BadgeDrawable;

    .line 388
    invoke-virtual {p1}, Lcom/google/android/material/badge/BadgeDrawable;->clearNumber()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/MainActivity;->updatesBadge:Lcom/google/android/material/badge/BadgeDrawable;

    .line 390
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->setNumber(I)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/main/MainActivity;->updatesBadge:Lcom/google/android/material/badge/BadgeDrawable;

    const/4 v0, 0x1

    .line 391
    invoke-virtual {p1, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method static sanitizeSearchTerms(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "[^\\p{L}\\d_ -]"

    const-string v1, " "

    .line 373
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setSelectedMenuInNav(I)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/MainActivity;->adapter:Lorg/fdroid/fdroid/views/main/MainViewAdapter;

    .line 161
    invoke-virtual {v0, p1}, Lorg/fdroid/fdroid/views/main/MainViewAdapter;->adapterPositionFromItemId(I)I

    move-result p1

    if-gez p1, :cond_0

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid menu position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MainActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/MainActivity;->pager:Landroidx/recyclerview/widget/RecyclerView;

    .line 165
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/MainActivity;->bottomNavigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 166
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :goto_0
    return-void
.end method

.method private setSelectedMenuInNav(Ljava/lang/String;)V
    .locals 1

    const-string v0, "org.fdroid.fdroid.views.main.MainActivity.VIEW_LATEST"

    .line 171
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget p1, Lorg/fdroid/fdroid/R$id;->latest:I

    .line 172
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/main/MainActivity;->setSelectedMenuInNav(I)V

    goto :goto_0

    :cond_0
    const-string v0, "org.fdroid.fdroid.views.main.MainActivity.VIEW_CATEGORIES"

    .line 173
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget p1, Lorg/fdroid/fdroid/R$id;->categories:I

    .line 174
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/main/MainActivity;->setSelectedMenuInNav(I)V

    goto :goto_0

    :cond_1
    const-string v0, "org.fdroid.fdroid.views.main.MainActivity.VIEW_NEARBY"

    .line 175
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget p1, Lorg/fdroid/fdroid/R$id;->nearby:I

    .line 176
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/main/MainActivity;->setSelectedMenuInNav(I)V

    goto :goto_0

    :cond_2
    const-string v0, "org.fdroid.fdroid.views.main.MainActivity.VIEW_UPDATES"

    .line 177
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget p1, Lorg/fdroid/fdroid/R$id;->updates:I

    .line 178
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/main/MainActivity;->setSelectedMenuInNav(I)V

    goto :goto_0

    :cond_3
    const-string v0, "org.fdroid.fdroid.views.main.MainActivity.VIEW_SETTINGS"

    .line 179
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget p1, Lorg/fdroid/fdroid/R$id;->settings:I

    .line 180
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/main/MainActivity;->setSelectedMenuInNav(I)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 227
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x40e5

    if-ne p1, p2, :cond_0

    .line 229
    invoke-static {p0, p3}, Lorg/fdroid/fdroid/nearby/TreeUriScannerIntentService;->onActivityResult(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 104
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/FDroidApp;

    .line 105
    invoke-virtual {v0, p0}, Lorg/fdroid/fdroid/FDroidApp;->setSecureWindow(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 107
    invoke-virtual {v0, p0}, Lorg/fdroid/fdroid/FDroidApp;->applyPureBlackBackgroundInDarkTheme(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 109
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lorg/fdroid/fdroid/R$layout;->activity_main:I

    .line 111
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 113
    new-instance p1, Lorg/fdroid/fdroid/views/main/MainViewAdapter;

    invoke-direct {p1, p0}, Lorg/fdroid/fdroid/views/main/MainViewAdapter;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/main/MainActivity;->adapter:Lorg/fdroid/fdroid/views/main/MainViewAdapter;

    sget p1, Lorg/fdroid/fdroid/R$id;->main_view_pager:I

    .line 115
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/main/MainActivity;->pager:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    .line 116
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/main/MainActivity;->pager:Landroidx/recyclerview/widget/RecyclerView;

    .line 117
    new-instance v0, Lorg/fdroid/fdroid/views/main/MainActivity$NonScrollingHorizontalLayoutManager;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/main/MainActivity$NonScrollingHorizontalLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/main/MainActivity;->pager:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/MainActivity;->adapter:Lorg/fdroid/fdroid/views/main/MainViewAdapter;

    .line 118
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    sget p1, Lorg/fdroid/fdroid/R$id;->bottom_navigation:I

    .line 120
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/main/MainActivity;->bottomNavigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 121
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fdroid/fdroid/Preferences;->getBottomNavigationViewName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/main/MainActivity;->setSelectedMenuInNav(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/main/MainActivity;->bottomNavigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 122
    new-instance v0, Lorg/fdroid/fdroid/views/main/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/main/MainActivity$$ExternalSyntheticLambda1;-><init>(Lorg/fdroid/fdroid/views/main/MainActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/main/MainActivity;->bottomNavigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    sget v0, Lorg/fdroid/fdroid/R$id;->updates:I

    .line 141
    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/NavigationBarView;->getOrCreateBadge(I)Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/views/main/MainActivity;->updatesBadge:Lcom/google/android/material/badge/BadgeDrawable;

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p1, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setVisible(Z)V

    .line 144
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/main/MainActivity;->initialRepoUpdateIfRequired()V

    .line 146
    invoke-static {p0}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getInstance(Landroid/content/Context;)Lorg/fdroid/fdroid/AppUpdateStatusManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getNumUpdatableApps()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lorg/fdroid/fdroid/views/main/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/main/MainActivity$$ExternalSyntheticLambda2;-><init>(Lorg/fdroid/fdroid/views/main/MainActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 148
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 149
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/main/MainActivity;->handleMainViewSelectIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 152
    :cond_0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/main/MainActivity;->handleSearchOrAppViewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 216
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 218
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/main/MainActivity;->handleMainViewSelectIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 222
    :cond_0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/main/MainActivity;->handleSearchOrAppViewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 236
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const p2, 0xef0f

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 238
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/nearby/WifiStateChangeService;->start(Landroid/content/Context;Landroid/content/Intent;)V

    .line 239
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lorg/fdroid/fdroid/nearby/SwapService;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const p2, 0xb004

    if-ne p1, p2, :cond_1

    sget p1, Lorg/fdroid/fdroid/R$string;->scan_removable_storage_toast:I

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, ""

    const/4 v0, 0x0

    aput-object p3, p2, v0

    .line 242
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 241
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 243
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 244
    invoke-static {p0}, Lorg/fdroid/fdroid/nearby/SDCardScannerService;->scan(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 194
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 196
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/fdroid/fdroid/FDroidApp;->checkStartTor(Landroid/content/Context;Lorg/fdroid/fdroid/Preferences;)V

    .line 198
    invoke-static {p0}, Lorg/fdroid/fdroid/views/main/NearbyViewBinder;->updateExternalStorageViews(Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 203
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 208
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/main/MainActivity;->permissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 209
    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
