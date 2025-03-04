.class public interface abstract Lorg/fdroid/database/FDroidDatabase;
.super Ljava/lang/Object;
.source "FDroidDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/database/FDroidDatabase$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0003H&J\u0008\u0010\u0007\u001a\u00020\u0008H&J\u0008\u0010\t\u001a\u00020\nH&J\u0008\u0010\u000b\u001a\u00020\u000cH&J\u0008\u0010\r\u001a\u00020\u000eH&J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0011H&J!\u0010\u000f\u001a\u0002H\u0012\"\u0004\u0008\u0000\u0010\u00122\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\u00120\u0013H&\u00a2\u0006\u0002\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lorg/fdroid/database/FDroidDatabase;",
        "",
        "afterLocalesChanged",
        "",
        "locales",
        "Landroidx/core/os/LocaleListCompat;",
        "clearAllAppData",
        "getAppDao",
        "Lorg/fdroid/database/AppDao;",
        "getAppPrefsDao",
        "Lorg/fdroid/database/AppPrefsDao;",
        "getRepositoryDao",
        "Lorg/fdroid/database/RepositoryDao;",
        "getVersionDao",
        "Lorg/fdroid/database/VersionDao;",
        "runInTransaction",
        "body",
        "Ljava/lang/Runnable;",
        "V",
        "Ljava/util/concurrent/Callable;",
        "(Ljava/util/concurrent/Callable;)Ljava/lang/Object;",
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
.method public abstract afterLocalesChanged(Landroidx/core/os/LocaleListCompat;)V
.end method

.method public abstract clearAllAppData()V
.end method

.method public abstract getAppDao()Lorg/fdroid/database/AppDao;
.end method

.method public abstract getAppPrefsDao()Lorg/fdroid/database/AppPrefsDao;
.end method

.method public abstract getRepositoryDao()Lorg/fdroid/database/RepositoryDao;
.end method

.method public abstract getVersionDao()Lorg/fdroid/database/VersionDao;
.end method

.method public abstract runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)TV;"
        }
    .end annotation
.end method

.method public abstract runInTransaction(Ljava/lang/Runnable;)V
.end method
