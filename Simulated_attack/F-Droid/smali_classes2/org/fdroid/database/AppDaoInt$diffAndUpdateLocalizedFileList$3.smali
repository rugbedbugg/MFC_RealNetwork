.class final Lorg/fdroid/database/AppDaoInt$diffAndUpdateLocalizedFileList$3;
.super Lkotlin/jvm/internal/Lambda;
.source "AppDao.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/AppDaoInt$DefaultImpls;->diffAndUpdateLocalizedFileList(Lorg/fdroid/database/AppDaoInt;JLjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $packageName:Ljava/lang/String;

.field final synthetic $repoId:J

.field final synthetic $type:Ljava/lang/String;

.field final synthetic this$0:Lorg/fdroid/database/AppDaoInt;


# direct methods
.method constructor <init>(Lorg/fdroid/database/AppDaoInt;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/database/AppDaoInt$diffAndUpdateLocalizedFileList$3;->this$0:Lorg/fdroid/database/AppDaoInt;

    iput-wide p2, p0, Lorg/fdroid/database/AppDaoInt$diffAndUpdateLocalizedFileList$3;->$repoId:J

    iput-object p4, p0, Lorg/fdroid/database/AppDaoInt$diffAndUpdateLocalizedFileList$3;->$packageName:Ljava/lang/String;

    iput-object p5, p0, Lorg/fdroid/database/AppDaoInt$diffAndUpdateLocalizedFileList$3;->$type:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 274
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/fdroid/database/AppDaoInt$diffAndUpdateLocalizedFileList$3;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 7

    const-string v0, "locale"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/fdroid/database/AppDaoInt$diffAndUpdateLocalizedFileList$3;->this$0:Lorg/fdroid/database/AppDaoInt;

    iget-wide v2, p0, Lorg/fdroid/database/AppDaoInt$diffAndUpdateLocalizedFileList$3;->$repoId:J

    iget-object v4, p0, Lorg/fdroid/database/AppDaoInt$diffAndUpdateLocalizedFileList$3;->$packageName:Ljava/lang/String;

    iget-object v5, p0, Lorg/fdroid/database/AppDaoInt$diffAndUpdateLocalizedFileList$3;->$type:Ljava/lang/String;

    move-object v6, p1

    .line 283
    invoke-interface/range {v1 .. v6}, Lorg/fdroid/database/AppDaoInt;->deleteLocalizedFileList(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
