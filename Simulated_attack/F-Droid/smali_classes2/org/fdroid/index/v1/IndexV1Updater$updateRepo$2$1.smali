.class final Lorg/fdroid/index/v1/IndexV1Updater$updateRepo$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "IndexV1Updater.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/index/v1/IndexV1Updater;->updateRepo(Lorg/fdroid/database/Repository;)Lorg/fdroid/index/IndexUpdateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $repo:Lorg/fdroid/database/Repository;

.field final synthetic this$0:Lorg/fdroid/index/v1/IndexV1Updater;


# direct methods
.method constructor <init>(Lorg/fdroid/index/v1/IndexV1Updater;Lorg/fdroid/database/Repository;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/index/v1/IndexV1Updater$updateRepo$2$1;->this$0:Lorg/fdroid/index/v1/IndexV1Updater;

    iput-object p2, p0, Lorg/fdroid/index/v1/IndexV1Updater$updateRepo$2$1;->$repo:Lorg/fdroid/database/Repository;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 62
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lorg/fdroid/index/v1/IndexV1Updater$updateRepo$2$1;->invoke(Ljava/io/InputStream;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/io/InputStream;)V
    .locals 11

    const-string v0, "inputStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/index/v1/IndexV1Updater$updateRepo$2$1;->this$0:Lorg/fdroid/index/v1/IndexV1Updater;

    .line 63
    invoke-static {v0}, Lorg/fdroid/index/v1/IndexV1Updater;->access$getListener$p(Lorg/fdroid/index/v1/IndexV1Updater;)Lorg/fdroid/index/IndexUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/fdroid/index/v1/IndexV1Updater$updateRepo$2$1;->$repo:Lorg/fdroid/database/Repository;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lorg/fdroid/index/IndexUpdateListener;->onUpdateProgress(Lorg/fdroid/database/Repository;II)V

    .line 64
    :cond_0
    new-instance v4, Lorg/fdroid/database/DbV1StreamReceiver;

    iget-object v0, p0, Lorg/fdroid/index/v1/IndexV1Updater$updateRepo$2$1;->this$0:Lorg/fdroid/index/v1/IndexV1Updater;

    invoke-static {v0}, Lorg/fdroid/index/v1/IndexV1Updater;->access$getDb$p(Lorg/fdroid/index/v1/IndexV1Updater;)Lorg/fdroid/database/FDroidDatabaseInt;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/index/v1/IndexV1Updater$updateRepo$2$1;->$repo:Lorg/fdroid/database/Repository;

    invoke-virtual {v1}, Lorg/fdroid/database/Repository;->getRepoId()J

    move-result-wide v1

    iget-object v3, p0, Lorg/fdroid/index/v1/IndexV1Updater$updateRepo$2$1;->this$0:Lorg/fdroid/index/v1/IndexV1Updater;

    invoke-static {v3}, Lorg/fdroid/index/v1/IndexV1Updater;->access$getCompatibilityChecker$p(Lorg/fdroid/index/v1/IndexV1Updater;)Lorg/fdroid/CompatibilityChecker;

    move-result-object v3

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/fdroid/database/DbV1StreamReceiver;-><init>(Lorg/fdroid/database/FDroidDatabaseInt;JLorg/fdroid/CompatibilityChecker;)V

    .line 65
    new-instance v0, Lorg/fdroid/index/v1/IndexV1StreamProcessor;

    iget-object v1, p0, Lorg/fdroid/index/v1/IndexV1Updater$updateRepo$2$1;->$repo:Lorg/fdroid/database/Repository;

    invoke-virtual {v1}, Lorg/fdroid/database/Repository;->getTimestamp()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v10, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lorg/fdroid/index/v1/IndexV1StreamProcessor;-><init>(Lorg/fdroid/index/v1/IndexV1StreamReceiver;JLjava/lang/String;Lkotlinx/serialization/json/Json;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 66
    invoke-virtual {v0, p1}, Lorg/fdroid/index/v1/IndexV1StreamProcessor;->process(Ljava/io/InputStream;)V

    return-void
.end method
