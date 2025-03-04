.class public final Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;
.super Ljava/lang/Object;
.source "HttpTimeout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/HttpTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HttpTimeoutCapabilityConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration$Companion;

.field private static final key:Lio/ktor/util/AttributeKey;


# instance fields
.field private _connectTimeoutMillis:Ljava/lang/Long;

.field private _requestTimeoutMillis:Ljava/lang/Long;

.field private _socketTimeoutMillis:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->Companion:Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration$Companion;

    .line 115
    new-instance v0, Lio/ktor/util/AttributeKey;

    const-string v1, "TimeoutConfiguration"

    invoke-direct {v0, v1}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->key:Lio/ktor/util/AttributeKey;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 38
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->_requestTimeoutMillis:Ljava/lang/Long;

    iput-object v0, p0, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->_connectTimeoutMillis:Ljava/lang/Long;

    iput-object v0, p0, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->_socketTimeoutMillis:Ljava/lang/Long;

    .line 50
    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->setRequestTimeoutMillis(Ljava/lang/Long;)V

    .line 51
    invoke-virtual {p0, p2}, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->setConnectTimeoutMillis(Ljava/lang/Long;)V

    .line 52
    invoke-virtual {p0, p3}, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->setSocketTimeoutMillis(Ljava/lang/Long;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 45
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method private final checkTimeoutValue(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 4

    if-eqz p1, :cond_1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only positive timeout values are allowed, for infinite timeout use HttpTimeout.INFINITE_TIMEOUT_MS"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method public final build$ktor_client_core()Lio/ktor/client/plugins/HttpTimeout;
    .locals 5

    .line 85
    new-instance v0, Lio/ktor/client/plugins/HttpTimeout;

    invoke-virtual {p0}, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->getRequestTimeoutMillis()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->getConnectTimeoutMillis()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0}, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->getSocketTimeoutMillis()Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/ktor/client/plugins/HttpTimeout;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;

    if-eq v3, v2, :cond_1

    goto :goto_0

    .line 98
    :cond_1
    check-cast p1, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;

    iget-object v2, p0, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->_requestTimeoutMillis:Ljava/lang/Long;

    .line 100
    iget-object v3, p1, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->_requestTimeoutMillis:Ljava/lang/Long;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->_connectTimeoutMillis:Ljava/lang/Long;

    .line 101
    iget-object v3, p1, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->_connectTimeoutMillis:Ljava/lang/Long;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->_socketTimeoutMillis:Ljava/lang/Long;

    .line 102
    iget-object p1, p1, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->_socketTimeoutMillis:Ljava/lang/Long;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public final getConnectTimeoutMillis()Ljava/lang/Long;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->_connectTimeoutMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public final getRequestTimeoutMillis()Ljava/lang/Long;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->_requestTimeoutMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public final getSocketTimeoutMillis()Ljava/lang/Long;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->_socketTimeoutMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->_requestTimeoutMillis:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->_connectTimeoutMillis:Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 109
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->_socketTimeoutMillis:Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 110
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final setConnectTimeoutMillis(Ljava/lang/Long;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->checkTimeoutValue(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->_connectTimeoutMillis:Ljava/lang/Long;

    return-void
.end method

.method public final setRequestTimeoutMillis(Ljava/lang/Long;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->checkTimeoutValue(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->_requestTimeoutMillis:Ljava/lang/Long;

    return-void
.end method

.method public final setSocketTimeoutMillis(Ljava/lang/Long;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->checkTimeoutValue(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->_socketTimeoutMillis:Ljava/lang/Long;

    return-void
.end method
