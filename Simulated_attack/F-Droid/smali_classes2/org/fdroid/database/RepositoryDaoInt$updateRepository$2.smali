.class final Lorg/fdroid/database/RepositoryDaoInt$updateRepository$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RepositoryDao.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


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

.field final synthetic this$0:Lorg/fdroid/database/RepositoryDaoInt;


# direct methods
.method constructor <init>(Lorg/fdroid/database/RepositoryDaoInt;J)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$2;->this$0:Lorg/fdroid/database/RepositoryDaoInt;

    iput-wide p2, p0, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$2;->$repoId:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 298
    invoke-virtual {p0}, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$2;->this$0:Lorg/fdroid/database/RepositoryDaoInt;

    iget-wide v1, p0, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$2;->$repoId:J

    .line 306
    invoke-interface {v0, v1, v2}, Lorg/fdroid/database/RepositoryDaoInt;->deleteMirrors(J)V

    return-void
.end method
