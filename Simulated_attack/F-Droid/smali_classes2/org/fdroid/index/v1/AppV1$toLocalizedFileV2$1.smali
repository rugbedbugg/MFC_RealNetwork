.class final Lorg/fdroid/index/v1/AppV1$toLocalizedFileV2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AppV1.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/index/v1/AppV1;->toLocalizedFileV2(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $selector:Lkotlin/jvm/functions/Function1;

.field final synthetic this$0:Lorg/fdroid/index/v1/AppV1;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lorg/fdroid/index/v1/AppV1;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/index/v1/AppV1$toLocalizedFileV2$1;->$selector:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lorg/fdroid/index/v1/AppV1$toLocalizedFileV2$1;->this$0:Lorg/fdroid/index/v1/AppV1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 119
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lorg/fdroid/index/v1/AppV1$toLocalizedFileV2$1;->invoke(Ljava/util/Map$Entry;)Lorg/fdroid/index/v2/FileV2;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/util/Map$Entry;)Lorg/fdroid/index/v2/FileV2;
    .locals 10

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/index/v1/AppV1$toLocalizedFileV2$1;->$selector:Lkotlin/jvm/functions/Function1;

    .line 120
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/fdroid/index/v1/AppV1$toLocalizedFileV2$1;->this$0:Lorg/fdroid/index/v1/AppV1;

    .line 121
    new-instance v9, Lorg/fdroid/index/v2/FileV2;

    invoke-virtual {v1}, Lorg/fdroid/index/v1/AppV1;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lorg/fdroid/index/v2/FileV2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    return-object v9
.end method
