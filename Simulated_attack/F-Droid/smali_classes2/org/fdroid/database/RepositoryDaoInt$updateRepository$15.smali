.class final Lorg/fdroid/database/RepositoryDaoInt$updateRepository$15;
.super Lkotlin/jvm/internal/Lambda;
.source "RepositoryDao.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/RepositoryDaoInt$DefaultImpls;->updateRepository(Lorg/fdroid/database/RepositoryDaoInt;JJLkotlinx/serialization/json/JsonObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $repoId:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$15;->$repoId:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 332
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$15;->invoke(Ljava/lang/String;)Lorg/fdroid/database/ReleaseChannel;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)Lorg/fdroid/database/ReleaseChannel;
    .locals 8

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    new-instance v0, Lorg/fdroid/database/ReleaseChannel;

    iget-wide v2, p0, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$15;->$repoId:J

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v5

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v6

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v7

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lorg/fdroid/database/ReleaseChannel;-><init>(JLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method
