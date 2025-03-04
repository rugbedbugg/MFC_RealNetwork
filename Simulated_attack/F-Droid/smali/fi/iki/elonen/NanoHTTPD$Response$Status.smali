.class public final enum Lfi/iki/elonen/NanoHTTPD$Response$Status;
.super Ljava/lang/Enum;
.source "NanoHTTPD.java"

# interfaces
.implements Lfi/iki/elonen/NanoHTTPD$Response$IStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum ACCEPTED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum CONFLICT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum CREATED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum EXPECTATION_FAILED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum FORBIDDEN:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum GONE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum LENGTH_REQUIRED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum METHOD_NOT_ALLOWED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum MULTI_STATUS:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum NOT_ACCEPTABLE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum NOT_IMPLEMENTED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum NOT_MODIFIED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum NO_CONTENT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum PARTIAL_CONTENT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum PAYLOAD_TOO_LARGE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum PRECONDITION_FAILED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum RANGE_NOT_SATISFIABLE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum REDIRECT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum REDIRECT_SEE_OTHER:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum REQUEST_TIMEOUT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum SERVICE_UNAVAILABLE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum SWITCH_PROTOCOL:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum TEMPORARY_REDIRECT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum TOO_MANY_REQUESTS:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum UNAUTHORIZED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum UNSUPPORTED_HTTP_VERSION:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum UNSUPPORTED_MEDIA_TYPE:Lfi/iki/elonen/NanoHTTPD$Response$Status;


# instance fields
.field private final description:Ljava/lang/String;

.field private final requestStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 36

    .line 1340
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v1, 0x65

    const-string v2, "Switching Protocols"

    const-string v3, "SWITCH_PROTOCOL"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->SWITCH_PROTOCOL:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1342
    new-instance v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0xc8

    const-string v3, "OK"

    const/4 v5, 0x1

    invoke-direct {v1, v3, v5, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1343
    new-instance v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v3, 0xc9

    const-string v6, "Created"

    const-string v7, "CREATED"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v3, v6}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->CREATED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1344
    new-instance v3, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v6, 0xca

    const-string v7, "Accepted"

    const-string v9, "ACCEPTED"

    const/4 v10, 0x3

    invoke-direct {v3, v9, v10, v6, v7}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lfi/iki/elonen/NanoHTTPD$Response$Status;->ACCEPTED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1345
    new-instance v6, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v7, 0xcc

    const-string v9, "No Content"

    const-string v11, "NO_CONTENT"

    const/4 v12, 0x4

    invoke-direct {v6, v11, v12, v7, v9}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NO_CONTENT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1346
    new-instance v7, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v9, 0xce

    const-string v11, "Partial Content"

    const-string v13, "PARTIAL_CONTENT"

    const/4 v14, 0x5

    invoke-direct {v7, v13, v14, v9, v11}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lfi/iki/elonen/NanoHTTPD$Response$Status;->PARTIAL_CONTENT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1347
    new-instance v9, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v11, 0xcf

    const-string v13, "Multi-Status"

    const-string v15, "MULTI_STATUS"

    const/4 v14, 0x6

    invoke-direct {v9, v15, v14, v11, v13}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lfi/iki/elonen/NanoHTTPD$Response$Status;->MULTI_STATUS:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1349
    new-instance v11, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v13, 0x12d

    const-string v15, "Moved Permanently"

    const-string v14, "REDIRECT"

    const/4 v12, 0x7

    invoke-direct {v11, v14, v12, v13, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lfi/iki/elonen/NanoHTTPD$Response$Status;->REDIRECT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1356
    new-instance v13, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v14, 0x12e

    const-string v15, "Found"

    const-string v12, "FOUND"

    const/16 v10, 0x8

    invoke-direct {v13, v12, v10, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lfi/iki/elonen/NanoHTTPD$Response$Status;->FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1358
    new-instance v12, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v14, 0x12f

    const-string v15, "See Other"

    const-string v10, "REDIRECT_SEE_OTHER"

    const/16 v8, 0x9

    invoke-direct {v12, v10, v8, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lfi/iki/elonen/NanoHTTPD$Response$Status;->REDIRECT_SEE_OTHER:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1359
    new-instance v10, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v14, 0x130

    const-string v15, "Not Modified"

    const-string v8, "NOT_MODIFIED"

    const/16 v5, 0xa

    invoke-direct {v10, v8, v5, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_MODIFIED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1360
    new-instance v8, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v14, 0x133

    const-string v15, "Temporary Redirect"

    const-string v5, "TEMPORARY_REDIRECT"

    const/16 v4, 0xb

    invoke-direct {v8, v5, v4, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lfi/iki/elonen/NanoHTTPD$Response$Status;->TEMPORARY_REDIRECT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1362
    new-instance v5, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v14, 0x190

    const-string v15, "Bad Request"

    const-string v4, "BAD_REQUEST"

    move-object/from16 v16, v8

    const/16 v8, 0xc

    invoke-direct {v5, v4, v8, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1363
    new-instance v4, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v14, 0x191

    const-string v15, "Unauthorized"

    const-string v8, "UNAUTHORIZED"

    move-object/from16 v17, v5

    const/16 v5, 0xd

    invoke-direct {v4, v8, v5, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lfi/iki/elonen/NanoHTTPD$Response$Status;->UNAUTHORIZED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1364
    new-instance v8, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v14, 0x193

    const-string v15, "Forbidden"

    const-string v5, "FORBIDDEN"

    move-object/from16 v18, v4

    const/16 v4, 0xe

    invoke-direct {v8, v5, v4, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lfi/iki/elonen/NanoHTTPD$Response$Status;->FORBIDDEN:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1365
    new-instance v5, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v14, 0x194

    const-string v15, "Not Found"

    const-string v4, "NOT_FOUND"

    move-object/from16 v19, v8

    const/16 v8, 0xf

    invoke-direct {v5, v4, v8, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1366
    new-instance v4, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v14, 0x195

    const-string v15, "Method Not Allowed"

    const-string v8, "METHOD_NOT_ALLOWED"

    move-object/from16 v20, v5

    const/16 v5, 0x10

    invoke-direct {v4, v8, v5, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lfi/iki/elonen/NanoHTTPD$Response$Status;->METHOD_NOT_ALLOWED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1367
    new-instance v8, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v14, 0x196

    const-string v15, "Not Acceptable"

    const-string v5, "NOT_ACCEPTABLE"

    move-object/from16 v21, v4

    const/16 v4, 0x11

    invoke-direct {v8, v5, v4, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_ACCEPTABLE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1368
    new-instance v5, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v14, 0x198

    const-string v15, "Request Timeout"

    const-string v4, "REQUEST_TIMEOUT"

    move-object/from16 v22, v8

    const/16 v8, 0x12

    invoke-direct {v5, v4, v8, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lfi/iki/elonen/NanoHTTPD$Response$Status;->REQUEST_TIMEOUT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1369
    new-instance v4, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v14, 0x199

    const-string v15, "Conflict"

    const-string v8, "CONFLICT"

    move-object/from16 v23, v5

    const/16 v5, 0x13

    invoke-direct {v4, v8, v5, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lfi/iki/elonen/NanoHTTPD$Response$Status;->CONFLICT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1370
    new-instance v8, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v14, 0x19a

    const-string v15, "Gone"

    const-string v5, "GONE"

    move-object/from16 v24, v4

    const/16 v4, 0x14

    invoke-direct {v8, v5, v4, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lfi/iki/elonen/NanoHTTPD$Response$Status;->GONE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1371
    new-instance v5, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v14, 0x19b

    const-string v15, "Length Required"

    const-string v4, "LENGTH_REQUIRED"

    move-object/from16 v25, v8

    const/16 v8, 0x15

    invoke-direct {v5, v4, v8, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lfi/iki/elonen/NanoHTTPD$Response$Status;->LENGTH_REQUIRED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1372
    new-instance v4, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v8, 0x19c

    const-string v14, "Precondition Failed"

    const-string v15, "PRECONDITION_FAILED"

    move-object/from16 v26, v5

    const/16 v5, 0x16

    invoke-direct {v4, v15, v5, v8, v14}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lfi/iki/elonen/NanoHTTPD$Response$Status;->PRECONDITION_FAILED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1373
    new-instance v5, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v8, 0x19d

    const-string v14, "Payload Too Large"

    const-string v15, "PAYLOAD_TOO_LARGE"

    move-object/from16 v27, v4

    const/16 v4, 0x17

    invoke-direct {v5, v15, v4, v8, v14}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lfi/iki/elonen/NanoHTTPD$Response$Status;->PAYLOAD_TOO_LARGE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1374
    new-instance v4, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v8, 0x19f

    const-string v14, "Unsupported Media Type"

    const-string v15, "UNSUPPORTED_MEDIA_TYPE"

    move-object/from16 v28, v5

    const/16 v5, 0x18

    invoke-direct {v4, v15, v5, v8, v14}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lfi/iki/elonen/NanoHTTPD$Response$Status;->UNSUPPORTED_MEDIA_TYPE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1375
    new-instance v5, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v8, 0x1a0

    const-string v14, "Requested Range Not Satisfiable"

    const-string v15, "RANGE_NOT_SATISFIABLE"

    move-object/from16 v29, v4

    const/16 v4, 0x19

    invoke-direct {v5, v15, v4, v8, v14}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lfi/iki/elonen/NanoHTTPD$Response$Status;->RANGE_NOT_SATISFIABLE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1376
    new-instance v4, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v8, 0x1a1

    const-string v14, "Expectation Failed"

    const-string v15, "EXPECTATION_FAILED"

    move-object/from16 v30, v5

    const/16 v5, 0x1a

    invoke-direct {v4, v15, v5, v8, v14}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lfi/iki/elonen/NanoHTTPD$Response$Status;->EXPECTATION_FAILED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1377
    new-instance v5, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v8, 0x1ad

    const-string v14, "Too Many Requests"

    const-string v15, "TOO_MANY_REQUESTS"

    move-object/from16 v31, v4

    const/16 v4, 0x1b

    invoke-direct {v5, v15, v4, v8, v14}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lfi/iki/elonen/NanoHTTPD$Response$Status;->TOO_MANY_REQUESTS:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1379
    new-instance v4, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v8, 0x1f4

    const-string v14, "Internal Server Error"

    const-string v15, "INTERNAL_ERROR"

    move-object/from16 v32, v5

    const/16 v5, 0x1c

    invoke-direct {v4, v15, v5, v8, v14}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1380
    new-instance v5, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v8, 0x1f5

    const-string v14, "Not Implemented"

    const-string v15, "NOT_IMPLEMENTED"

    move-object/from16 v33, v4

    const/16 v4, 0x1d

    invoke-direct {v5, v15, v4, v8, v14}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_IMPLEMENTED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1381
    new-instance v4, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v8, 0x1f7

    const-string v14, "Service Unavailable"

    const-string v15, "SERVICE_UNAVAILABLE"

    move-object/from16 v34, v5

    const/16 v5, 0x1e

    invoke-direct {v4, v15, v5, v8, v14}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lfi/iki/elonen/NanoHTTPD$Response$Status;->SERVICE_UNAVAILABLE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1382
    new-instance v5, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v8, 0x1f9

    const-string v14, "HTTP Version Not Supported"

    const-string v15, "UNSUPPORTED_HTTP_VERSION"

    move-object/from16 v35, v4

    const/16 v4, 0x1f

    invoke-direct {v5, v15, v4, v8, v14}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lfi/iki/elonen/NanoHTTPD$Response$Status;->UNSUPPORTED_HTTP_VERSION:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v4, 0x20

    new-array v4, v4, [Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/4 v8, 0x0

    aput-object v0, v4, v8

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    const/4 v0, 0x4

    aput-object v6, v4, v0

    const/4 v0, 0x5

    aput-object v7, v4, v0

    const/4 v0, 0x6

    aput-object v9, v4, v0

    const/4 v0, 0x7

    aput-object v11, v4, v0

    const/16 v0, 0x8

    aput-object v13, v4, v0

    const/16 v0, 0x9

    aput-object v12, v4, v0

    const/16 v0, 0xa

    aput-object v10, v4, v0

    const/16 v0, 0xb

    aput-object v16, v4, v0

    const/16 v0, 0xc

    aput-object v17, v4, v0

    const/16 v0, 0xd

    aput-object v18, v4, v0

    const/16 v0, 0xe

    aput-object v19, v4, v0

    const/16 v0, 0xf

    aput-object v20, v4, v0

    const/16 v0, 0x10

    aput-object v21, v4, v0

    const/16 v0, 0x11

    aput-object v22, v4, v0

    const/16 v0, 0x12

    aput-object v23, v4, v0

    const/16 v0, 0x13

    aput-object v24, v4, v0

    const/16 v0, 0x14

    aput-object v25, v4, v0

    const/16 v0, 0x15

    aput-object v26, v4, v0

    const/16 v0, 0x16

    aput-object v27, v4, v0

    const/16 v0, 0x17

    aput-object v28, v4, v0

    const/16 v0, 0x18

    aput-object v29, v4, v0

    const/16 v0, 0x19

    aput-object v30, v4, v0

    const/16 v0, 0x1a

    aput-object v31, v4, v0

    const/16 v0, 0x1b

    aput-object v32, v4, v0

    const/16 v0, 0x1c

    aput-object v33, v4, v0

    const/16 v0, 0x1d

    aput-object v34, v4, v0

    const/16 v0, 0x1e

    aput-object v35, v4, v0

    const/16 v0, 0x1f

    aput-object v5, v4, v0

    sput-object v4, Lfi/iki/elonen/NanoHTTPD$Response$Status;->$VALUES:[Lfi/iki/elonen/NanoHTTPD$Response$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 1388
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->requestStatus:I

    iput-object p4, p0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response$Status;
    .locals 1

    const-class v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1339
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    return-object p0
.end method

.method public static values()[Lfi/iki/elonen/NanoHTTPD$Response$Status;
    .locals 1

    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->$VALUES:[Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1339
    invoke-virtual {v0}, [Lfi/iki/elonen/NanoHTTPD$Response$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfi/iki/elonen/NanoHTTPD$Response$Status;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 1404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->requestStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestStatus()I
    .locals 1

    .line 0
    iget v0, p0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->requestStatus:I

    return v0
.end method
