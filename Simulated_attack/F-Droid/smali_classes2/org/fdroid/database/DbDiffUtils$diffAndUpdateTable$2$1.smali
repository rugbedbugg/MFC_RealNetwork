.class final Lorg/fdroid/database/DbDiffUtils$diffAndUpdateTable$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DbDiffUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/DbDiffUtils;->diffAndUpdateTable(Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $itemFinder:Lkotlin/jvm/functions/Function2;

.field final synthetic $key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/database/DbDiffUtils$diffAndUpdateTable$2$1;->$itemFinder:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lorg/fdroid/database/DbDiffUtils$diffAndUpdateTable$2$1;->$key:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/database/DbDiffUtils$diffAndUpdateTable$2$1;->$itemFinder:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Lorg/fdroid/database/DbDiffUtils$diffAndUpdateTable$2$1;->$key:Ljava/lang/String;

    .line 40
    invoke-interface {v0, v1, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lorg/fdroid/database/DbDiffUtils$diffAndUpdateTable$2$1;->invoke(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
