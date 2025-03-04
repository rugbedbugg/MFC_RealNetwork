.class final Lorg/fdroid/index/v1/AppV1$toLocalizedFileListV2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AppV1.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/index/v1/AppV1;->toLocalizedFileListV2(Ljava/util/Map;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $kind:Ljava/lang/String;

.field final synthetic $selector:Lkotlin/jvm/functions/Function1;

.field final synthetic this$0:Lorg/fdroid/index/v1/AppV1;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lorg/fdroid/index/v1/AppV1;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/index/v1/AppV1$toLocalizedFileListV2$1;->$selector:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lorg/fdroid/index/v1/AppV1$toLocalizedFileListV2$1;->this$0:Lorg/fdroid/index/v1/AppV1;

    iput-object p3, p0, Lorg/fdroid/index/v1/AppV1$toLocalizedFileListV2$1;->$kind:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 131
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lorg/fdroid/index/v1/AppV1$toLocalizedFileListV2$1;->invoke(Ljava/util/Map$Entry;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/util/Map$Entry;)Ljava/util/List;
    .locals 13

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1$toLocalizedFileListV2$1;->$selector:Lkotlin/jvm/functions/Function1;

    .line 132
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1$toLocalizedFileListV2$1;->this$0:Lorg/fdroid/index/v1/AppV1;

    iget-object v2, p0, Lorg/fdroid/index/v1/AppV1$toLocalizedFileListV2$1;->$kind:Ljava/lang/String;

    .line 1549
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1621
    check-cast v4, Ljava/lang/String;

    .line 133
    new-instance v12, Lorg/fdroid/index/v2/FileV2;

    invoke-virtual {v1}, Lorg/fdroid/index/v1/AppV1;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xe

    const/4 v11, 0x0

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lorg/fdroid/index/v2/FileV2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1621
    invoke-interface {v3, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    return-object v3
.end method
