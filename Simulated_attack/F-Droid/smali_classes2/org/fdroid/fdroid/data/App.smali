.class public Lorg/fdroid/fdroid/data/App;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/fdroid/fdroid/data/App;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/fdroid/fdroid/data/App;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "App"

.field public static systemLocaleList:Landroidx/core/os/LocaleListCompat;


# instance fields
.field public added:Ljava/util/Date;

.field public antiFeatureReasons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public antiFeatures:[Ljava/lang/String;

.field public authorEmail:Ljava/lang/String;

.field public authorName:Ljava/lang/String;

.field public autoInstallVersionCode:J

.field private autoInstallVersionName:Ljava/lang/String;

.field public bitcoin:Ljava/lang/String;

.field public categories:[Ljava/lang/String;

.field public changelog:Ljava/lang/String;

.field public compatible:Z

.field public description:Ljava/lang/String;

.field public donate:Ljava/lang/String;

.field public featureGraphic:Lorg/fdroid/index/v2/FileV2;

.field private flattrID:Ljava/lang/String;

.field public iconFile:Lorg/fdroid/index/v2/FileV2;

.field public installedApk:Lorg/fdroid/fdroid/data/Apk;

.field public installedSigner:Ljava/lang/String;

.field public installedVersionCode:J

.field public installedVersionName:Ljava/lang/String;

.field public isApk:Z

.field public issueTracker:Ljava/lang/String;

.field public lastUpdated:Ljava/util/Date;

.field public liberapay:Ljava/lang/String;

.field public license:Ljava/lang/String;

.field public litecoin:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field private openCollective:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public phoneScreenshots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/FileV2;",
            ">;"
        }
    .end annotation
.end field

.field public preferredSigner:Ljava/lang/String;

.field public prefs:Lorg/fdroid/database/AppPrefs;

.field private promoGraphic:Lorg/fdroid/index/v2/FileV2;

.field public repoId:J

.field private sevenInchScreenshots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/FileV2;",
            ">;"
        }
    .end annotation
.end field

.field public sourceCode:Ljava/lang/String;

.field public suggestedVersionCode:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public suggestedVersionName:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public summary:Ljava/lang/String;

.field private tenInchScreenshots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/FileV2;",
            ">;"
        }
    .end annotation
.end field

.field public translation:Ljava/lang/String;

.field private tvBanner:Lorg/fdroid/index/v2/FileV2;

.field private tvScreenshots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/FileV2;",
            ">;"
        }
    .end annotation
.end field

.field public video:Ljava/lang/String;

.field private wearScreenshots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/FileV2;",
            ">;"
        }
    .end annotation
.end field

.field public webSite:Ljava/lang/String;

.field public whatsNew:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 784
    new-instance v0, Lorg/fdroid/fdroid/data/App$1;

    invoke-direct {v0}, Lorg/fdroid/fdroid/data/App$1;-><init>()V

    sput-object v0, Lorg/fdroid/fdroid/data/App;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "unknown"

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    const-string v0, "Unknown"

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    const-string v0, "Unknown application"

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->summary:Ljava/lang/String;

    .line 128
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->phoneScreenshots:Ljava/util/List;

    .line 129
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->sevenInchScreenshots:Ljava/util/List;

    .line 130
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->tenInchScreenshots:Ljava/util/List;

    .line 131
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->tvScreenshots:Ljava/util/List;

    .line 132
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->wearScreenshots:Ljava/util/List;

    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/fdroid/fdroid/data/App;->suggestedVersionCode:I

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->antiFeatureReasons:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    .line 734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "unknown"

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    const-string v0, "Unknown"

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    const-string v0, "Unknown application"

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->summary:Ljava/lang/String;

    .line 128
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->phoneScreenshots:Ljava/util/List;

    .line 129
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->sevenInchScreenshots:Ljava/util/List;

    .line 130
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->tenInchScreenshots:Ljava/util/List;

    .line 131
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->tvScreenshots:Ljava/util/List;

    .line 132
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->wearScreenshots:Ljava/util/List;

    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/fdroid/fdroid/data/App;->suggestedVersionCode:I

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->antiFeatureReasons:Ljava/util/Map;

    .line 735
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lorg/fdroid/fdroid/data/App;->compatible:Z

    .line 736
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    .line 737
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    .line 738
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/fdroid/fdroid/data/App;->repoId:J

    .line 739
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->summary:Ljava/lang/String;

    .line 740
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/index/v2/FileV2;->deserialize(Ljava/lang/String;)Lorg/fdroid/index/v2/FileV2;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->iconFile:Lorg/fdroid/index/v2/FileV2;

    .line 741
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->description:Ljava/lang/String;

    .line 742
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->whatsNew:Ljava/lang/String;

    .line 743
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->license:Ljava/lang/String;

    .line 744
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->authorName:Ljava/lang/String;

    .line 745
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->authorEmail:Ljava/lang/String;

    .line 746
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->webSite:Ljava/lang/String;

    .line 747
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->issueTracker:Ljava/lang/String;

    .line 748
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->sourceCode:Ljava/lang/String;

    .line 749
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->translation:Ljava/lang/String;

    .line 750
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->video:Ljava/lang/String;

    .line 751
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->changelog:Ljava/lang/String;

    .line 752
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->donate:Ljava/lang/String;

    .line 753
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->bitcoin:Ljava/lang/String;

    .line 754
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->litecoin:Ljava/lang/String;

    .line 755
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->flattrID:Ljava/lang/String;

    .line 756
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->liberapay:Ljava/lang/String;

    .line 757
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->openCollective:Ljava/lang/String;

    .line 758
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->preferredSigner:Ljava/lang/String;

    .line 759
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->suggestedVersionName:Ljava/lang/String;

    .line 760
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/fdroid/fdroid/data/App;->suggestedVersionCode:I

    .line 761
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->autoInstallVersionName:Ljava/lang/String;

    .line 762
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/fdroid/fdroid/data/App;->autoInstallVersionCode:J

    .line 763
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    const/4 v7, 0x0

    if-nez v0, :cond_1

    move-object v0, v7

    goto :goto_1

    .line 764
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    :goto_1
    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->added:Ljava/util/Date;

    .line 765
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    goto :goto_2

    .line 766
    :cond_2
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v3, v4}, Ljava/util/Date;-><init>(J)V

    :goto_2
    iput-object v7, p0, Lorg/fdroid/fdroid/data/App;->lastUpdated:Ljava/util/Date;

    .line 767
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->categories:[Ljava/lang/String;

    .line 768
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->antiFeatures:[Ljava/lang/String;

    .line 769
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/index/v2/FileV2;->deserialize(Ljava/lang/String;)Lorg/fdroid/index/v2/FileV2;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->featureGraphic:Lorg/fdroid/index/v2/FileV2;

    .line 770
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/index/v2/FileV2;->deserialize(Ljava/lang/String;)Lorg/fdroid/index/v2/FileV2;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->promoGraphic:Lorg/fdroid/index/v2/FileV2;

    .line 771
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/index/v2/FileV2;->deserialize(Ljava/lang/String;)Lorg/fdroid/index/v2/FileV2;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->tvBanner:Lorg/fdroid/index/v2/FileV2;

    .line 772
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/fdroid/Utils;->fileV2FromStrings(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->phoneScreenshots:Ljava/util/List;

    .line 773
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/fdroid/Utils;->fileV2FromStrings(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->sevenInchScreenshots:Ljava/util/List;

    .line 774
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/fdroid/Utils;->fileV2FromStrings(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->tenInchScreenshots:Ljava/util/List;

    .line 775
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/fdroid/Utils;->fileV2FromStrings(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->tvScreenshots:Ljava/util/List;

    .line 776
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/fdroid/Utils;->fileV2FromStrings(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->wearScreenshots:Ljava/util/List;

    .line 777
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lorg/fdroid/fdroid/data/App;->isApk:Z

    .line 778
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->installedVersionName:Ljava/lang/String;

    .line 779
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/fdroid/fdroid/data/App;->installedVersionCode:J

    const-class v0, Lorg/fdroid/fdroid/data/Apk;

    .line 780
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/data/Apk;

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->installedApk:Lorg/fdroid/fdroid/data/Apk;

    .line 781
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/data/App;->installedSigner:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/fdroid/database/App;Landroid/content/pm/PackageInfo;)V
    .locals 3

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "unknown"

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    const-string v0, "Unknown"

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    const-string v0, "Unknown application"

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->summary:Ljava/lang/String;

    .line 128
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->phoneScreenshots:Ljava/util/List;

    .line 129
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->sevenInchScreenshots:Ljava/util/List;

    .line 130
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->tenInchScreenshots:Ljava/util/List;

    .line 131
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->tvScreenshots:Ljava/util/List;

    .line 132
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->wearScreenshots:Ljava/util/List;

    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/fdroid/fdroid/data/App;->suggestedVersionCode:I

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->antiFeatureReasons:Ljava/util/Map;

    .line 232
    invoke-virtual {p1}, Lorg/fdroid/database/App;->getRepoId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/fdroid/fdroid/data/App;->repoId:J

    .line 233
    invoke-virtual {p1}, Lorg/fdroid/database/App;->getMetadata()Lorg/fdroid/database/AppMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/database/AppMetadata;->isCompatible()Z

    move-result v0

    iput-boolean v0, p0, Lorg/fdroid/fdroid/data/App;->compatible:Z

    .line 234
    invoke-virtual {p1}, Lorg/fdroid/database/App;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/data/App;->setPackageName(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p1}, Lorg/fdroid/database/App;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/fdroid/database/App;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    .line 236
    invoke-virtual {p1}, Lorg/fdroid/database/App;->getSummary()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/fdroid/database/App;->getSummary()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->summary:Ljava/lang/String;

    .line 237
    invoke-static {}, Lorg/fdroid/fdroid/data/App;->getLocales()Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/fdroid/database/App;->getDescription(Landroidx/core/os/LocaleListCompat;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, v0

    .line 238
    :goto_2
    invoke-direct {p0, v1}, Lorg/fdroid/fdroid/data/App;->setDescription(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p1}, Lorg/fdroid/database/App;->getMetadata()Lorg/fdroid/database/AppMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/database/AppMetadata;->getLicense()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->license:Ljava/lang/String;

    .line 240
    invoke-virtual {p1}, Lorg/fdroid/database/App;->getMetadata()Lorg/fdroid/database/AppMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/database/AppMetadata;->getAuthorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->authorName:Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Lorg/fdroid/database/App;->getMetadata()Lorg/fdroid/database/AppMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/database/AppMetadata;->getAuthorEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->authorEmail:Ljava/lang/String;

    .line 242
    invoke-virtual {p1}, Lorg/fdroid/database/App;->getMetadata()Lorg/fdroid/database/AppMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/database/AppMetadata;->getWebSite()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->webSite:Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Lorg/fdroid/database/App;->getMetadata()Lorg/fdroid/database/AppMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/database/AppMetadata;->getIssueTracker()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->issueTracker:Ljava/lang/String;

    .line 244
    invoke-virtual {p1}, Lorg/fdroid/database/App;->getMetadata()Lorg/fdroid/database/AppMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/database/AppMetadata;->getSourceCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->sourceCode:Ljava/lang/String;

    .line 245
    invoke-virtual {p1}, Lorg/fdroid/database/App;->getMetadata()Lorg/fdroid/database/AppMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/database/AppMetadata;->getTranslation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->translation:Ljava/lang/String;

    .line 246
    invoke-static {}, Lorg/fdroid/fdroid/data/App;->getLocales()Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/fdroid/database/App;->getVideo(Landroidx/core/os/LocaleListCompat;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->video:Ljava/lang/String;

    .line 247
    invoke-virtual {p1}, Lorg/fdroid/database/App;->getMetadata()Lorg/fdroid/database/AppMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/database/AppMetadata;->getChangelog()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->changelog:Ljava/lang/String;

    .line 248
    invoke-virtual {p1}, Lorg/fdroid/database/App;->getMetadata()Lorg/fdroid/database/AppMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/database/AppMetadata;->getDonate()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 249
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 250
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->donate:Ljava/lang/String;

    .line 252
    :cond_3
    invoke-virtual {p1}, Lorg/fdroid/database/App;->getMetadata()Lorg/fdroid/database/AppMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/database/AppMetadata;->getBitcoin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->bitcoin:Ljava/lang/String;

    .line 253
    invoke-virtual {p1}, Lorg/fdroid/database/App;->getMetadata()Lorg/fdroid/database/AppMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/database/AppMetadata;->getLitecoin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->litecoin:Ljava/lang/String;

    .line 254
    invoke-virtual {p1}, Lorg/fdroid/database/App;->getMetadata()Lorg/fdroid/database/AppMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/database/AppMetadata;->getFlattrID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->flattrID:Ljava/lang/String;

    .line 255
    invoke-virtual {p1}, Lorg/fdroid/database/App;->getMetadata()Lorg/fdroid/database/AppMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/database/AppMetadata;->getLiberapay()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->liberapay:Ljava/lang/String;

    .line 256
    invoke-virtual {p1}, Lorg/fdroid/database/App;->getMetadata()Lorg/fdroid/database/AppMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/database/AppMetadata;->getOpenCollective()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->openCollective:Ljava/lang/String;

    .line 257
    invoke-virtual {p1}, Lorg/fdroid/database/App;->getMetadata()Lorg/fdroid/database/AppMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/database/AppMetadata;->getPreferredSigner()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->preferredSigner:Ljava/lang/String;

    .line 258
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lorg/fdroid/database/App;->getMetadata()Lorg/fdroid/database/AppMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fdroid/database/AppMetadata;->getAdded()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->added:Ljava/util/Date;

    .line 259
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lorg/fdroid/database/App;->getMetadata()Lorg/fdroid/database/AppMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fdroid/database/AppMetadata;->getLastUpdated()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->lastUpdated:Ljava/util/Date;

    .line 260
    invoke-static {}, Lorg/fdroid/fdroid/data/App;->getLocales()Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/fdroid/database/App;->getIcon(Landroidx/core/os/LocaleListCompat;)Lorg/fdroid/index/v2/FileV2;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->iconFile:Lorg/fdroid/index/v2/FileV2;

    .line 261
    invoke-static {}, Lorg/fdroid/fdroid/data/App;->getLocales()Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/fdroid/database/App;->getFeatureGraphic(Landroidx/core/os/LocaleListCompat;)Lorg/fdroid/index/v2/FileV2;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->featureGraphic:Lorg/fdroid/index/v2/FileV2;

    .line 262
    invoke-static {}, Lorg/fdroid/fdroid/data/App;->getLocales()Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/fdroid/database/App;->getPromoGraphic(Landroidx/core/os/LocaleListCompat;)Lorg/fdroid/index/v2/FileV2;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->promoGraphic:Lorg/fdroid/index/v2/FileV2;

    .line 263
    invoke-static {}, Lorg/fdroid/fdroid/data/App;->getLocales()Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/fdroid/database/App;->getTvBanner(Landroidx/core/os/LocaleListCompat;)Lorg/fdroid/index/v2/FileV2;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->tvBanner:Lorg/fdroid/index/v2/FileV2;

    .line 264
    invoke-static {}, Lorg/fdroid/fdroid/data/App;->getLocales()Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/fdroid/database/App;->getPhoneScreenshots(Landroidx/core/os/LocaleListCompat;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->phoneScreenshots:Ljava/util/List;

    .line 265
    invoke-static {}, Lorg/fdroid/fdroid/data/App;->getLocales()Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/fdroid/database/App;->getSevenInchScreenshots(Landroidx/core/os/LocaleListCompat;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->sevenInchScreenshots:Ljava/util/List;

    .line 266
    invoke-static {}, Lorg/fdroid/fdroid/data/App;->getLocales()Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/fdroid/database/App;->getTenInchScreenshots(Landroidx/core/os/LocaleListCompat;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->tenInchScreenshots:Ljava/util/List;

    .line 267
    invoke-static {}, Lorg/fdroid/fdroid/data/App;->getLocales()Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/fdroid/database/App;->getTvScreenshots(Landroidx/core/os/LocaleListCompat;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->tvScreenshots:Ljava/util/List;

    .line 268
    invoke-static {}, Lorg/fdroid/fdroid/data/App;->getLocales()Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/fdroid/database/App;->getWearScreenshots(Landroidx/core/os/LocaleListCompat;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/data/App;->wearScreenshots:Ljava/util/List;

    .line 269
    invoke-virtual {p0, p2}, Lorg/fdroid/fdroid/data/App;->setInstalled(Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/fdroid/database/AppListItem;)V
    .locals 2

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "unknown"

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    const-string v0, "Unknown"

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    const-string v0, "Unknown application"

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->summary:Ljava/lang/String;

    .line 128
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->phoneScreenshots:Ljava/util/List;

    .line 129
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->sevenInchScreenshots:Ljava/util/List;

    .line 130
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->tenInchScreenshots:Ljava/util/List;

    .line 131
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->tvScreenshots:Ljava/util/List;

    .line 132
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->wearScreenshots:Ljava/util/List;

    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/fdroid/fdroid/data/App;->suggestedVersionCode:I

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->antiFeatureReasons:Ljava/util/Map;

    .line 273
    invoke-virtual {p1}, Lorg/fdroid/database/AppListItem;->getRepoId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/fdroid/fdroid/data/App;->repoId:J

    .line 274
    invoke-virtual {p1}, Lorg/fdroid/database/AppListItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/data/App;->setPackageName(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1}, Lorg/fdroid/database/AppListItem;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/fdroid/database/AppListItem;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Lorg/fdroid/database/AppListItem;->getSummary()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/fdroid/database/AppListItem;->getSummary()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lorg/fdroid/fdroid/data/App;->summary:Ljava/lang/String;

    .line 277
    invoke-static {}, Lorg/fdroid/fdroid/data/App;->getLocales()Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/fdroid/database/AppListItem;->getIcon(Landroidx/core/os/LocaleListCompat;)Lorg/fdroid/index/v2/FileV2;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->iconFile:Lorg/fdroid/index/v2/FileV2;

    .line 278
    invoke-virtual {p1}, Lorg/fdroid/database/AppListItem;->getInstalledVersionCode()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lorg/fdroid/database/AppListItem;->getInstalledVersionCode()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_2
    iput-wide v0, p0, Lorg/fdroid/fdroid/data/App;->installedVersionCode:J

    .line 279
    invoke-virtual {p1}, Lorg/fdroid/database/AppListItem;->getInstalledVersionName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->installedVersionName:Ljava/lang/String;

    .line 280
    invoke-virtual {p1}, Lorg/fdroid/database/AppListItem;->getAntiFeatureKeys()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->antiFeatures:[Ljava/lang/String;

    .line 281
    invoke-virtual {p1}, Lorg/fdroid/database/AppListItem;->isCompatible()Z

    move-result v0

    iput-boolean v0, p0, Lorg/fdroid/fdroid/data/App;->compatible:Z

    .line 282
    invoke-virtual {p1}, Lorg/fdroid/database/AppListItem;->getPreferredSigner()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/data/App;->preferredSigner:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/fdroid/database/UpdatableApp;)V
    .locals 2

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "unknown"

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    const-string v0, "Unknown"

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    const-string v0, "Unknown application"

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->summary:Ljava/lang/String;

    .line 128
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->phoneScreenshots:Ljava/util/List;

    .line 129
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->sevenInchScreenshots:Ljava/util/List;

    .line 130
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->tenInchScreenshots:Ljava/util/List;

    .line 131
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->tvScreenshots:Ljava/util/List;

    .line 132
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->wearScreenshots:Ljava/util/List;

    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/fdroid/fdroid/data/App;->suggestedVersionCode:I

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->antiFeatureReasons:Ljava/util/Map;

    .line 222
    invoke-virtual {p1}, Lorg/fdroid/database/UpdatableApp;->getUpdate()Lorg/fdroid/database/AppVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/database/AppVersion;->getRepoId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/fdroid/fdroid/data/App;->repoId:J

    .line 223
    invoke-virtual {p1}, Lorg/fdroid/database/UpdatableApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/data/App;->setPackageName(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p1}, Lorg/fdroid/database/UpdatableApp;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/fdroid/database/UpdatableApp;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Lorg/fdroid/database/UpdatableApp;->getSummary()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/fdroid/database/UpdatableApp;->getSummary()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lorg/fdroid/fdroid/data/App;->summary:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Lorg/fdroid/database/UpdatableApp;->getInstalledVersionCode()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/fdroid/fdroid/data/App;->installedVersionCode:J

    .line 227
    invoke-virtual {p1}, Lorg/fdroid/database/UpdatableApp;->getUpdate()Lorg/fdroid/database/AppVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/database/AppVersion;->getManifest()Lorg/fdroid/database/AppManifest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/database/AppManifest;->getVersionCode()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/fdroid/fdroid/data/App;->autoInstallVersionCode:J

    .line 228
    invoke-static {}, Lorg/fdroid/fdroid/data/App;->getLocales()Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/fdroid/database/UpdatableApp;->getIcon(Landroidx/core/os/LocaleListCompat;)Lorg/fdroid/index/v2/FileV2;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/data/App;->iconFile:Lorg/fdroid/index/v2/FileV2;

    return-void
.end method

.method private static formatDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\n"

    const-string v1, "<br>"

    .line 346
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLocales()Landroidx/core/os/LocaleListCompat;
    .locals 1

    sget-object v0, Lorg/fdroid/fdroid/data/App;->systemLocaleList:Landroidx/core/os/LocaleListCompat;

    if-nez v0, :cond_0

    .line 82
    invoke-static {}, Landroidx/core/os/LocaleListCompat;->getDefault()Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    sput-object v0, Lorg/fdroid/fdroid/data/App;->systemLocaleList:Landroidx/core/os/LocaleListCompat;

    :cond_0
    return-object v0
.end method

.method private static getMinTargetMaxSdkVersions(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x7f

    .line 629
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string p1, "AndroidManifest.xml"

    .line 630
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    .line 631
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    :goto_0
    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    const-string p1, "uses-sdk"

    .line 633
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz p1, :cond_4

    move p1, v0

    move v2, v1

    move v1, p1

    .line 634
    :goto_1
    :try_start_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 635
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "minSdkVersion"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 636
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_3

    :catch_0
    move-exception p0

    :goto_2
    move v0, p1

    goto :goto_5

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_2

    .line 637
    :cond_0
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "targetSdkVersion"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 638
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    .line 639
    :cond_1
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "maxSdkVersion"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 640
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, p1

    goto :goto_6

    :catch_4
    move-exception p0

    :goto_4
    move v2, v1

    move v1, v0

    goto :goto_5

    :catch_5
    move-exception p0

    goto :goto_4

    :catch_6
    move-exception p0

    goto :goto_4

    :catch_7
    move-exception p0

    goto :goto_4

    .line 645
    :cond_4
    :try_start_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result p1
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    :cond_5
    move v2, v1

    move v1, v0

    goto :goto_6

    :goto_5
    const-string p1, "App"

    const-string v3, "Could not get min/max sdk version"

    .line 651
    invoke-static {p1, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    if-ge v1, v0, :cond_6

    move v1, v0

    :cond_6
    filled-new-array {v0, v1, v2}, [I

    move-result-object p0

    return-object p0
.end method

.method private getMostAppropriateSigner()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->installedSigner:Ljava/lang/String;

    .line 809
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->installedSigner:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->preferredSigner:Ljava/lang/String;

    .line 811
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->preferredSigner:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static getObbDir(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 419
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Android/obb/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs getPath([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 391
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    const-string v3, "/"

    if-ge v2, v1, :cond_0

    aget-object v4, p0, v2

    .line 392
    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 395
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 396
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 397
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 399
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isApk()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/fdroid/fdroid/data/App;->isApk:Z

    return v0
.end method

.method private isMediaInstalled(Landroid/content/Context;)Z
    .locals 0

    .line 464
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/data/App;->getMediaApkifInstalled(Landroid/content/Context;)Lorg/fdroid/fdroid/data/Apk;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static loadBitmapWithGlide(Landroid/content/Context;JLorg/fdroid/IndexFile;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Lorg/fdroid/IndexFile;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder;"
        }
    .end annotation

    .line 375
    invoke-static {p0}, Lorg/fdroid/fdroid/FDroidApp;->getRepoManager(Landroid/content/Context;)Lorg/fdroid/index/RepoManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/fdroid/index/RepoManager;->getRepository(J)Lorg/fdroid/database/Repository;

    move-result-object v0

    if-nez v0, :cond_0

    .line 377
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Repo not found: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "App"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    sget p1, Lorg/fdroid/fdroid/R$drawable;->ic_repo_app_default:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    return-object p0

    .line 380
    :cond_0
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-static {v0, p3}, Lorg/fdroid/fdroid/Utils;->getGlideModel(Lorg/fdroid/database/Repository;Lorg/fdroid/IndexFile;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static loadWithGlide(Landroid/content/Context;JLorg/fdroid/IndexFile;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Lorg/fdroid/IndexFile;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder;"
        }
    .end annotation

    .line 366
    invoke-static {p0}, Lorg/fdroid/fdroid/FDroidApp;->getRepoManager(Landroid/content/Context;)Lorg/fdroid/index/RepoManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/fdroid/index/RepoManager;->getRepository(J)Lorg/fdroid/database/Repository;

    move-result-object p1

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 370
    :cond_0
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-static {p1, p3}, Lorg/fdroid/fdroid/Utils;->getGlideModel(Lorg/fdroid/database/Repository;Lorg/fdroid/IndexFile;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    return-object p0

    .line 368
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    sget p1, Lorg/fdroid/fdroid/R$drawable;->ic_repo_app_default:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    return-object p0
.end method

.method private setDescription(Ljava/lang/String;)V
    .locals 0

    .line 327
    invoke-static {p1}, Lorg/fdroid/fdroid/data/App;->formatDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/data/App;->description:Ljava/lang/String;

    return-void
.end method

.method private setPackageName(Ljava/lang/String;)V
    .locals 3

    .line 334
    invoke-static {p1}, Lorg/fdroid/fdroid/Utils;->isSafePackageName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    return-void

    .line 337
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Repo index app entry includes unsafe packageName: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public canAndWantToUpdate(Lorg/fdroid/fdroid/data/Apk;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-wide v1, p0, Lorg/fdroid/fdroid/data/App;->installedVersionCode:J

    .line 554
    iget-wide v3, p1, Lorg/fdroid/fdroid/data/Apk;->versionCode:J

    cmp-long p1, v1, v3

    if-ltz p1, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Lorg/fdroid/fdroid/data/App;->prefs:Lorg/fdroid/database/AppPrefs;

    if-eqz p1, :cond_2

    iget-wide v1, p0, Lorg/fdroid/fdroid/data/App;->autoInstallVersionCode:J

    .line 556
    invoke-virtual {p1, v1, v2}, Lorg/fdroid/database/AppPrefs;->shouldIgnoreUpdate(J)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 62
    check-cast p1, Lorg/fdroid/fdroid/data/App;

    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/data/App;->compareTo(Lorg/fdroid/fdroid/data/App;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/fdroid/fdroid/data/App;)I
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    .line 215
    iget-object p1, p1, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public findSuggestedApk(Ljava/util/List;Ljava/lang/String;)Lorg/fdroid/fdroid/data/Apk;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/data/Apk;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/fdroid/fdroid/data/Apk;"
        }
    .end annotation

    .line 523
    invoke-direct {p0}, Lorg/fdroid/fdroid/data/App;->getMostAppropriateSigner()Ljava/lang/String;

    move-result-object v0

    .line 525
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fdroid/fdroid/data/Apk;

    .line 527
    iget-boolean v3, v2, Lorg/fdroid/fdroid/data/Apk;->compatible:Z

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 529
    iget-object v3, v2, Lorg/fdroid/fdroid/data/Apk;->signer:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v3, "Stable"

    .line 532
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 533
    iget-object v4, v2, Lorg/fdroid/fdroid/data/Apk;->releaseChannels:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 534
    :cond_3
    iget-object v4, v2, Lorg/fdroid/fdroid/data/Apk;->releaseChannels:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v2, Lorg/fdroid/fdroid/data/Apk;->releaseChannels:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_1
    if-nez v2, :cond_6

    .line 543
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_6

    const/4 p2, 0x0

    .line 544
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lorg/fdroid/fdroid/data/Apk;

    :cond_6
    return-object v2
.end method

.method public findSuggestedApk(Ljava/util/List;Lorg/fdroid/database/AppPrefs;)Lorg/fdroid/fdroid/data/Apk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/data/Apk;",
            ">;",
            "Lorg/fdroid/database/AppPrefs;",
            ")",
            "Lorg/fdroid/fdroid/data/Apk;"
        }
    .end annotation

    .line 506
    invoke-virtual {p2}, Lorg/fdroid/database/AppPrefs;->getReleaseChannels()Ljava/util/List;

    move-result-object p2

    const-string v0, "Beta"

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 509
    :cond_0
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fdroid/fdroid/Preferences;->getReleaseChannel()Ljava/lang/String;

    move-result-object v0

    .line 511
    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/fdroid/fdroid/data/App;->findSuggestedApk(Ljava/util/List;Ljava/lang/String;)Lorg/fdroid/fdroid/data/Apk;

    move-result-object p1

    return-object p1
.end method

.method public getAllScreenshots()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/FileV2;",
            ">;"
        }
    .end annotation

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/fdroid/fdroid/data/App;->phoneScreenshots:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lorg/fdroid/fdroid/data/App;->sevenInchScreenshots:Ljava/util/List;

    .line 405
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/fdroid/fdroid/data/App;->tenInchScreenshots:Ljava/util/List;

    .line 406
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/fdroid/fdroid/data/App;->tvScreenshots:Ljava/util/List;

    .line 407
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/fdroid/fdroid/data/App;->wearScreenshots:Ljava/util/List;

    .line 408
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getBitcoinUri()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->bitcoin:Ljava/lang/String;

    .line 591
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bitcoin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fdroid/fdroid/data/App;->bitcoin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getFlattrUri()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->flattrID:Ljava/lang/String;

    .line 607
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://flattr.com/thing/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fdroid/fdroid/data/App;->flattrID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getInstalledApk(Landroid/content/Context;Ljava/util/List;)Lorg/fdroid/fdroid/data/Apk;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/data/Apk;",
            ">;)",
            "Lorg/fdroid/fdroid/data/Apk;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 437
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v1, p0, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 440
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/fdroid/data/Apk;

    .line 441
    iget-wide v2, v1, Lorg/fdroid/fdroid/data/Apk;->versionCode:J

    invoke-static {p1}, Landroidx/core/content/pm/PackageInfoCompat;->getLongVersionCode(Landroid/content/pm/PackageInfo;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_2

    .line 446
    new-instance v1, Lorg/fdroid/fdroid/data/Apk;

    invoke-direct {v1, p1}, Lorg/fdroid/fdroid/data/Apk;-><init>(Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v1

    :catch_0
    return-object v0
.end method

.method public getLiberapayUri()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->liberapay:Ljava/lang/String;

    .line 612
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://liberapay.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fdroid/fdroid/data/App;->liberapay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getLitecoinUri()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->litecoin:Ljava/lang/String;

    .line 596
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "litecoin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fdroid/fdroid/data/App;->litecoin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getMediaApkifInstalled(Landroid/content/Context;)Lorg/fdroid/fdroid/data/Apk;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->installedApk:Lorg/fdroid/fdroid/data/Apk;

    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {v0}, Lorg/fdroid/fdroid/data/Apk;->isApk()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->installedApk:Lorg/fdroid/fdroid/data/Apk;

    invoke-virtual {v0, p1}, Lorg/fdroid/fdroid/data/Apk;->isMediaInstalled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/fdroid/fdroid/data/App;->installedApk:Lorg/fdroid/fdroid/data/Apk;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getOpenCollectiveUri()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->openCollective:Ljava/lang/String;

    .line 601
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 602
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://opencollective.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fdroid/fdroid/data/App;->openCollective:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/donate/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getShareUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    .line 354
    invoke-static {p1}, Lorg/fdroid/fdroid/FDroidApp;->getRepoManager(Landroid/content/Context;)Lorg/fdroid/index/RepoManager;

    move-result-object p1

    iget-wide v0, p0, Lorg/fdroid/fdroid/data/App;->repoId:J

    invoke-virtual {p1, v0, v1}, Lorg/fdroid/index/RepoManager;->getRepository(J)Lorg/fdroid/database/Repository;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 355
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getWebBaseUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 356
    :cond_0
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getWebBaseUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    .line 357
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 358
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasUpdates()Z
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    iget-wide v0, p0, Lorg/fdroid/fdroid/data/App;->autoInstallVersionCode:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-lez v4, :cond_0

    iget-wide v6, p0, Lorg/fdroid/fdroid/data/App;->installedVersionCode:J

    cmp-long v2, v6, v2

    if-lez v2, :cond_0

    cmp-long v0, v6, v0

    if-gez v0, :cond_0

    const/4 v5, 0x1

    :cond_0
    return v5
.end method

.method public hasUpdates(Ljava/util/List;Lorg/fdroid/database/AppPrefs;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/data/Apk;",
            ">;",
            "Lorg/fdroid/database/AppPrefs;",
            ")Z"
        }
    .end annotation

    .line 495
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/data/App;->findSuggestedApk(Ljava/util/List;Lorg/fdroid/database/AppPrefs;)Lorg/fdroid/fdroid/data/Apk;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lorg/fdroid/fdroid/data/App;->installedVersionCode:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 498
    iget-wide v2, p1, Lorg/fdroid/fdroid/data/Apk;->versionCode:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2
.end method

.method public isDisabledByAntiFeatures(Landroid/content/Context;)Z
    .locals 9

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->antiFeatures:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 569
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lorg/fdroid/fdroid/R$array;->antifeaturesValues:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 568
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 572
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fdroid/fdroid/Preferences;->showAppsWithAntiFeatures()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lorg/fdroid/fdroid/data/App;->antiFeatures:[Ljava/lang/String;

    .line 574
    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 575
    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    .line 576
    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    return v8

    .line 580
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lorg/fdroid/fdroid/R$string;->antiothers_key:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    return v8

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public isInstalled(Landroid/content/Context;)Z
    .locals 4

    iget-wide v0, p0, Lorg/fdroid/fdroid/data/App;->installedVersionCode:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 456
    invoke-direct {p0}, Lorg/fdroid/fdroid/data/App;->isApk()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/data/App;->isMediaInstalled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isUninstallable(Landroid/content/Context;)Z
    .locals 5

    .line 665
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/data/App;->isMediaInstalled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 667
    :cond_0
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/data/App;->isInstalled(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 668
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    iget-object v3, p0, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    const/16 v4, 0x2000

    .line 671
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    goto :goto_0

    .line 679
    :cond_1
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/data/App;->isInstalled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    return v1

    :catch_0
    :cond_3
    return v2
.end method

.method public loadWithGlide(Landroid/content/Context;Lorg/fdroid/IndexFile;)Lcom/bumptech/glide/RequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/fdroid/IndexFile;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder;"
        }
    .end annotation

    iget-wide v0, p0, Lorg/fdroid/fdroid/data/App;->repoId:J

    .line 362
    invoke-static {p1, v0, v1, p2}, Lorg/fdroid/fdroid/data/App;->loadWithGlide(Landroid/content/Context;JLorg/fdroid/IndexFile;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setInstalled(Landroid/content/pm/PackageInfo;)V
    .locals 2

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 286
    :cond_0
    invoke-static {p1}, Landroidx/core/content/pm/PackageInfoCompat;->getLongVersionCode(Landroid/content/pm/PackageInfo;)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lorg/fdroid/fdroid/data/App;->installedVersionCode:J

    const/4 v0, 0x0

    if-nez p1, :cond_1

    move-object v1, v0

    goto :goto_1

    .line 287
    :cond_1
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_1
    iput-object v1, p0, Lorg/fdroid/fdroid/data/App;->installedVersionName:Ljava/lang/String;

    if-nez p1, :cond_2

    goto :goto_2

    .line 288
    :cond_2
    invoke-static {p1}, Lorg/fdroid/fdroid/Utils;->getPackageSigner(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lorg/fdroid/fdroid/data/App;->installedSigner:Ljava/lang/String;

    return-void
.end method

.method public update(Landroid/content/Context;Ljava/util/List;Lorg/fdroid/database/AppPrefs;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/data/Apk;",
            ">;",
            "Lorg/fdroid/database/AppPrefs;",
            ")V"
        }
    .end annotation

    iput-object p3, p0, Lorg/fdroid/fdroid/data/App;->prefs:Lorg/fdroid/database/AppPrefs;

    .line 298
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/fdroid/data/Apk;

    .line 299
    iget-wide v2, v1, Lorg/fdroid/fdroid/data/Apk;->versionCode:J

    iget-wide v4, p0, Lorg/fdroid/fdroid/data/App;->installedVersionCode:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-object v2, v1, Lorg/fdroid/fdroid/data/Apk;->signer:Ljava/lang/String;

    iget-object v3, p0, Lorg/fdroid/fdroid/data/App;->installedSigner:Ljava/lang/String;

    .line 300
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {v1}, Lorg/fdroid/fdroid/data/Apk;->isApk()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1}, Lorg/fdroid/fdroid/data/Apk;->isMediaInstalled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iput-object v1, p0, Lorg/fdroid/fdroid/data/App;->installedApk:Lorg/fdroid/fdroid/data/Apk;

    .line 303
    iget-wide v2, v1, Lorg/fdroid/fdroid/data/Apk;->versionCode:J

    iput-wide v2, p0, Lorg/fdroid/fdroid/data/App;->installedVersionCode:J

    .line 304
    iget-object p1, v1, Lorg/fdroid/fdroid/data/Apk;->versionName:Ljava/lang/String;

    iput-object p1, p0, Lorg/fdroid/fdroid/data/App;->installedVersionName:Ljava/lang/String;

    .line 308
    :cond_3
    invoke-virtual {p0, p2, p3}, Lorg/fdroid/fdroid/data/App;->findSuggestedApk(Ljava/util/List;Lorg/fdroid/database/AppPrefs;)Lorg/fdroid/fdroid/data/Apk;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    iget-wide p2, p0, Lorg/fdroid/fdroid/data/App;->autoInstallVersionCode:J

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-gtz p2, :cond_5

    iget-wide p2, p0, Lorg/fdroid/fdroid/data/App;->installedVersionCode:J

    .line 311
    iget-wide v0, p1, Lorg/fdroid/fdroid/data/Apk;->versionCode:J

    cmp-long p2, p2, v0

    if-gez p2, :cond_5

    iput-wide v0, p0, Lorg/fdroid/fdroid/data/App;->autoInstallVersionCode:J

    .line 313
    iget-object p2, p1, Lorg/fdroid/fdroid/data/Apk;->versionName:Ljava/lang/String;

    iput-object p2, p0, Lorg/fdroid/fdroid/data/App;->autoInstallVersionName:Ljava/lang/String;

    .line 315
    :cond_5
    iget-object p2, p1, Lorg/fdroid/fdroid/data/Apk;->antiFeatures:[Ljava/lang/String;

    iput-object p2, p0, Lorg/fdroid/fdroid/data/App;->antiFeatures:[Ljava/lang/String;

    .line 316
    iget-object p2, p1, Lorg/fdroid/fdroid/data/Apk;->antiFeatureReasons:Ljava/util/Map;

    iput-object p2, p0, Lorg/fdroid/fdroid/data/App;->antiFeatureReasons:Ljava/util/Map;

    .line 317
    iget-object p2, p1, Lorg/fdroid/fdroid/data/Apk;->whatsNew:Ljava/lang/String;

    iput-object p2, p0, Lorg/fdroid/fdroid/data/App;->whatsNew:Ljava/lang/String;

    .line 318
    invoke-virtual {p1}, Lorg/fdroid/fdroid/data/Apk;->isApk()Z

    move-result p1

    iput-boolean p1, p0, Lorg/fdroid/fdroid/data/App;->isApk:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    iget-boolean v0, p0, Lorg/fdroid/fdroid/data/App;->compatible:Z

    .line 687
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    .line 688
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    .line 689
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lorg/fdroid/fdroid/data/App;->repoId:J

    .line 690
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->summary:Ljava/lang/String;

    .line 691
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->iconFile:Lorg/fdroid/index/v2/FileV2;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 692
    :cond_0
    invoke-virtual {v0}, Lorg/fdroid/index/v2/FileV2;->serialize()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->description:Ljava/lang/String;

    .line 693
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->whatsNew:Ljava/lang/String;

    .line 694
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->license:Ljava/lang/String;

    .line 695
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->authorName:Ljava/lang/String;

    .line 696
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->authorEmail:Ljava/lang/String;

    .line 697
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->webSite:Ljava/lang/String;

    .line 698
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->issueTracker:Ljava/lang/String;

    .line 699
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->sourceCode:Ljava/lang/String;

    .line 700
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->translation:Ljava/lang/String;

    .line 701
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->video:Ljava/lang/String;

    .line 702
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->changelog:Ljava/lang/String;

    .line 703
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->donate:Ljava/lang/String;

    .line 704
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->bitcoin:Ljava/lang/String;

    .line 705
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->litecoin:Ljava/lang/String;

    .line 706
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->flattrID:Ljava/lang/String;

    .line 707
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->liberapay:Ljava/lang/String;

    .line 708
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->openCollective:Ljava/lang/String;

    .line 709
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->preferredSigner:Ljava/lang/String;

    .line 710
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->suggestedVersionName:Ljava/lang/String;

    .line 711
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lorg/fdroid/fdroid/data/App;->suggestedVersionCode:I

    .line 712
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->autoInstallVersionName:Ljava/lang/String;

    .line 713
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/fdroid/fdroid/data/App;->autoInstallVersionCode:J

    .line 714
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->added:Ljava/util/Date;

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_1

    .line 715
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_1

    :cond_1
    move-wide v4, v2

    :goto_1
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->lastUpdated:Ljava/util/Date;

    if-eqz v0, :cond_2

    .line 716
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    :cond_2
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->categories:[Ljava/lang/String;

    .line 717
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->antiFeatures:[Ljava/lang/String;

    .line 718
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->featureGraphic:Lorg/fdroid/index/v2/FileV2;

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_2

    .line 719
    :cond_3
    invoke-virtual {v0}, Lorg/fdroid/index/v2/FileV2;->serialize()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->promoGraphic:Lorg/fdroid/index/v2/FileV2;

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_3

    .line 720
    :cond_4
    invoke-virtual {v0}, Lorg/fdroid/index/v2/FileV2;->serialize()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->tvBanner:Lorg/fdroid/index/v2/FileV2;

    if-nez v0, :cond_5

    goto :goto_4

    .line 721
    :cond_5
    invoke-virtual {v0}, Lorg/fdroid/index/v2/FileV2;->serialize()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->phoneScreenshots:Ljava/util/List;

    .line 722
    invoke-static {v0}, Lorg/fdroid/fdroid/Utils;->toString(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->sevenInchScreenshots:Ljava/util/List;

    .line 723
    invoke-static {v0}, Lorg/fdroid/fdroid/Utils;->toString(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->tenInchScreenshots:Ljava/util/List;

    .line 724
    invoke-static {v0}, Lorg/fdroid/fdroid/Utils;->toString(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->tvScreenshots:Ljava/util/List;

    .line 725
    invoke-static {v0}, Lorg/fdroid/fdroid/Utils;->toString(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->wearScreenshots:Ljava/util/List;

    .line 726
    invoke-static {v0}, Lorg/fdroid/fdroid/Utils;->toString(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-boolean v0, p0, Lorg/fdroid/fdroid/data/App;->isApk:Z

    .line 727
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->installedVersionName:Ljava/lang/String;

    .line 728
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lorg/fdroid/fdroid/data/App;->installedVersionCode:J

    .line 729
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/App;->installedApk:Lorg/fdroid/fdroid/data/Apk;

    .line 730
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lorg/fdroid/fdroid/data/App;->installedSigner:Ljava/lang/String;

    .line 731
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
