.class public abstract Lio/ktor/client/engine/HttpClientEngineCapabilityKt;
.super Ljava/lang/Object;
.source "HttpClientEngineCapability.kt"


# static fields
.field private static final DEFAULT_CAPABILITIES:Ljava/util/Set;

.field private static final ENGINE_CAPABILITIES_KEY:Lio/ktor/util/AttributeKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lio/ktor/util/AttributeKey;

    const-string v1, "EngineCapabilities"

    invoke-direct {v0, v1}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/engine/HttpClientEngineCapabilityKt;->ENGINE_CAPABILITIES_KEY:Lio/ktor/util/AttributeKey;

    .line 20
    sget-object v0, Lio/ktor/client/plugins/HttpTimeout;->Plugin:Lio/ktor/client/plugins/HttpTimeout$Plugin;

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/ktor/client/engine/HttpClientEngineCapabilityKt;->DEFAULT_CAPABILITIES:Ljava/util/Set;

    return-void
.end method

.method public static final getENGINE_CAPABILITIES_KEY()Lio/ktor/util/AttributeKey;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/client/engine/HttpClientEngineCapabilityKt;->ENGINE_CAPABILITIES_KEY:Lio/ktor/util/AttributeKey;

    return-object v0
.end method
