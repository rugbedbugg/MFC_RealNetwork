.class public interface abstract Lorg/fdroid/database/VersionDaoInt;
.super Ljava/lang/Object;
.source "VersionDao.kt"

# interfaces
.implements Lorg/fdroid/database/VersionDao;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/database/VersionDaoInt$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0004\u0008a\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\'J\u0008\u0010\u0004\u001a\u00020\u0003H\'J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\'J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\'J \u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\'J(\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eH\'J,\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00170\u0015H\u0002J(\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eH\u0002J$\u0010\u001a\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0\u001c0\u001b2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\'J\u001c\u0010\u001a\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0\u001c0\u001b2\u0006\u0010\t\u001a\u00020\nH\'J\"\u0010\u001e\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\'J\u001e\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020 0\u001c2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\'J&\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020 0\u001c2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\'J\u001c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u001c2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\n0\u001cH\u0016J\u001c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u001c2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\n0\u001cH\'J0\u0010$\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u0017H\u0017J@\u0010$\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020&0)2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\u00170\u0015H\u0017J\u0016\u0010$\u001a\u00020\u00062\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020 0\u001cH\'J\u0010\u0010$\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011H\'JD\u0010+\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0016\u0010,\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u0013\u0018\u00010)2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00170\u0015H\u0016J\u0010\u0010+\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011H\'\u00a8\u0006-"
    }
    d2 = {
        "Lorg/fdroid/database/VersionDaoInt;",
        "Lorg/fdroid/database/VersionDao;",
        "countAppVersions",
        "",
        "countVersionedStrings",
        "deleteAppVersion",
        "",
        "repoId",
        "",
        "packageName",
        "",
        "versionId",
        "deleteVersionedStrings",
        "type",
        "Lorg/fdroid/database/VersionedStringType;",
        "diffVersion",
        "version",
        "Lorg/fdroid/database/Version;",
        "jsonObject",
        "Lkotlinx/serialization/json/JsonObject;",
        "checkIfCompatible",
        "Lkotlin/Function1;",
        "Lorg/fdroid/index/v2/PackageManifest;",
        "",
        "diffVersionedStrings",
        "key",
        "getAppVersions",
        "Landroidx/lifecycle/LiveData;",
        "",
        "Lorg/fdroid/database/AppVersion;",
        "getVersion",
        "getVersionedStrings",
        "Lorg/fdroid/database/VersionedString;",
        "getVersions",
        "packageNames",
        "getVersionsInternal",
        "insert",
        "packageVersion",
        "Lorg/fdroid/index/v2/PackageVersionV2;",
        "isCompatible",
        "packageVersions",
        "",
        "versionedString",
        "update",
        "versionsDiffMap",
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
.method public abstract countAppVersions()I
.end method

.method public abstract countVersionedStrings()I
.end method

.method public abstract deleteAppVersion(JLjava/lang/String;)V
.end method

.method public abstract deleteAppVersion(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract deleteVersionedStrings(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract deleteVersionedStrings(JLjava/lang/String;Ljava/lang/String;Lorg/fdroid/database/VersionedStringType;)V
.end method

.method public abstract getAppVersions(JLjava/lang/String;)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end method

.method public abstract getAppVersions(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end method

.method public abstract getVersion(JLjava/lang/String;Ljava/lang/String;)Lorg/fdroid/database/Version;
.end method

.method public abstract getVersionedStrings(JLjava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/fdroid/database/VersionedString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVersionedStrings(JLjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/fdroid/database/VersionedString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVersions(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Version;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVersionsInternal(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Version;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insert(JLjava/lang/String;Ljava/lang/String;Lorg/fdroid/index/v2/PackageVersionV2;Z)V
.end method

.method public abstract insert(JLjava/lang/String;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v2/PackageVersionV2;",
            ">;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation
.end method

.method public abstract insert(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/VersionedString;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract insert(Lorg/fdroid/database/Version;)V
.end method

.method public abstract update(JLjava/lang/String;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlinx/serialization/json/JsonObject;",
            ">;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation
.end method

.method public abstract update(Lorg/fdroid/database/Version;)V
.end method
