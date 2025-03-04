.class public abstract Lorg/fdroid/index/IndexUpdater;
.super Ljava/lang/Object;
.source "IndexUpdater.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\nH\u0002J\u000e\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rH$R\u0012\u0010\u0003\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000f"
    }
    d2 = {
        "Lorg/fdroid/index/IndexUpdater;",
        "",
        "()V",
        "formatVersion",
        "Lorg/fdroid/index/IndexFormatVersion;",
        "getFormatVersion",
        "()Lorg/fdroid/index/IndexFormatVersion;",
        "catchExceptions",
        "Lorg/fdroid/index/IndexUpdateResult;",
        "block",
        "Lkotlin/Function0;",
        "update",
        "repo",
        "Lorg/fdroid/database/Repository;",
        "updateRepo",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final catchExceptions(Lkotlin/jvm/functions/Function0;)Lorg/fdroid/index/IndexUpdateResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")",
            "Lorg/fdroid/index/IndexUpdateResult;"
        }
    .end annotation

    .line 68
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fdroid/index/IndexUpdateResult;
    :try_end_0
    .catch Lorg/fdroid/download/NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 72
    new-instance v0, Lorg/fdroid/index/IndexUpdateResult$Error;

    invoke-direct {v0, p1}, Lorg/fdroid/index/IndexUpdateResult$Error;-><init>(Ljava/lang/Exception;)V

    move-object p1, v0

    goto :goto_0

    .line 70
    :catch_1
    sget-object p1, Lorg/fdroid/index/IndexUpdateResult$NotFound;->INSTANCE:Lorg/fdroid/index/IndexUpdateResult$NotFound;

    :goto_0
    return-object p1
.end method


# virtual methods
.method public abstract getFormatVersion()Lorg/fdroid/index/IndexFormatVersion;
.end method

.method public final update(Lorg/fdroid/database/Repository;)Lorg/fdroid/index/IndexUpdateResult;
    .locals 1

    const-string v0, "repo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lorg/fdroid/index/IndexUpdater$update$1;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/index/IndexUpdater$update$1;-><init>(Lorg/fdroid/index/IndexUpdater;Lorg/fdroid/database/Repository;)V

    invoke-direct {p0, v0}, Lorg/fdroid/index/IndexUpdater;->catchExceptions(Lkotlin/jvm/functions/Function0;)Lorg/fdroid/index/IndexUpdateResult;

    move-result-object p1

    return-object p1
.end method

.method protected abstract updateRepo(Lorg/fdroid/database/Repository;)Lorg/fdroid/index/IndexUpdateResult;
.end method
