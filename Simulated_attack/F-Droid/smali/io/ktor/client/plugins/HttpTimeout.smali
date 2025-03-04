.class public final Lio/ktor/client/plugins/HttpTimeout;
.super Ljava/lang/Object;
.source "HttpTimeout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;,
        Lio/ktor/client/plugins/HttpTimeout$Plugin;
    }
.end annotation


# static fields
.field public static final Plugin:Lio/ktor/client/plugins/HttpTimeout$Plugin;

.field private static final key:Lio/ktor/util/AttributeKey;


# instance fields
.field private final connectTimeoutMillis:Ljava/lang/Long;

.field private final requestTimeoutMillis:Ljava/lang/Long;

.field private final socketTimeoutMillis:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/client/plugins/HttpTimeout$Plugin;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/client/plugins/HttpTimeout$Plugin;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/client/plugins/HttpTimeout;->Plugin:Lio/ktor/client/plugins/HttpTimeout$Plugin;

    .line 132
    new-instance v0, Lio/ktor/util/AttributeKey;

    const-string v1, "TimeoutPlugin"

    invoke-direct {v0, v1}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/plugins/HttpTimeout;->key:Lio/ktor/util/AttributeKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/client/plugins/HttpTimeout;->requestTimeoutMillis:Ljava/lang/Long;

    iput-object p2, p0, Lio/ktor/client/plugins/HttpTimeout;->connectTimeoutMillis:Ljava/lang/Long;

    iput-object p3, p0, Lio/ktor/client/plugins/HttpTimeout;->socketTimeoutMillis:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/client/plugins/HttpTimeout;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method public static final synthetic access$getConnectTimeoutMillis$p(Lio/ktor/client/plugins/HttpTimeout;)Ljava/lang/Long;
    .locals 0

    .line 28
    iget-object p0, p0, Lio/ktor/client/plugins/HttpTimeout;->connectTimeoutMillis:Ljava/lang/Long;

    return-object p0
.end method

.method public static final synthetic access$getKey$cp()Lio/ktor/util/AttributeKey;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/client/plugins/HttpTimeout;->key:Lio/ktor/util/AttributeKey;

    return-object v0
.end method

.method public static final synthetic access$getRequestTimeoutMillis$p(Lio/ktor/client/plugins/HttpTimeout;)Ljava/lang/Long;
    .locals 0

    .line 28
    iget-object p0, p0, Lio/ktor/client/plugins/HttpTimeout;->requestTimeoutMillis:Ljava/lang/Long;

    return-object p0
.end method

.method public static final synthetic access$getSocketTimeoutMillis$p(Lio/ktor/client/plugins/HttpTimeout;)Ljava/lang/Long;
    .locals 0

    .line 28
    iget-object p0, p0, Lio/ktor/client/plugins/HttpTimeout;->socketTimeoutMillis:Ljava/lang/Long;

    return-object p0
.end method

.method public static final synthetic access$hasNotNullTimeouts(Lio/ktor/client/plugins/HttpTimeout;)Z
    .locals 0

    .line 28
    invoke-direct {p0}, Lio/ktor/client/plugins/HttpTimeout;->hasNotNullTimeouts()Z

    move-result p0

    return p0
.end method

.method private final hasNotNullTimeouts()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/plugins/HttpTimeout;->requestTimeoutMillis:Ljava/lang/Long;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/ktor/client/plugins/HttpTimeout;->connectTimeoutMillis:Ljava/lang/Long;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/ktor/client/plugins/HttpTimeout;->socketTimeoutMillis:Ljava/lang/Long;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
