.class public final enum Lio/ktor/client/engine/ProxyType;
.super Ljava/lang/Enum;
.source "ProxyConfig.kt"


# static fields
.field private static final synthetic $VALUES:[Lio/ktor/client/engine/ProxyType;

.field public static final enum HTTP:Lio/ktor/client/engine/ProxyType;

.field public static final enum SOCKS:Lio/ktor/client/engine/ProxyType;

.field public static final enum UNKNOWN:Lio/ktor/client/engine/ProxyType;


# direct methods
.method private static final synthetic $values()[Lio/ktor/client/engine/ProxyType;
    .locals 3

    .line 0
    const/4 v0, 0x3

    new-array v0, v0, [Lio/ktor/client/engine/ProxyType;

    const/4 v1, 0x0

    sget-object v2, Lio/ktor/client/engine/ProxyType;->SOCKS:Lio/ktor/client/engine/ProxyType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lio/ktor/client/engine/ProxyType;->HTTP:Lio/ktor/client/engine/ProxyType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lio/ktor/client/engine/ProxyType;->UNKNOWN:Lio/ktor/client/engine/ProxyType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Lio/ktor/client/engine/ProxyType;

    const-string v1, "SOCKS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/ktor/client/engine/ProxyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/ktor/client/engine/ProxyType;->SOCKS:Lio/ktor/client/engine/ProxyType;

    .line 22
    new-instance v0, Lio/ktor/client/engine/ProxyType;

    const-string v1, "HTTP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/ktor/client/engine/ProxyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/ktor/client/engine/ProxyType;->HTTP:Lio/ktor/client/engine/ProxyType;

    .line 23
    new-instance v0, Lio/ktor/client/engine/ProxyType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/ktor/client/engine/ProxyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/ktor/client/engine/ProxyType;->UNKNOWN:Lio/ktor/client/engine/ProxyType;

    invoke-static {}, Lio/ktor/client/engine/ProxyType;->$values()[Lio/ktor/client/engine/ProxyType;

    move-result-object v0

    sput-object v0, Lio/ktor/client/engine/ProxyType;->$VALUES:[Lio/ktor/client/engine/ProxyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/ktor/client/engine/ProxyType;
    .locals 1

    .line 0
    const-class v0, Lio/ktor/client/engine/ProxyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/ktor/client/engine/ProxyType;

    return-object p0
.end method

.method public static values()[Lio/ktor/client/engine/ProxyType;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/client/engine/ProxyType;->$VALUES:[Lio/ktor/client/engine/ProxyType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/ktor/client/engine/ProxyType;

    return-object v0
.end method
