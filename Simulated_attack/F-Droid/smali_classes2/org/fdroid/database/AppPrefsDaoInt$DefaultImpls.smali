.class public final Lorg/fdroid/database/AppPrefsDaoInt$DefaultImpls;
.super Ljava/lang/Object;
.source "AppPrefsDao.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/database/AppPrefsDaoInt;
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
.method public static getAppPrefs(Lorg/fdroid/database/AppPrefsDaoInt;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/database/AppPrefsDaoInt;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-interface {p0, p1}, Lorg/fdroid/database/AppPrefsDaoInt;->getLiveAppPrefs(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    invoke-static {p0}, Landroidx/lifecycle/Transformations;->distinctUntilChanged(Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    new-instance v0, Lorg/fdroid/database/AppPrefsDaoInt$getAppPrefs$1;

    invoke-direct {v0, p1}, Lorg/fdroid/database/AppPrefsDaoInt$getAppPrefs$1;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public static getPreferredRepos(Lorg/fdroid/database/AppPrefsDaoInt;Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/database/AppPrefsDaoInt;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "packageNames"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x3e7

    if-gt v0, v1, :cond_0

    invoke-interface {p0, p1}, Lorg/fdroid/database/AppPrefsDaoInt;->getPreferredReposInternal(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    goto :goto_1

    .line 34
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 35
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->chunked(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 35
    invoke-interface {p0, v1}, Lorg/fdroid/database/AppPrefsDaoInt;->getPreferredReposInternal(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_1
    return-object p0
.end method
