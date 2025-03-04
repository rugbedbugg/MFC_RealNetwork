.class public final Lorg/fdroid/database/VersionDaoKt;
.super Ljava/lang/Object;
.source "VersionDao.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\"\u0014\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "DENY_LIST",
        "",
        "",
        "database_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final DENY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "repoId"

    const-string v1, "versionId"

    const-string v2, "packageName"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/fdroid/database/VersionDaoKt;->DENY_LIST:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getDENY_LIST$p()Ljava/util/List;
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/database/VersionDaoKt;->DENY_LIST:Ljava/util/List;

    return-object v0
.end method
