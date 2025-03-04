.class public final Lokhttp3/internal/http2/Hpack;
.super Ljava/lang/Object;
.source "Hpack.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Hpack$Reader;,
        Lokhttp3/internal/http2/Hpack$Writer;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lokhttp3/internal/http2/Hpack;

.field private static final NAME_TO_FIRST_INDEX:Ljava/util/Map;

.field private static final STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lokhttp3/internal/http2/Hpack;

    invoke-direct {v0}, Lokhttp3/internal/http2/Hpack;-><init>()V

    sput-object v0, Lokhttp3/internal/http2/Hpack;->INSTANCE:Lokhttp3/internal/http2/Hpack;

    const/16 v1, 0x3d

    new-array v1, v1, [Lokhttp3/internal/http2/Header;

    .line 59
    new-instance v2, Lokhttp3/internal/http2/Header;

    sget-object v3, Lokhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 60
    new-instance v2, Lokhttp3/internal/http2/Header;

    sget-object v3, Lokhttp3/internal/http2/Header;->TARGET_METHOD:Lokio/ByteString;

    const-string v5, "GET"

    invoke-direct {v2, v3, v5}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    const/4 v5, 0x1

    aput-object v2, v1, v5

    .line 61
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v5, "POST"

    invoke-direct {v2, v3, v5}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 62
    new-instance v2, Lokhttp3/internal/http2/Header;

    sget-object v3, Lokhttp3/internal/http2/Header;->TARGET_PATH:Lokio/ByteString;

    const-string v5, "/"

    invoke-direct {v2, v3, v5}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    const/4 v5, 0x3

    aput-object v2, v1, v5

    .line 63
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v5, "/index.html"

    invoke-direct {v2, v3, v5}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 64
    new-instance v2, Lokhttp3/internal/http2/Header;

    sget-object v3, Lokhttp3/internal/http2/Header;->TARGET_SCHEME:Lokio/ByteString;

    const-string v5, "http"

    invoke-direct {v2, v3, v5}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    const/4 v5, 0x5

    aput-object v2, v1, v5

    .line 65
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v5, "https"

    invoke-direct {v2, v3, v5}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 66
    new-instance v2, Lokhttp3/internal/http2/Header;

    sget-object v3, Lokhttp3/internal/http2/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string v5, "200"

    invoke-direct {v2, v3, v5}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    const/4 v5, 0x7

    aput-object v2, v1, v5

    .line 67
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v5, "204"

    invoke-direct {v2, v3, v5}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    const/16 v5, 0x8

    aput-object v2, v1, v5

    .line 68
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v5, "206"

    invoke-direct {v2, v3, v5}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    const/16 v5, 0x9

    aput-object v2, v1, v5

    .line 69
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v5, "304"

    invoke-direct {v2, v3, v5}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    const/16 v5, 0xa

    aput-object v2, v1, v5

    .line 70
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v5, "400"

    invoke-direct {v2, v3, v5}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    const/16 v5, 0xb

    aput-object v2, v1, v5

    .line 71
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v5, "404"

    invoke-direct {v2, v3, v5}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    const/16 v5, 0xc

    aput-object v2, v1, v5

    .line 72
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v5, "500"

    invoke-direct {v2, v3, v5}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 73
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "accept-charset"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xe

    aput-object v2, v1, v3

    .line 74
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "accept-encoding"

    const-string v5, "gzip, deflate"

    invoke-direct {v2, v3, v5}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xf

    aput-object v2, v1, v3

    .line 75
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "accept-language"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x10

    aput-object v2, v1, v3

    .line 76
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "accept-ranges"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x11

    aput-object v2, v1, v3

    .line 77
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "accept"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x12

    aput-object v2, v1, v3

    .line 78
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "access-control-allow-origin"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x13

    aput-object v2, v1, v3

    .line 79
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "age"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x14

    aput-object v2, v1, v3

    .line 80
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "allow"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x15

    aput-object v2, v1, v3

    .line 81
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "authorization"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x16

    aput-object v2, v1, v3

    .line 82
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "cache-control"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x17

    aput-object v2, v1, v3

    .line 83
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "content-disposition"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x18

    aput-object v2, v1, v3

    .line 84
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "content-encoding"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x19

    aput-object v2, v1, v3

    .line 85
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "content-language"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    .line 86
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "content-length"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    .line 87
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "content-location"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    .line 88
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "content-range"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    .line 89
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "content-type"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    .line 90
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "cookie"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    .line 91
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "date"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x20

    aput-object v2, v1, v3

    .line 92
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "etag"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x21

    aput-object v2, v1, v3

    .line 93
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "expect"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x22

    aput-object v2, v1, v3

    .line 94
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "expires"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x23

    aput-object v2, v1, v3

    .line 95
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "from"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x24

    aput-object v2, v1, v3

    .line 96
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "host"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x25

    aput-object v2, v1, v3

    .line 97
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "if-match"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x26

    aput-object v2, v1, v3

    .line 98
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "if-modified-since"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x27

    aput-object v2, v1, v3

    .line 99
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "if-none-match"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x28

    aput-object v2, v1, v3

    .line 100
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "if-range"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x29

    aput-object v2, v1, v3

    .line 101
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "if-unmodified-since"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    .line 102
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "last-modified"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    .line 103
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "link"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x2c

    aput-object v2, v1, v3

    .line 104
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "location"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x2d

    aput-object v2, v1, v3

    .line 105
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "max-forwards"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x2e

    aput-object v2, v1, v3

    .line 106
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "proxy-authenticate"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x2f

    aput-object v2, v1, v3

    .line 107
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "proxy-authorization"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x30

    aput-object v2, v1, v3

    .line 108
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "range"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x31

    aput-object v2, v1, v3

    .line 109
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "referer"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x32

    aput-object v2, v1, v3

    .line 110
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "refresh"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x33

    aput-object v2, v1, v3

    .line 111
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "retry-after"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x34

    aput-object v2, v1, v3

    .line 112
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "server"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x35

    aput-object v2, v1, v3

    .line 113
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "set-cookie"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x36

    aput-object v2, v1, v3

    .line 114
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "strict-transport-security"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x37

    aput-object v2, v1, v3

    .line 115
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "transfer-encoding"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x38

    aput-object v2, v1, v3

    .line 116
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "user-agent"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x39

    aput-object v2, v1, v3

    .line 117
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "vary"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x3a

    aput-object v2, v1, v3

    .line 118
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "via"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x3b

    aput-object v2, v1, v3

    .line 119
    new-instance v2, Lokhttp3/internal/http2/Header;

    const-string v3, "www-authenticate"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x3c

    aput-object v2, v1, v3

    sput-object v1, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    .line 122
    invoke-direct {v0}, Lokhttp3/internal/http2/Hpack;->nameToFirstIndex()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Hpack;->NAME_TO_FIRST_INDEX:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final nameToFirstIndex()Ljava/util/Map;
    .locals 5

    .line 383
    new-instance v0, Ljava/util/LinkedHashMap;

    sget-object v1, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    array-length v2, v1

    invoke-direct {v0, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 384
    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    sget-object v3, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    .line 385
    aget-object v4, v3, v2

    iget-object v4, v4, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    invoke-virtual {v0, v4}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 386
    aget-object v3, v3, v2

    iget-object v3, v3, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 389
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "unmodifiableMap(result)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final checkLowercase(Lokio/ByteString;)Lokio/ByteString;
    .locals 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 612
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 613
    invoke-virtual {p1, v1}, Lokio/ByteString;->getByte(I)B

    move-result v2

    const/16 v3, 0x41

    if-gt v3, v2, :cond_1

    const/16 v3, 0x5b

    if-lt v2, v3, :cond_0

    goto :goto_1

    .line 614
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PROTOCOL_ERROR response malformed: mixed case name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public final getNAME_TO_FIRST_INDEX()Ljava/util/Map;
    .locals 1

    .line 0
    sget-object v0, Lokhttp3/internal/http2/Hpack;->NAME_TO_FIRST_INDEX:Ljava/util/Map;

    return-object v0
.end method

.method public final getSTATIC_HEADER_TABLE()[Lokhttp3/internal/http2/Header;
    .locals 1

    .line 0
    sget-object v0, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    return-object v0
.end method
