.class public Lorg/fdroid/fdroid/views/ScreenShotsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ScreenShotsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/views/ScreenShotsActivity$ScreenShotPagerAdapter;,
        Lorg/fdroid/fdroid/views/ScreenShotsActivity$DepthPageTransformer;,
        Lorg/fdroid/fdroid/views/ScreenShotsActivity$ScreenShotPageFragment;
    }
.end annotation


# static fields
.field private static final EXTRA_REPO_ID:Ljava/lang/String; = "EXTRA_REPO_ID"

.field private static final EXTRA_SCREENSHOT_LIST:Ljava/lang/String; = "EXTRA_SCREENSHOT_LIST"

.field private static final EXTRA_START_POSITION:Ljava/lang/String; = "EXTRA_START_POSITION"

.field private static allowDownload:Z = true


# direct methods
.method static bridge synthetic -$$Nest$sfgetallowDownload()Z
    .locals 1

    .line 0
    sget-boolean v0, Lorg/fdroid/fdroid/views/ScreenShotsActivity;->allowDownload:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static getStartIntent(Landroid/content/Context;JLjava/util/List;I)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/FileV2;",
            ">;I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/fdroid/fdroid/views/ScreenShotsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "EXTRA_REPO_ID"

    .line 47
    invoke-virtual {v0, p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p0, "EXTRA_SCREENSHOT_LIST"

    .line 48
    invoke-static {p3}, Lorg/fdroid/fdroid/Utils;->toString(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p0, "EXTRA_START_POSITION"

    .line 49
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/FDroidApp;

    .line 56
    invoke-virtual {v0, p0}, Lorg/fdroid/fdroid/FDroidApp;->setSecureWindow(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 58
    invoke-virtual {v0, p0}, Lorg/fdroid/fdroid/FDroidApp;->applyPureBlackBackgroundInDarkTheme(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 60
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lorg/fdroid/fdroid/R$layout;->activity_screenshots:I

    .line 61
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "EXTRA_REPO_ID"

    const-wide/16 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "EXTRA_SCREENSHOT_LIST"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 65
    invoke-static {p1}, Lorg/fdroid/fdroid/Utils;->fileV2FromStrings(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_START_POSITION"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sget v3, Lorg/fdroid/fdroid/R$id;->screenshot_view_pager:I

    .line 68
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/ViewPager;

    .line 69
    new-instance v4, Lorg/fdroid/fdroid/views/ScreenShotsActivity$ScreenShotPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    invoke-direct {v4, v5, v0, v1, p1}, Lorg/fdroid/fdroid/views/ScreenShotsActivity$ScreenShotPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;JLjava/util/List;)V

    .line 70
    invoke-virtual {v3, v4}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 71
    invoke-virtual {v3, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 74
    new-instance p1, Lorg/fdroid/fdroid/views/ScreenShotsActivity$DepthPageTransformer;

    invoke-direct {p1}, Lorg/fdroid/fdroid/views/ScreenShotsActivity$DepthPageTransformer;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {v3, v0, p1}, Landroidx/viewpager/widget/ViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 85
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 86
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->isBackgroundDownloadAllowed()Z

    move-result v0

    sput-boolean v0, Lorg/fdroid/fdroid/views/ScreenShotsActivity;->allowDownload:Z

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 79
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 80
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->isOnDemandDownloadAllowed()Z

    move-result v0

    sput-boolean v0, Lorg/fdroid/fdroid/views/ScreenShotsActivity;->allowDownload:Z

    return-void
.end method
