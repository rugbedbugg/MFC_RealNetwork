.class public interface abstract Lorg/fdroid/database/AppDao;
.super Ljava/lang/Object;
.source "AppDao.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/database/AppDao$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0018\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00082\u0006\u0010\u0006\u001a\u00020\u0007H&J6\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\u00082\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000f\u001a\u00020\u0010H&J6\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\u00082\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00072\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000f\u001a\u00020\u0010H&J.\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\u00082\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000f\u001a\u00020\u0010H&J\u001e\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00130\n0\u00082\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015H&J&\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00130\n0\u00082\u0006\u0010\u0011\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015H&J\u001c\u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\u00082\u0006\u0010\u000c\u001a\u00020\rH&J\u0010\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u0007H&J\u0010\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0016\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00050\n2\u0006\u0010\u0006\u001a\u00020\u0007H&J*\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001fH&J\u0010\u0010 \u001a\u00020\u001b2\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006!"
    }
    d2 = {
        "Lorg/fdroid/database/AppDao;",
        "",
        "getApp",
        "Lorg/fdroid/database/App;",
        "repoId",
        "",
        "packageName",
        "",
        "Landroidx/lifecycle/LiveData;",
        "getAppListItems",
        "",
        "Lorg/fdroid/database/AppListItem;",
        "packageManager",
        "Landroid/content/pm/PackageManager;",
        "searchQuery",
        "sortOrder",
        "Lorg/fdroid/database/AppListSortOrder;",
        "category",
        "getAppOverviewItems",
        "Lorg/fdroid/database/AppOverviewItem;",
        "limit",
        "",
        "getInstalledAppListItems",
        "getNumberOfAppsInCategory",
        "getNumberOfAppsInRepository",
        "getRepositoryIdsForApp",
        "insert",
        "",
        "app",
        "Lorg/fdroid/index/v2/MetadataV2;",
        "locales",
        "Landroidx/core/os/LocaleListCompat;",
        "updateCompatibility",
        "database_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getApp(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end method

.method public abstract getApp(JLjava/lang/String;)Lorg/fdroid/database/App;
.end method

.method public abstract getAppListItems(Landroid/content/pm/PackageManager;JLjava/lang/String;Lorg/fdroid/database/AppListSortOrder;)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "J",
            "Ljava/lang/String;",
            "Lorg/fdroid/database/AppListSortOrder;",
            ")",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end method

.method public abstract getAppListItems(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/database/AppListSortOrder;)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/fdroid/database/AppListSortOrder;",
            ")",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end method

.method public abstract getAppListItems(Landroid/content/pm/PackageManager;Ljava/lang/String;Lorg/fdroid/database/AppListSortOrder;)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            "Lorg/fdroid/database/AppListSortOrder;",
            ")",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end method

.method public abstract getAppOverviewItems(I)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end method

.method public abstract getAppOverviewItems(Ljava/lang/String;I)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end method

.method public abstract getInstalledAppListItems(Landroid/content/pm/PackageManager;)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end method

.method public abstract getNumberOfAppsInCategory(Ljava/lang/String;)I
.end method

.method public abstract getNumberOfAppsInRepository(J)I
.end method

.method public abstract getRepositoryIdsForApp(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insert(JLjava/lang/String;Lorg/fdroid/index/v2/MetadataV2;Landroidx/core/os/LocaleListCompat;)V
.end method

.method public abstract updateCompatibility(J)V
.end method
