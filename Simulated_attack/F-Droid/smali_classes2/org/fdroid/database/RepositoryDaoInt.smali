.class public interface abstract Lorg/fdroid/database/RepositoryDaoInt;
.super Ljava/lang/Object;
.source "RepositoryDao.kt"

# interfaces
.implements Lorg/fdroid/database/RepositoryDao;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/database/RepositoryDaoInt$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008a\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0017J\u0008\u0010\u0006\u001a\u00020\u0003H\u0017J\u0008\u0010\u0007\u001a\u00020\u0008H\'J\u0008\u0010\t\u001a\u00020\u0008H\'J\u0008\u0010\n\u001a\u00020\u0008H\'J\u0008\u0010\u000b\u001a\u00020\u0008H\'J\u0008\u0010\u000c\u001a\u00020\u0003H\'J\u0008\u0010\r\u001a\u00020\u0003H\'J\u0018\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0010H\'J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u0018\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0010H\'J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u0010\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u0018\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0010H\'J\u0010\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0017J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u0017\u0010\u001a\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u001b\u001a\u00020\u0010H\'\u00a2\u0006\u0002\u0010\u001cJ\u0014\u0010\u001d\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020 0\u001f0\u001eH\'J\u0014\u0010!\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\"0\u001f0\u001eH\'J\u0008\u0010#\u001a\u00020\u0008H\'J\u000e\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\"0\u001fH\'J\u0012\u0010%\u001a\u0004\u0018\u00010\"2\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u0012\u0010%\u001a\u0004\u0018\u00010\"2\u0006\u0010&\u001a\u00020\u0010H\'J\u0012\u0010\'\u001a\u0004\u0018\u00010(2\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u0010\u0010)\u001a\u00020\u00052\u0006\u0010*\u001a\u00020+H\u0017J\u0010\u0010)\u001a\u00020\u00052\u0006\u0010,\u001a\u00020-H\u0017J\u0010\u0010)\u001a\u00020\u00032\u0006\u0010.\u001a\u00020(H\'J\u0016\u0010/\u001a\u00020\u00032\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u0002010\u001fH\'J\u0016\u00102\u001a\u00020\u00032\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020 0\u001fH\'J2\u00103\u001a\u00020\u00052\u0006\u00104\u001a\u00020\u00102\n\u0008\u0002\u00105\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u00106\u001a\u0004\u0018\u00010\u00102\u0008\u0008\u0002\u0010&\u001a\u00020\u0010H\u0017J\u0016\u00107\u001a\u00020\u00032\u000c\u00108\u001a\u0008\u0012\u0004\u0012\u0002090\u001fH\'J\u0010\u0010:\u001a\u00020\u00052\u0006\u0010;\u001a\u00020<H\'J\u001a\u0010:\u001a\u00020\u00052\u0006\u0010;\u001a\u00020=2\u0008\u0008\u0002\u0010>\u001a\u00020\u0005H\u0017J\u0016\u0010?\u001a\u00020\u00032\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020@0\u001fH\'J\u0018\u0010A\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010;\u001a\u00020=H\u0002J\u0018\u0010B\u001a\u00020\u00032\u0006\u0010C\u001a\u00020\"2\u0006\u0010D\u001a\u00020\"H\u0017J\u0008\u0010E\u001a\u00020\u0003H\'J\u0010\u0010F\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u0008\u0010G\u001a\u00020\u0003H\'J\u0018\u0010H\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010I\u001a\u00020JH\u0017J\u0018\u0010K\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010I\u001a\u00020JH\'J\u0018\u0010L\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010M\u001a\u00020\u0008H\'J \u0010N\u001a\u00020\u00032\u0006\u0010O\u001a\u00020\u00082\u0006\u0010P\u001a\u00020\u00082\u0006\u0010Q\u001a\u00020\u0008H\'J(\u0010R\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010;\u001a\u00020=2\u0006\u0010>\u001a\u00020\u00052\u0006\u0010S\u001a\u00020TH\u0017J\u0010\u0010R\u001a\u00020\u00032\u0006\u0010;\u001a\u00020<H\'J\u001e\u0010U\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010V\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u001fH\'J \u0010W\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010>\u001a\u00020\u00052\u0006\u0010X\u001a\u00020YH\u0017J\u0010\u0010W\u001a\u00020\u00082\u0006\u0010Z\u001a\u00020<H\'J\u0010\u0010[\u001a\u00020\u00032\u0006\u0010\\\u001a\u00020(H\'J\u001e\u0010]\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u001fH\'J$\u0010^\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u00105\u001a\u0004\u0018\u00010\u00102\u0008\u00106\u001a\u0004\u0018\u00010\u0010H\'\u00a8\u0006_"
    }
    d2 = {
        "Lorg/fdroid/database/RepositoryDaoInt;",
        "Lorg/fdroid/database/RepositoryDao;",
        "clear",
        "",
        "repoId",
        "",
        "clearAll",
        "countAntiFeatures",
        "",
        "countCategories",
        "countMirrors",
        "countReleaseChannels",
        "deleteAllCoreRepositories",
        "deleteAllRepositoryPreferences",
        "deleteAntiFeature",
        "id",
        "",
        "deleteAntiFeatures",
        "deleteCategories",
        "deleteCategory",
        "deleteCoreRepository",
        "deleteMirrors",
        "deleteReleaseChannel",
        "deleteReleaseChannels",
        "deleteRepository",
        "deleteRepositoryPreferences",
        "getArchiveRepoId",
        "cert",
        "(Ljava/lang/String;)Ljava/lang/Long;",
        "getLiveCategories",
        "Landroidx/lifecycle/LiveData;",
        "",
        "Lorg/fdroid/database/Category;",
        "getLiveRepositories",
        "Lorg/fdroid/database/Repository;",
        "getMinRepositoryWeight",
        "getRepositories",
        "getRepository",
        "certificate",
        "getRepositoryPreferences",
        "Lorg/fdroid/database/RepositoryPreferences;",
        "insert",
        "initialRepo",
        "Lorg/fdroid/database/InitialRepository;",
        "newRepository",
        "Lorg/fdroid/database/NewRepository;",
        "repositoryPreferences",
        "insertAntiFeatures",
        "repoFeature",
        "Lorg/fdroid/database/AntiFeature;",
        "insertCategories",
        "insertEmptyRepo",
        "address",
        "username",
        "password",
        "insertMirrors",
        "mirrors",
        "Lorg/fdroid/database/Mirror;",
        "insertOrReplace",
        "repository",
        "Lorg/fdroid/database/CoreRepository;",
        "Lorg/fdroid/index/v2/RepoV2;",
        "version",
        "insertReleaseChannels",
        "Lorg/fdroid/database/ReleaseChannel;",
        "insertRepoTables",
        "reorderRepositories",
        "repoToReorder",
        "repoTarget",
        "resetETags",
        "resetPreferredRepoInAppPrefs",
        "resetTimestamps",
        "setRepositoryEnabled",
        "enabled",
        "",
        "setRepositoryEnabledInternal",
        "setWeight",
        "weight",
        "shiftRepoWeights",
        "weightFrom",
        "weightTo",
        "offset",
        "update",
        "formatVersion",
        "Lorg/fdroid/index/IndexFormatVersion;",
        "updateDisabledMirrors",
        "disabledMirrors",
        "updateRepository",
        "jsonObject",
        "Lkotlinx/serialization/json/JsonObject;",
        "repo",
        "updateRepositoryPreferences",
        "preferences",
        "updateUserMirrors",
        "updateUsernameAndPassword",
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
.method public abstract clear(J)V
.end method

.method public abstract clearAll()V
.end method

.method public abstract countAntiFeatures()I
.end method

.method public abstract countCategories()I
.end method

.method public abstract countMirrors()I
.end method

.method public abstract countReleaseChannels()I
.end method

.method public abstract deleteAllCoreRepositories()V
.end method

.method public abstract deleteAllRepositoryPreferences()V
.end method

.method public abstract deleteAntiFeature(JLjava/lang/String;)V
.end method

.method public abstract deleteAntiFeatures(J)V
.end method

.method public abstract deleteCategories(J)V
.end method

.method public abstract deleteCategory(JLjava/lang/String;)V
.end method

.method public abstract deleteCoreRepository(J)V
.end method

.method public abstract deleteMirrors(J)V
.end method

.method public abstract deleteReleaseChannel(JLjava/lang/String;)V
.end method

.method public abstract deleteReleaseChannels(J)V
.end method

.method public abstract deleteRepository(J)V
.end method

.method public abstract deleteRepositoryPreferences(J)V
.end method

.method public abstract getArchiveRepoId(Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract getLiveCategories()Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end method

.method public abstract getLiveRepositories()Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end method

.method public abstract getMinRepositoryWeight()I
.end method

.method public abstract getRepositories()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Repository;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRepository(J)Lorg/fdroid/database/Repository;
.end method

.method public abstract getRepository(Ljava/lang/String;)Lorg/fdroid/database/Repository;
.end method

.method public abstract getRepositoryPreferences(J)Lorg/fdroid/database/RepositoryPreferences;
.end method

.method public abstract insert(Lorg/fdroid/database/InitialRepository;)J
.end method

.method public abstract insert(Lorg/fdroid/database/NewRepository;)J
.end method

.method public abstract insert(Lorg/fdroid/database/RepositoryPreferences;)V
.end method

.method public abstract insertAntiFeatures(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/AntiFeature;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract insertCategories(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Category;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract insertEmptyRepo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public abstract insertMirrors(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Mirror;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract insertOrReplace(Lorg/fdroid/database/CoreRepository;)J
.end method

.method public abstract insertOrReplace(Lorg/fdroid/index/v2/RepoV2;J)J
.end method

.method public abstract insertReleaseChannels(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/ReleaseChannel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract reorderRepositories(Lorg/fdroid/database/Repository;Lorg/fdroid/database/Repository;)V
.end method

.method public abstract resetETags()V
.end method

.method public abstract resetPreferredRepoInAppPrefs(J)V
.end method

.method public abstract resetTimestamps()V
.end method

.method public abstract setRepositoryEnabled(JZ)V
.end method

.method public abstract setRepositoryEnabledInternal(JZ)V
.end method

.method public abstract setWeight(JI)V
.end method

.method public abstract shiftRepoWeights(III)V
.end method

.method public abstract update(JLorg/fdroid/index/v2/RepoV2;JLorg/fdroid/index/IndexFormatVersion;)V
.end method

.method public abstract update(Lorg/fdroid/database/CoreRepository;)V
.end method

.method public abstract updateDisabledMirrors(JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateRepository(Lorg/fdroid/database/CoreRepository;)I
.end method

.method public abstract updateRepository(JJLkotlinx/serialization/json/JsonObject;)V
.end method

.method public abstract updateRepositoryPreferences(Lorg/fdroid/database/RepositoryPreferences;)V
.end method

.method public abstract updateUserMirrors(JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateUsernameAndPassword(JLjava/lang/String;Ljava/lang/String;)V
.end method
