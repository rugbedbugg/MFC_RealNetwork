.class public interface abstract Lorg/fdroid/database/RepositoryDao;
.super Ljava/lang/Object;
.source "RepositoryDao.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0014\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0008H&J\u0014\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\t0\u0008H&J\u000e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\tH&J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011H&J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0013H&J\u0018\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0016H&J\u001e\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00190\tH&J\u001e\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00190\tH&J$\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0019H&\u00a8\u0006\u001f"
    }
    d2 = {
        "Lorg/fdroid/database/RepositoryDao;",
        "",
        "clearAll",
        "",
        "deleteRepository",
        "repoId",
        "",
        "getLiveCategories",
        "Landroidx/lifecycle/LiveData;",
        "",
        "Lorg/fdroid/database/Category;",
        "getLiveRepositories",
        "Lorg/fdroid/database/Repository;",
        "getRepositories",
        "getRepository",
        "insert",
        "initialRepo",
        "Lorg/fdroid/database/InitialRepository;",
        "newRepository",
        "Lorg/fdroid/database/NewRepository;",
        "setRepositoryEnabled",
        "enabled",
        "",
        "updateDisabledMirrors",
        "disabledMirrors",
        "",
        "updateUserMirrors",
        "mirrors",
        "updateUsernameAndPassword",
        "username",
        "password",
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

.method public abstract deleteRepository(J)V
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

.method public abstract insert(Lorg/fdroid/database/InitialRepository;)J
.end method

.method public abstract insert(Lorg/fdroid/database/NewRepository;)J
.end method

.method public abstract setRepositoryEnabled(JZ)V
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
