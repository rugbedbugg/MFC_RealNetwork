.class public final Lorg/fdroid/database/AppDao$DefaultImpls;
.super Ljava/lang/Object;
.source "AppDao.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/database/AppDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic getAppOverviewItems$default(Lorg/fdroid/database/AppDao;IILjava/lang/Object;)Landroidx/lifecycle/LiveData;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0xc8

    .line 84
    :cond_0
    invoke-interface {p0, p1}, Lorg/fdroid/database/AppDao;->getAppOverviewItems(I)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getAppOverviewItems"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getAppOverviewItems$default(Lorg/fdroid/database/AppDao;Ljava/lang/String;IILjava/lang/Object;)Landroidx/lifecycle/LiveData;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/16 p2, 0x32

    .line 89
    :cond_0
    invoke-interface {p0, p1, p2}, Lorg/fdroid/database/AppDao;->getAppOverviewItems(Ljava/lang/String;I)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getAppOverviewItems"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic insert$default(Lorg/fdroid/database/AppDao;JLjava/lang/String;Lorg/fdroid/index/v2/MetadataV2;Landroidx/core/os/LocaleListCompat;ILjava/lang/Object;)V
    .locals 6

    if-nez p7, :cond_1

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    .line 50
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p5

    invoke-static {p5}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    move-result-object p5

    const-string p6, "getLocales(...)"

    invoke-static {p5, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 46
    invoke-interface/range {v0 .. v5}, Lorg/fdroid/database/AppDao;->insert(JLjava/lang/String;Lorg/fdroid/index/v2/MetadataV2;Landroidx/core/os/LocaleListCompat;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: insert"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
