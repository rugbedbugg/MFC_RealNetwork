.class public interface abstract Lorg/fdroid/database/AppDaoInt;
.super Ljava/lang/Object;
.source "AppDao.kt"

# interfaces
.implements Lorg/fdroid/database/AppDao;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/database/AppDaoInt$AppListLiveData;,
        Lorg/fdroid/database/AppDaoInt$DefaultImpls;,
        Lorg/fdroid/database/AppDaoInt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008a\u0018\u00002\u00020\u0001:\u0001JJ\u0008\u0010\u0002\u001a\u00020\u0003H\'J\u0008\u0010\u0004\u001a\u00020\u0005H\'J\u0008\u0010\u0006\u001a\u00020\u0005H\'J\u0008\u0010\u0007\u001a\u00020\u0005H\'J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\'J(\u0010\r\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000cH\'J(\u0010\u0010\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000cH\'J\u0018\u0010\u0011\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\'J \u0010\u0011\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000cH\'J \u0010\u0012\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000cH\'J(\u0010\u0013\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0010\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u000cH\u0002J\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\'J\u0018\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u001a2\u0006\u0010\u000b\u001a\u00020\u000cH\'J6\u0010\u001b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0\u001c0\u001a2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u000c2\u0006\u0010 \u001a\u00020!H\u0016J6\u0010\u001b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0\u001c0\u001a2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020\u000c2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u000c2\u0006\u0010 \u001a\u00020!H\u0016J.\u0010\u001b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0\u001c0\u001a2\u0006\u0010\u001e\u001a\u00020\u001f2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u000c2\u0006\u0010 \u001a\u00020!H\u0016J$\u0010\u001b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0\u001c0\u001a2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u000cH\'J\u001c\u0010\u001b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0\u001c0\u001a2\u0006\u0010\u0017\u001a\u00020\u000cH\'J$\u0010\u001b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0\u001c0\u001a2\u0006\u0010\"\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u000cH\'J\"\u0010\u001b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0\u001c0\u001a2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u001cH\'J\u0014\u0010$\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0\u001c0\u001aH\'J\u001c\u0010$\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0\u001c0\u001a2\u0006\u0010\t\u001a\u00020\nH\'J\u001c\u0010$\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0\u001c0\u001a2\u0006\u0010\"\u001a\u00020\u000cH\'J\u0014\u0010%\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0\u001c0\u001aH\'J\u001c\u0010%\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0\u001c0\u001a2\u0006\u0010\t\u001a\u00020\nH\'J\u001c\u0010%\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0\u001c0\u001a2\u0006\u0010\"\u001a\u00020\u000cH\'J\u000e\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\'0\u001cH\'J\u001a\u0010&\u001a\u0004\u0018\u00010\'2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\'J\u001a\u0010(\u001a\u0004\u0018\u00010)2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\'J\u001c\u0010*\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020)0\u001c0\u001a2\u0006\u0010+\u001a\u00020\u0005H\'J$\u0010*\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020)0\u001c0\u001a2\u0006\u0010\"\u001a\u00020\u000c2\u0006\u0010+\u001a\u00020\u0005H\'J\u001c\u0010,\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0\u001c0\u001a2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u001e\u0010-\u001a\u0008\u0012\u0004\u0012\u00020.0\u001c2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\'J\u0010\u0010/\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u000cH\'J\u0010\u00100\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\'J\u0016\u00101\u001a\u0008\u0012\u0004\u0012\u00020\n0\u001c2\u0006\u0010\u000b\u001a\u00020\u000cH\'J(\u00102\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u000206H\u0017J\u0016\u00102\u001a\u00020\u00032\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u00020.0\u001cH\'J\u0010\u00102\u001a\u00020\u00032\u0006\u00108\u001a\u00020\'H\'J\u0016\u00109\u001a\u00020\u00032\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u00020:0\u001cH\'J*\u0010;\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u00105\u001a\u000206H\u0017J,\u0010<\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010=\u001a\u0004\u0018\u00010\u000c2\u0008\u0010>\u001a\u0004\u0018\u00010\u000cH\'J\u0010\u0010<\u001a\u00020\u00052\u0006\u00108\u001a\u00020\'H\'J\u0010\u0010?\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\'J\"\u0010@\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010A\u001a\u0004\u0018\u00010\u000cH\'J2\u0010B\u001a\u00020\u0003*\u0008\u0012\u0004\u0012\u00020.0\u001c2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J>\u00102\u001a\u00020\u0003*\u001c\u0012\u0004\u0012\u00020\u000c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020D0\u001c\u0018\u00010Cj\u0004\u0018\u0001`E2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000cH\u0003J8\u00102\u001a\u00020\u0003*\u0016\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020D\u0018\u00010Cj\u0004\u0018\u0001`F2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000cH\u0002JB\u0010G\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0\u001c0\u001a*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0\u001c0\u001a2\u0006\u0010\u001e\u001a\u00020\u001f2\u0014\u0008\u0002\u0010H\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020I0CH\u0002\u00a8\u0006K"
    }
    d2 = {
        "Lorg/fdroid/database/AppDaoInt;",
        "Lorg/fdroid/database/AppDao;",
        "clearAll",
        "",
        "countApps",
        "",
        "countLocalizedFileLists",
        "countLocalizedFiles",
        "deleteAppMetadata",
        "repoId",
        "",
        "packageName",
        "",
        "deleteLocalizedFile",
        "type",
        "locale",
        "deleteLocalizedFileList",
        "deleteLocalizedFileLists",
        "deleteLocalizedFiles",
        "diffAndUpdateLocalizedFileList",
        "jsonObject",
        "Lkotlinx/serialization/json/JsonObject;",
        "escapeQuery",
        "searchQuery",
        "getApp",
        "Lorg/fdroid/database/App;",
        "Landroidx/lifecycle/LiveData;",
        "getAppListItems",
        "",
        "Lorg/fdroid/database/AppListItem;",
        "packageManager",
        "Landroid/content/pm/PackageManager;",
        "sortOrder",
        "Lorg/fdroid/database/AppListSortOrder;",
        "category",
        "packageNames",
        "getAppListItemsByLastUpdated",
        "getAppListItemsByName",
        "getAppMetadata",
        "Lorg/fdroid/database/AppMetadata;",
        "getAppOverviewItem",
        "Lorg/fdroid/database/AppOverviewItem;",
        "getAppOverviewItems",
        "limit",
        "getInstalledAppListItems",
        "getLocalizedFiles",
        "Lorg/fdroid/database/LocalizedFile;",
        "getNumberOfAppsInCategory",
        "getNumberOfAppsInRepository",
        "getRepositoryIdsForApp",
        "insert",
        "app",
        "Lorg/fdroid/index/v2/MetadataV2;",
        "locales",
        "Landroidx/core/os/LocaleListCompat;",
        "localizedFiles",
        "appMetadata",
        "insertLocalizedFileLists",
        "Lorg/fdroid/database/LocalizedFileList;",
        "updateApp",
        "updateAppMetadata",
        "name",
        "summary",
        "updateCompatibility",
        "updatePreferredSigner",
        "preferredSigner",
        "diffAndUpdate",
        "",
        "Lorg/fdroid/index/v2/FileV2;",
        "Lorg/fdroid/index/v2/LocalizedFileListV2;",
        "Lorg/fdroid/index/v2/LocalizedFileV2;",
        "map",
        "installedPackages",
        "Landroid/content/pm/PackageInfo;",
        "AppListLiveData",
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
.method public abstract clearAll()V
.end method

.method public abstract countApps()I
.end method

.method public abstract countLocalizedFileLists()I
.end method

.method public abstract countLocalizedFiles()I
.end method

.method public abstract deleteAppMetadata(JLjava/lang/String;)V
.end method

.method public abstract deleteLocalizedFile(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract deleteLocalizedFileList(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract deleteLocalizedFileLists(JLjava/lang/String;)V
.end method

.method public abstract deleteLocalizedFileLists(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract deleteLocalizedFiles(JLjava/lang/String;Ljava/lang/String;)V
.end method

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

.method public abstract getAppListItems(JLjava/lang/String;)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
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

.method public abstract getAppListItems(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end method

.method public abstract getAppListItems(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end method

.method public abstract getAppListItems(Ljava/util/List;)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end method

.method public abstract getAppListItemsByLastUpdated()Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end method

.method public abstract getAppListItemsByLastUpdated(J)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end method

.method public abstract getAppListItemsByLastUpdated(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end method

.method public abstract getAppListItemsByName()Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end method

.method public abstract getAppListItemsByName(J)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end method

.method public abstract getAppListItemsByName(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end method

.method public abstract getAppMetadata()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/database/AppMetadata;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppMetadata(JLjava/lang/String;)Lorg/fdroid/database/AppMetadata;
.end method

.method public abstract getAppOverviewItem(JLjava/lang/String;)Lorg/fdroid/database/AppOverviewItem;
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

.method public abstract getLocalizedFiles(JLjava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/fdroid/database/LocalizedFile;",
            ">;"
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

.method public abstract insert(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/LocalizedFile;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract insert(Lorg/fdroid/database/AppMetadata;)V
.end method

.method public abstract insertLocalizedFileLists(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/LocalizedFileList;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateApp(JLjava/lang/String;Lkotlinx/serialization/json/JsonObject;Landroidx/core/os/LocaleListCompat;)V
.end method

.method public abstract updateAppMetadata(Lorg/fdroid/database/AppMetadata;)I
.end method

.method public abstract updateAppMetadata(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateCompatibility(J)V
.end method

.method public abstract updatePreferredSigner(JLjava/lang/String;Ljava/lang/String;)V
.end method
