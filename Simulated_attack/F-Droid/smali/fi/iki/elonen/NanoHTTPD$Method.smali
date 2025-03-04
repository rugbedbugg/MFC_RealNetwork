.class public final enum Lfi/iki/elonen/NanoHTTPD$Method;
.super Ljava/lang/Enum;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum CONNECT:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum COPY:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum DELETE:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum GET:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum HEAD:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum LOCK:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum MKCOL:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum MOVE:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum OPTIONS:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum PATCH:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum POST:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum PROPFIND:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum PROPPATCH:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum PUT:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum TRACE:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum UNLOCK:Lfi/iki/elonen/NanoHTTPD$Method;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1294
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->GET:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1295
    new-instance v1, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v3, "PUT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->PUT:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1296
    new-instance v3, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v5, "POST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lfi/iki/elonen/NanoHTTPD$Method;->POST:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1297
    new-instance v5, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v7, "DELETE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lfi/iki/elonen/NanoHTTPD$Method;->DELETE:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1298
    new-instance v7, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v9, "HEAD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lfi/iki/elonen/NanoHTTPD$Method;->HEAD:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1299
    new-instance v9, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v11, "OPTIONS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lfi/iki/elonen/NanoHTTPD$Method;->OPTIONS:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1300
    new-instance v11, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v13, "TRACE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lfi/iki/elonen/NanoHTTPD$Method;->TRACE:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1301
    new-instance v13, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v15, "CONNECT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lfi/iki/elonen/NanoHTTPD$Method;->CONNECT:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1302
    new-instance v15, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v14, "PATCH"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lfi/iki/elonen/NanoHTTPD$Method;->PATCH:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1303
    new-instance v14, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v12, "PROPFIND"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lfi/iki/elonen/NanoHTTPD$Method;->PROPFIND:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1304
    new-instance v12, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v10, "PROPPATCH"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lfi/iki/elonen/NanoHTTPD$Method;->PROPPATCH:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1305
    new-instance v10, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v8, "MKCOL"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lfi/iki/elonen/NanoHTTPD$Method;->MKCOL:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1306
    new-instance v8, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v6, "MOVE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lfi/iki/elonen/NanoHTTPD$Method;->MOVE:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1307
    new-instance v6, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v4, "COPY"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lfi/iki/elonen/NanoHTTPD$Method;->COPY:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1308
    new-instance v4, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v2, "LOCK"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lfi/iki/elonen/NanoHTTPD$Method;->LOCK:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1309
    new-instance v2, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v6, "UNLOCK"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lfi/iki/elonen/NanoHTTPD$Method;->UNLOCK:Lfi/iki/elonen/NanoHTTPD$Method;

    const/16 v6, 0x10

    new-array v6, v6, [Lfi/iki/elonen/NanoHTTPD$Method;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    aput-object v2, v6, v4

    sput-object v6, Lfi/iki/elonen/NanoHTTPD$Method;->$VALUES:[Lfi/iki/elonen/NanoHTTPD$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1293
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static lookup(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Method;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1316
    :cond_0
    :try_start_0
    invoke-static {p0}, Lfi/iki/elonen/NanoHTTPD$Method;->valueOf(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Method;
    .locals 1

    const-class v0, Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1293
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfi/iki/elonen/NanoHTTPD$Method;

    return-object p0
.end method

.method public static values()[Lfi/iki/elonen/NanoHTTPD$Method;
    .locals 1

    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->$VALUES:[Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1293
    invoke-virtual {v0}, [Lfi/iki/elonen/NanoHTTPD$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfi/iki/elonen/NanoHTTPD$Method;

    return-object v0
.end method
