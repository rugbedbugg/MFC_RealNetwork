.class final Lorg/fdroid/database/AppDaoInt$diffAndUpdate$3;
.super Lkotlin/jvm/internal/Lambda;
.source "AppDao.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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


# direct methods
.method constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lorg/fdroid/database/AppDaoInt$diffAndUpdate$3;->$repoId:J

    iput-object p3, p0, Lorg/fdroid/database/AppDaoInt$diffAndUpdate$3;->$packageName:Ljava/lang/String;

    iput-object p4, p0, Lorg/fdroid/database/AppDaoInt$diffAndUpdate$3;->$type:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 255
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/fdroid/database/AppDaoInt$diffAndUpdate$3;->invoke(Ljava/lang/String;)Lorg/fdroid/database/LocalizedFile;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)Lorg/fdroid/database/LocalizedFile;
    .locals 13

    const-string v0, "locale"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    new-instance v0, Lorg/fdroid/database/LocalizedFile;

    iget-wide v2, p0, Lorg/fdroid/database/AppDaoInt$diffAndUpdate$3;->$repoId:J

    iget-object v4, p0, Lorg/fdroid/database/AppDaoInt$diffAndUpdate$3;->$packageName:Ljava/lang/String;

    iget-object v5, p0, Lorg/fdroid/database/AppDaoInt$diffAndUpdate$3;->$type:Ljava/lang/String;

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xe0

    const/4 v12, 0x0

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v12}, Lorg/fdroid/database/LocalizedFile;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
