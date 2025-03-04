.class public Lorg/fdroid/fdroid/CompatibilityChecker;
.super Ljava/lang/Object;
.source "CompatibilityChecker.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Compatibility"


# instance fields
.field private final context:Landroid/content/Context;

.field private final cpuAbis:[Ljava/lang/String;

.field private final features:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final forceTouchApps:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/CompatibilityChecker;->context:Landroid/content/Context;

    .line 34
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->forceTouchApps()Z

    move-result v0

    iput-boolean v0, p0, Lorg/fdroid/fdroid/CompatibilityChecker;->forceTouchApps:Z

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/CompatibilityChecker;->features:Ljava/util/Set;

    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lorg/fdroid/fdroid/CompatibilityChecker;->features:Ljava/util/Set;

    .line 43
    iget-object v2, v2, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_0
    sget-object p1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    iput-object p1, p0, Lorg/fdroid/fdroid/CompatibilityChecker;->cpuAbis:[Ljava/lang/String;

    return-void
.end method

.method private compatibleApi([Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/fdroid/fdroid/CompatibilityChecker;->cpuAbis:[Ljava/lang/String;

    .line 56
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 57
    array-length v6, p1

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, p1, v7

    .line 58
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    return v0

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method


# virtual methods
.method public getIncompatibleReasons(Lorg/fdroid/fdroid/data/Apk;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/fdroid/data/Apk;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 70
    iget v2, p1, Lorg/fdroid/fdroid/data/Apk;->minSdkVersion:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lorg/fdroid/fdroid/CompatibilityChecker;->context:Landroid/content/Context;

    sget v5, Lorg/fdroid/fdroid/R$string;->minsdk_or_later:I

    new-array v6, v4, [Ljava/lang/Object;

    .line 73
    invoke-static {v2}, Lorg/fdroid/fdroid/Utils;->getAndroidVersionName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v3

    .line 71
    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_0
    iget v2, p1, Lorg/fdroid/fdroid/data/Apk;->maxSdkVersion:I

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lorg/fdroid/fdroid/CompatibilityChecker;->context:Landroid/content/Context;

    sget v5, Lorg/fdroid/fdroid/R$string;->up_to_maxsdk:I

    new-array v6, v4, [Ljava/lang/Object;

    .line 77
    invoke-static {v2}, Lorg/fdroid/fdroid/Utils;->getAndroidVersionName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v3

    .line 75
    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_1
    :goto_0
    sget-object v1, Lorg/fdroid/CompatibilityCheckerUtils;->INSTANCE:Lorg/fdroid/CompatibilityCheckerUtils;

    invoke-virtual {v1}, Lorg/fdroid/CompatibilityCheckerUtils;->minInstallableTargetSdk()I

    move-result v1

    .line 81
    iget v2, p1, Lorg/fdroid/fdroid/data/Apk;->targetSdkVersion:I

    if-ge v2, v1, :cond_2

    iget-object v2, p0, Lorg/fdroid/fdroid/CompatibilityChecker;->context:Landroid/content/Context;

    sget v5, Lorg/fdroid/fdroid/R$string;->targetsdk_or_later:I

    new-array v4, v4, [Ljava/lang/Object;

    .line 84
    invoke-static {v1}, Lorg/fdroid/fdroid/Utils;->getAndroidVersionName(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 82
    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_2
    iget-object v1, p1, Lorg/fdroid/fdroid/data/Apk;->features:[Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 88
    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    iget-boolean v5, p0, Lorg/fdroid/fdroid/CompatibilityChecker;->forceTouchApps:Z

    if-eqz v5, :cond_3

    const-string v5, "android.hardware.touchscreen"

    .line 89
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lorg/fdroid/fdroid/CompatibilityChecker;->features:Ljava/util/Set;

    .line 92
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, ","

    .line 93
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 97
    :cond_5
    iget-object v1, p1, Lorg/fdroid/fdroid/data/Apk;->nativecode:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/fdroid/fdroid/CompatibilityChecker;->compatibleApi([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 98
    iget-object p1, p1, Lorg/fdroid/fdroid/data/Apk;->nativecode:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_6
    return-object v0
.end method
