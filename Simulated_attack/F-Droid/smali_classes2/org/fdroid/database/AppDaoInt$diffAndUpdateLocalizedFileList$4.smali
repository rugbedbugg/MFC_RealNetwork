.class final Lorg/fdroid/database/AppDaoInt$diffAndUpdateLocalizedFileList$4;
.super Lkotlin/jvm/internal/Lambda;
.source "AppDao.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/AppDaoInt$DefaultImpls;->diffAndUpdateLocalizedFileList(Lorg/fdroid/database/AppDaoInt;JLjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/database/AppDaoInt;


# direct methods
.method constructor <init>(Lorg/fdroid/database/AppDaoInt;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/database/AppDaoInt$diffAndUpdateLocalizedFileList$4;->this$0:Lorg/fdroid/database/AppDaoInt;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 274
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/database/AppDaoInt$diffAndUpdateLocalizedFileList$4;->invoke(Ljava/lang/String;Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fileLists"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt$diffAndUpdateLocalizedFileList$4;->this$0:Lorg/fdroid/database/AppDaoInt;

    .line 284
    invoke-interface {p1, p2}, Lorg/fdroid/database/AppDaoInt;->insertLocalizedFileLists(Ljava/util/List;)V

    return-void
.end method
