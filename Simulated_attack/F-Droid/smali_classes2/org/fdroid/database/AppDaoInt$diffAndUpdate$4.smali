.class final Lorg/fdroid/database/AppDaoInt$diffAndUpdate$4;
.super Lkotlin/jvm/internal/Lambda;
.source "AppDao.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/AppDaoInt$DefaultImpls;->diffAndUpdate(Lorg/fdroid/database/AppDaoInt;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V
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
    iput-object p1, p0, Lorg/fdroid/database/AppDaoInt$diffAndUpdate$4;->this$0:Lorg/fdroid/database/AppDaoInt;

    iput-wide p2, p0, Lorg/fdroid/database/AppDaoInt$diffAndUpdate$4;->$repoId:J

    iput-object p4, p0, Lorg/fdroid/database/AppDaoInt$diffAndUpdate$4;->$packageName:Ljava/lang/String;

    iput-object p5, p0, Lorg/fdroid/database/AppDaoInt$diffAndUpdate$4;->$type:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 255
    invoke-virtual {p0}, Lorg/fdroid/database/AppDaoInt$diffAndUpdate$4;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt$diffAndUpdate$4;->this$0:Lorg/fdroid/database/AppDaoInt;

    iget-wide v1, p0, Lorg/fdroid/database/AppDaoInt$diffAndUpdate$4;->$repoId:J

    iget-object v3, p0, Lorg/fdroid/database/AppDaoInt$diffAndUpdate$4;->$packageName:Ljava/lang/String;

    iget-object v4, p0, Lorg/fdroid/database/AppDaoInt$diffAndUpdate$4;->$type:Ljava/lang/String;

    .line 261
    invoke-interface {v0, v1, v2, v3, v4}, Lorg/fdroid/database/AppDaoInt;->deleteLocalizedFiles(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
