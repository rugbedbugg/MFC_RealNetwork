.class public Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "InstallConfirmActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAB_ID_ALL:Ljava/lang/String; = "all"

.field private static final TAB_ID_NEW:Ljava/lang/String; = "new"


# instance fields
.field private appDiff:Lorg/fdroid/fdroid/privileged/views/AppDiff;

.field private cancelButton:Landroid/widget/Button;

.field private installConfirm:Landroid/view/View;

.field private intent:Landroid/content/Intent;

.field private okButton:Landroid/widget/Button;

.field private okCanInstall:Z

.field private scrollView:Lorg/fdroid/fdroid/privileged/views/CaffeinatedScrollView;


# direct methods
.method public static synthetic $r8$lambda$594aEZx1FIfjJR7S7itAaI8TvUE(Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;->lambda$startInstallConfirm$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$7TIhUHY5NUJa0yd3DBp9ULGO52g(Lorg/fdroid/database/AppDao;Lorg/fdroid/fdroid/data/Apk;)Lorg/fdroid/database/App;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;->lambda$onCreate$2(Lorg/fdroid/database/AppDao;Lorg/fdroid/fdroid/data/Apk;)Lorg/fdroid/database/App;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$S_c9DMGdvF_xxE3v8dNO1g1G3iY(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;->lambda$startInstallConfirm$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oCmWhvOlJgwrxk5z7h-aH2GreY0(Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;Lorg/fdroid/database/App;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;->onAppLoaded(Lorg/fdroid/database/App;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onCreate$2(Lorg/fdroid/database/AppDao;Lorg/fdroid/fdroid/data/Apk;)Lorg/fdroid/database/App;
    .locals 2

    .line 168
    iget-wide v0, p1, Lorg/fdroid/fdroid/data/Apk;->repoId:J

    iget-object p1, p1, Lorg/fdroid/fdroid/data/Apk;->packageName:Ljava/lang/String;

    invoke-interface {p0, v0, v1, p1}, Lorg/fdroid/database/AppDao;->getApp(JLjava/lang/String;)Lorg/fdroid/database/App;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$startInstallConfirm$0(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method private synthetic lambda$startInstallConfirm$1()V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;->okButton:Landroid/widget/Button;

    sget v1, Lorg/fdroid/fdroid/R$string;->menu_install:I

    .line 150
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;->okCanInstall:Z

    return-void
.end method

.method private onAppLoaded(Lorg/fdroid/database/App;)V
    .locals 3

    .line 185
    new-instance v0, Lorg/fdroid/fdroid/data/App;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/fdroid/fdroid/data/App;-><init>(Lorg/fdroid/database/App;Landroid/content/pm/PackageInfo;)V

    sget p1, Lorg/fdroid/fdroid/R$id;->app_snippet:I

    .line 186
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    sget v1, Lorg/fdroid/fdroid/R$id;->app_name:I

    .line 187
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    .line 188
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lorg/fdroid/fdroid/R$id;->app_icon:I

    .line 189
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v1, v0, Lorg/fdroid/fdroid/data/App;->iconFile:Lorg/fdroid/index/v2/FileV2;

    .line 190
    invoke-virtual {v0, p0, v1}, Lorg/fdroid/fdroid/data/App;->loadWithGlide(Landroid/content/Context;Lorg/fdroid/IndexFile;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 191
    invoke-static {}, Lorg/fdroid/fdroid/Utils;->getAlwaysShowIconRequestOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 192
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method private startInstallConfirm()V
    .locals 11

    const v0, 0x1020012

    .line 71
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    .line 72
    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    sget v1, Lorg/fdroid/fdroid/R$id;->pager:I

    .line 73
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    .line 74
    new-instance v2, Lorg/fdroid/fdroid/privileged/views/TabsAdapter;

    invoke-direct {v2, p0, v0, v1}, Lorg/fdroid/fdroid/privileged/views/TabsAdapter;-><init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/widget/TabHost;Landroidx/viewpager/widget/ViewPager;)V

    .line 75
    new-instance v1, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v2, v1}, Lorg/fdroid/fdroid/privileged/views/TabsAdapter;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;->scrollView:Lorg/fdroid/fdroid/privileged/views/CaffeinatedScrollView;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;->okCanInstall:Z

    .line 82
    new-instance v4, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;

    iget-object v5, p0, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;->appDiff:Lorg/fdroid/fdroid/privileged/views/AppDiff;

    iget-object v5, v5, Lorg/fdroid/fdroid/privileged/views/AppDiff;->apkPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {v4, p0, v5}, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V

    iget-object v5, p0, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;->appDiff:Lorg/fdroid/fdroid/privileged/views/AppDiff;

    .line 83
    iget-object v5, v5, Lorg/fdroid/fdroid/privileged/views/AppDiff;->installedApplicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    .line 84
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v7

    if-eqz v5, :cond_0

    sget v5, Lorg/fdroid/fdroid/R$string;->install_confirm_update_system:I

    goto :goto_0

    :cond_0
    sget v5, Lorg/fdroid/fdroid/R$string;->install_confirm_update:I

    .line 87
    :goto_0
    new-instance v8, Lorg/fdroid/fdroid/privileged/views/CaffeinatedScrollView;

    invoke-direct {v8, p0}, Lorg/fdroid/fdroid/privileged/views/CaffeinatedScrollView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;->scrollView:Lorg/fdroid/fdroid/privileged/views/CaffeinatedScrollView;

    .line 88
    invoke-virtual {v8, v7}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    const/4 v8, 0x4

    .line 90
    invoke-virtual {v4, v8}, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->getPermissionCount(I)I

    move-result v9

    if-lez v9, :cond_1

    iget-object v9, p0, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;->scrollView:Lorg/fdroid/fdroid/privileged/views/CaffeinatedScrollView;

    .line 93
    invoke-virtual {v4, v8}, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->getPermissionsView(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v8, "new"

    .line 99
    invoke-virtual {v0, v8}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    sget v9, Lorg/fdroid/fdroid/R$string;->newPerms:I

    .line 100
    invoke-virtual {p0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 99
    invoke-virtual {v8, v9}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    iget-object v9, p0, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;->scrollView:Lorg/fdroid/fdroid/privileged/views/CaffeinatedScrollView;

    invoke-virtual {v2, v8, v9}, Lorg/fdroid/fdroid/privileged/views/TabsAdapter;->addTab(Landroid/widget/TabHost$TabSpec;Landroid/view/View;)V

    move v8, v7

    goto :goto_1

    .line 96
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should not happen. No new permissions were found but InstallConfirmActivity has been started!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget v5, Lorg/fdroid/fdroid/R$id;->tabscontainer:I

    .line 102
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    sget v5, Lorg/fdroid/fdroid/R$id;->divider:I

    .line 103
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    move v5, v3

    move v8, v5

    :goto_1
    const v9, 0xffff

    .line 105
    invoke-virtual {v4, v9}, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->getPermissionCount(I)I

    move-result v10

    if-lez v10, :cond_4

    const-class v6, Landroid/view/LayoutInflater;

    .line 108
    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    sget v8, Lorg/fdroid/fdroid/R$layout;->permissions_list:I

    .line 109
    invoke-virtual {v6, v8, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v6, p0, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;->scrollView:Lorg/fdroid/fdroid/privileged/views/CaffeinatedScrollView;

    if-nez v6, :cond_3

    sget v6, Lorg/fdroid/fdroid/R$id;->scrollview:I

    .line 111
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lorg/fdroid/fdroid/privileged/views/CaffeinatedScrollView;

    iput-object v6, p0, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;->scrollView:Lorg/fdroid/fdroid/privileged/views/CaffeinatedScrollView;

    :cond_3
    sget v6, Lorg/fdroid/fdroid/R$id;->permission_list:I

    .line 113
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 114
    invoke-virtual {v4, v9}, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->getPermissionsView(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v4, "all"

    .line 115
    invoke-virtual {v0, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    sget v4, Lorg/fdroid/fdroid/R$string;->allPerms:I

    .line 116
    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 115
    invoke-virtual {v0, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lorg/fdroid/fdroid/privileged/views/TabsAdapter;->addTab(Landroid/widget/TabHost$TabSpec;Landroid/view/View;)V

    goto :goto_4

    :cond_4
    if-nez v8, :cond_7

    iget-object v2, p0, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;->appDiff:Lorg/fdroid/fdroid/privileged/views/AppDiff;

    .line 120
    iget-object v2, v2, Lorg/fdroid/fdroid/privileged/views/AppDiff;->installedApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_6

    .line 123
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v7

    if-eqz v2, :cond_5

    sget v2, Lorg/fdroid/fdroid/R$string;->install_confirm_update_system_no_perms:I

    :goto_2
    move v5, v2

    goto :goto_3

    :cond_5
    sget v2, Lorg/fdroid/fdroid/R$string;->install_confirm_update_no_perms:I

    goto :goto_2

    .line 130
    :goto_3
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lorg/fdroid/fdroid/R$id;->filler:I

    .line 131
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lorg/fdroid/fdroid/R$id;->divider:I

    .line 132
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iput-object v1, p0, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;->scrollView:Lorg/fdroid/fdroid/privileged/views/CaffeinatedScrollView;

    goto :goto_4

    .line 128
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "no permissions requested. This screen should not appear!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_4
    if-eqz v5, :cond_8

    sget v0, Lorg/fdroid/fdroid/R$id;->install_confirm:I

    .line 136
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    :cond_8
    iget-object v0, p0, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;->installConfirm:Landroid/view/View;

    .line 138
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lorg/fdroid/fdroid/R$id;->ok_button:I

    .line 139
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;->okButton:Landroid/widget/Button;

    sget v0, Lorg/fdroid/fdroid/R$id;->cancel_button:I

    .line 140
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;->cancelButton:Landroid/widget/Button;

    iget-object v0, p0, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;->okButton:Landroid/widget/Button;

    .line 141
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;->cancelButton:Landroid/widget/Button;

    .line 142
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;->scrollView:Lorg/fdroid/fdroid/privileged/views/CaffeinatedScrollView;

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;->okButton:Landroid/widget/Button;

    sget v1, Lorg/fdroid/fdroid/R$string;->menu_install:I

    .line 146
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iput-boolean v7, p0, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;->okCanInstall:Z

    goto :goto_5

    .line 149
    :cond_9
    new-instance v1, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity$$ExternalSyntheticLambda1;-><init>(Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;)V

    invoke-virtual {v0, v1}, Lorg/fdroid/fdroid/privileged/views/CaffeinatedScrollView;->setFullScrollAction(Ljava/lang/Runnable;)V

    :goto_5
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 197
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;->okButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    iget-boolean p1, p0, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;->okCanInstall:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;->scrollView:Lorg/fdroid/fdroid/privileged/views/CaffeinatedScrollView;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x82

    .line 206
    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    iget-object v0, p0, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;->intent:Landroid/content/Intent;

    .line 203
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 204
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;->cancelButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    iget-object v0, p0, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;->intent:Landroid/content/Intent;

    .line 209
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 210
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 158
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/FDroidApp;

    .line 159
    invoke-virtual {v0, p0}, Lorg/fdroid/fdroid/FDroidApp;->setSecureWindow(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 161
    invoke-virtual {v0, p0}, Lorg/fdroid/fdroid/FDroidApp;->applyPureBlackBackgroundInDarkTheme(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 163
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 165
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;->intent:Landroid/content/Intent;

    const-string v0, "org.fdroid.fdroid.installer.Installer.extra.APK"

    .line 166
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/data/Apk;

    .line 167
    invoke-static {p0}, Lorg/fdroid/fdroid/data/DBHelper;->getDb(Landroid/content/Context;)Lorg/fdroid/database/FDroidDatabase;

    move-result-object v0

    invoke-interface {v0}, Lorg/fdroid/database/FDroidDatabase;->getAppDao()Lorg/fdroid/database/AppDao;

    move-result-object v0

    .line 168
    new-instance v1, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p1}, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity$$ExternalSyntheticLambda2;-><init>(Lorg/fdroid/database/AppDao;Lorg/fdroid/fdroid/data/Apk;)V

    new-instance v0, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity$$ExternalSyntheticLambda3;-><init>(Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;)V

    invoke-static {v1, v0}, Lorg/fdroid/fdroid/Utils;->runOffUiThread(Landroidx/core/util/Supplier;Landroidx/core/util/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    .line 170
    new-instance v0, Lorg/fdroid/fdroid/privileged/views/AppDiff;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/fdroid/privileged/views/AppDiff;-><init>(Landroid/content/Context;Lorg/fdroid/fdroid/data/Apk;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;->appDiff:Lorg/fdroid/fdroid/privileged/views/AppDiff;

    sget p1, Lorg/fdroid/fdroid/R$layout;->install_start:I

    .line 172
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 175
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    sget p1, Lorg/fdroid/fdroid/R$id;->install_confirm_panel:I

    .line 178
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;->installConfirm:Landroid/view/View;

    const/4 v0, 0x4

    .line 179
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 181
    invoke-direct {p0}, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;->startInstallConfirm()V

    return-void
.end method
