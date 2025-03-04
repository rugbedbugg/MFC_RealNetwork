.class final Lorg/fdroid/index/IndexConverterKt$mapInto$3;
.super Lkotlin/jvm/internal/Lambda;
.source "IndexConverter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/index/IndexConverterKt;->mapInto(Ljava/util/Map;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lorg/fdroid/index/IndexConverterKt$mapInto$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/fdroid/index/IndexConverterKt$mapInto$3;

    invoke-direct {v0}, Lorg/fdroid/index/IndexConverterKt$mapInto$3;-><init>()V

    sput-object v0, Lorg/fdroid/index/IndexConverterKt$mapInto$3;->INSTANCE:Lorg/fdroid/index/IndexConverterKt$mapInto$3;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/fdroid/index/IndexConverterKt$mapInto$3;->invoke(Ljava/lang/String;)Lorg/fdroid/index/v2/AntiFeatureV2;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)Lorg/fdroid/index/v2/AntiFeatureV2;
    .locals 7

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance v0, Lorg/fdroid/index/v2/AntiFeatureV2;

    const/4 v2, 0x0

    const-string v1, "en-US"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/fdroid/index/v2/AntiFeatureV2;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
