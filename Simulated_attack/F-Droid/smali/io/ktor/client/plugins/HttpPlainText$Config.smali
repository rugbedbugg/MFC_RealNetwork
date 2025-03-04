.class public final Lio/ktor/client/plugins/HttpPlainText$Config;
.super Ljava/lang/Object;
.source "HttpPlainText.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/HttpPlainText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# instance fields
.field private final charsetQuality:Ljava/util/Map;

.field private final charsets:Ljava/util/Set;

.field private responseCharsetFallback:Ljava/nio/charset/Charset;

.field private sendCharset:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/ktor/client/plugins/HttpPlainText$Config;->charsets:Ljava/util/Set;

    .line 71
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/ktor/client/plugins/HttpPlainText$Config;->charsetQuality:Ljava/util/Map;

    .line 99
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lio/ktor/client/plugins/HttpPlainText$Config;->responseCharsetFallback:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public final getCharsetQuality$ktor_client_core()Ljava/util/Map;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/plugins/HttpPlainText$Config;->charsetQuality:Ljava/util/Map;

    return-object v0
.end method

.method public final getCharsets$ktor_client_core()Ljava/util/Set;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/plugins/HttpPlainText$Config;->charsets:Ljava/util/Set;

    return-object v0
.end method

.method public final getResponseCharsetFallback()Ljava/nio/charset/Charset;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/plugins/HttpPlainText$Config;->responseCharsetFallback:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public final getSendCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/plugins/HttpPlainText$Config;->sendCharset:Ljava/nio/charset/Charset;

    return-object v0
.end method
