.class final Lio/ktor/client/request/HttpRequestBuilder$setCapability$capabilities$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HttpRequest.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/request/HttpRequestBuilder;->setCapability(Lio/ktor/client/engine/HttpClientEngineCapability;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/client/request/HttpRequestBuilder$setCapability$capabilities$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lio/ktor/client/request/HttpRequestBuilder$setCapability$capabilities$1;

    invoke-direct {v0}, Lio/ktor/client/request/HttpRequestBuilder$setCapability$capabilities$1;-><init>()V

    sput-object v0, Lio/ktor/client/request/HttpRequestBuilder$setCapability$capabilities$1;->INSTANCE:Lio/ktor/client/request/HttpRequestBuilder$setCapability$capabilities$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 163
    invoke-virtual {p0}, Lio/ktor/client/request/HttpRequestBuilder$setCapability$capabilities$1;->invoke()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Map;
    .locals 1

    .line 163
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method
