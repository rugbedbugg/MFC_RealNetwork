.class final Lorg/fdroid/database/RepositoryDaoInt$updateRepository$8;
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
.field final synthetic this$0:Lorg/fdroid/database/RepositoryDaoInt;


# direct methods
.method constructor <init>(Lorg/fdroid/database/RepositoryDaoInt;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$8;->this$0:Lorg/fdroid/database/RepositoryDaoInt;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 310
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$8;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 1

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$8;->this$0:Lorg/fdroid/database/RepositoryDaoInt;

    .line 318
    invoke-interface {v0, p1}, Lorg/fdroid/database/RepositoryDaoInt;->insertAntiFeatures(Ljava/util/List;)V

    return-void
.end method
