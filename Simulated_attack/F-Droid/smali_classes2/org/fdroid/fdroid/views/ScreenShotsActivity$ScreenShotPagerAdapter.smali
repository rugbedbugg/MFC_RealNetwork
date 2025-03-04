.class Lorg/fdroid/fdroid/views/ScreenShotsActivity$ScreenShotPagerAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "ScreenShotsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/views/ScreenShotsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenShotPagerAdapter"
.end annotation


# instance fields
.field private final repoId:J

.field private final screenshots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/FileV2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager;JLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "J",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/FileV2;",
            ">;)V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-wide p2, p0, Lorg/fdroid/fdroid/views/ScreenShotsActivity$ScreenShotPagerAdapter;->repoId:J

    iput-object p4, p0, Lorg/fdroid/fdroid/views/ScreenShotsActivity$ScreenShotPagerAdapter;->screenshots:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/ScreenShotsActivity$ScreenShotPagerAdapter;->screenshots:Ljava/util/List;

    .line 108
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 3

    iget-wide v0, p0, Lorg/fdroid/fdroid/views/ScreenShotsActivity$ScreenShotPagerAdapter;->repoId:J

    iget-object v2, p0, Lorg/fdroid/fdroid/views/ScreenShotsActivity$ScreenShotPagerAdapter;->screenshots:Ljava/util/List;

    .line 103
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fdroid/index/v2/FileV2;

    invoke-static {v0, v1, p1}, Lorg/fdroid/fdroid/views/ScreenShotsActivity$ScreenShotPageFragment;->newInstance(JLorg/fdroid/index/v2/FileV2;)Lorg/fdroid/fdroid/views/ScreenShotsActivity$ScreenShotPageFragment;

    move-result-object p1

    return-object p1
.end method
