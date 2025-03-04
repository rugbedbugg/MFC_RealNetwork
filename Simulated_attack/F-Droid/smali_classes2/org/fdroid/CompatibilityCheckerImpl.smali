.class public final Lorg/fdroid/CompatibilityCheckerImpl;
.super Ljava/lang/Object;
.source "CompatibilityChecker.kt"

# interfaces
.implements Lorg/fdroid/CompatibilityChecker;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B3\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0012H\u0002R*\u0010\u000c\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00070\rj\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0007`\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000f\u00a8\u0006\u0014"
    }
    d2 = {
        "Lorg/fdroid/CompatibilityCheckerImpl;",
        "Lorg/fdroid/CompatibilityChecker;",
        "packageManager",
        "Landroid/content/pm/PackageManager;",
        "forceTouchApps",
        "",
        "sdkInt",
        "",
        "supportedAbis",
        "",
        "",
        "(Landroid/content/pm/PackageManager;ZI[Ljava/lang/String;)V",
        "features",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "[Ljava/lang/String;",
        "isCompatible",
        "manifest",
        "Lorg/fdroid/index/v2/PackageManifest;",
        "isNativeCodeCompatible",
        "index_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final features:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final forceTouchApps:Z

.field private final sdkInt:I

.field private final supportedAbis:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 8

    .line 0
    const-string v0, "packageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/fdroid/CompatibilityCheckerImpl;-><init>(Landroid/content/pm/PackageManager;ZI[Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Z)V
    .locals 8

    .line 0
    const-string v0, "packageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v7}, Lorg/fdroid/CompatibilityCheckerImpl;-><init>(Landroid/content/pm/PackageManager;ZI[Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;ZI)V
    .locals 8

    .line 0
    const-string v0, "packageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lorg/fdroid/CompatibilityCheckerImpl;-><init>(Landroid/content/pm/PackageManager;ZI[Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;ZI[Ljava/lang/String;)V
    .locals 5

    const-string v0, "packageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supportedAbis"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lorg/fdroid/CompatibilityCheckerImpl;->forceTouchApps:Z

    iput p3, p0, Lorg/fdroid/CompatibilityCheckerImpl;->sdkInt:I

    iput-object p4, p0, Lorg/fdroid/CompatibilityCheckerImpl;->supportedAbis:[Ljava/lang/String;

    .line 22
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 13309
    array-length p3, p1

    const/4 p4, 0x0

    move v0, p4

    :goto_0
    if-ge v0, p3, :cond_1

    aget-object v1, p1, v0

    .line 26
    iget-object v2, v1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    invoke-static {v1}, Lorg/fdroid/CompatibilityCheckerImpl$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/FeatureInfo;)I

    move-result v1

    goto :goto_1

    :cond_0
    move v1, p4

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lorg/fdroid/CompatibilityCheckerImpl;->features:Ljava/util/HashMap;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/pm/PackageManager;ZI[Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 19
    sget-object p4, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const-string p5, "SUPPORTED_ABIS"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/fdroid/CompatibilityCheckerImpl;-><init>(Landroid/content/pm/PackageManager;ZI[Ljava/lang/String;)V

    return-void
.end method

.method private final isNativeCodeCompatible(Lorg/fdroid/index/v2/PackageManifest;)Z
    .locals 6

    .line 44
    invoke-interface {p1}, Lorg/fdroid/index/v2/PackageManifest;->getNativecode()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 45
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/fdroid/CompatibilityCheckerImpl;->supportedAbis:[Ljava/lang/String;

    .line 13309
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 47
    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method public isCompatible(Lorg/fdroid/index/v2/PackageManifest;)Z
    .locals 5

    const-string v0, "manifest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lorg/fdroid/CompatibilityCheckerImpl;->sdkInt:I

    .line 31
    invoke-interface {p1}, Lorg/fdroid/index/v2/PackageManifest;->getMinSdkVersion()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-ge v0, v1, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lorg/fdroid/CompatibilityCheckerImpl;->sdkInt:I

    .line 32
    invoke-interface {p1}, Lorg/fdroid/index/v2/PackageManifest;->getMaxSdkVersion()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_2
    const v1, 0x7fffffff

    :goto_1
    if-le v0, v1, :cond_3

    return v2

    .line 33
    :cond_3
    invoke-interface {p1}, Lorg/fdroid/index/v2/PackageManifest;->getTargetSdkVersion()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_4
    move v0, v1

    .line 34
    :goto_2
    sget-object v3, Lorg/fdroid/CompatibilityCheckerUtils;->INSTANCE:Lorg/fdroid/CompatibilityCheckerUtils;

    iget v4, p0, Lorg/fdroid/CompatibilityCheckerImpl;->sdkInt:I

    invoke-virtual {v3, v4}, Lorg/fdroid/CompatibilityCheckerUtils;->minInstallableTargetSdk(I)I

    move-result v3

    if-ge v0, v3, :cond_5

    return v2

    .line 35
    :cond_5
    invoke-direct {p0, p1}, Lorg/fdroid/CompatibilityCheckerImpl;->isNativeCodeCompatible(Lorg/fdroid/index/v2/PackageManifest;)Z

    move-result v0

    if-nez v0, :cond_6

    return v2

    .line 36
    :cond_6
    invoke-interface {p1}, Lorg/fdroid/index/v2/PackageManifest;->getFeatureNames()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 32
    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v3, p0, Lorg/fdroid/CompatibilityCheckerImpl;->forceTouchApps:Z

    if-eqz v3, :cond_8

    const-string v3, "android.hardware.touchscreen"

    .line 37
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_8
    iget-object v3, p0, Lorg/fdroid/CompatibilityCheckerImpl;->features:Ljava/util/HashMap;

    .line 38
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v2

    :cond_9
    return v1
.end method
