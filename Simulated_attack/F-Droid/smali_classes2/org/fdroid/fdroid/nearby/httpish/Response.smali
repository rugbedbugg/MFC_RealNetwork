.class public Lorg/fdroid/fdroid/nearby/httpish/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/nearby/httpish/Response$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "bluetooth.Response"


# instance fields
.field private final contentStream:Ljava/io/InputStream;

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final statusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/io/InputStream;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/fdroid/fdroid/nearby/httpish/Response;->statusCode:I

    .line 50
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/httpish/Response;->headers:Ljava/util/Map;

    const-string v0, "Content-Type"

    .line 51
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lorg/fdroid/fdroid/nearby/httpish/Response;->contentStream:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/fdroid/fdroid/nearby/httpish/Response;->statusCode:I

    .line 43
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/httpish/Response;->headers:Ljava/util/Map;

    const-string v0, "Content-Type"

    .line 44
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance p1, Ljava/io/ByteArrayInputStream;

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/httpish/Response;->contentStream:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(ILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lorg/fdroid/fdroid/nearby/httpish/Response;-><init>(ILjava/util/Map;Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/Map;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/fdroid/fdroid/nearby/httpish/Response;->statusCode:I

    iput-object p2, p0, Lorg/fdroid/fdroid/nearby/httpish/Response;->headers:Ljava/util/Map;

    iput-object p3, p0, Lorg/fdroid/fdroid/nearby/httpish/Response;->contentStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/httpish/Response;->headers:Ljava/util/Map;

    .line 56
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getFileSize()I
    .locals 5

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/httpish/Response;->headers:Ljava/util/Map;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 65
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 66
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "content-length"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_1
    return v1
.end method

.method public getStatusCode()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/fdroid/fdroid/nearby/httpish/Response;->statusCode:I

    return v0
.end method

.method public send(Lorg/fdroid/fdroid/nearby/BluetoothConnection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "bluetooth.Response"

    const-string v1, "Sending Bluetooth HTTP-ish response..."

    .line 100
    invoke-static {v0, v1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Lorg/fdroid/fdroid/nearby/BluetoothConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const-string v1, "HTTP(ish)/0.1 200 OK\n"

    .line 103
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/httpish/Response;->headers:Ljava/util/Map;

    .line 105
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\n"

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 106
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v4, ": "

    .line 107
    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 108
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/httpish/Response;->contentStream:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {p1}, Lorg/fdroid/fdroid/nearby/BluetoothConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/fdroid/fdroid/Utils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 119
    :cond_1
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public toContentStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/httpish/Response;->contentStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    return-object v0

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This kind of response doesn\'t have a content stream. Did you perform a HEAD request instead of a GET request?"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toFileDetails()Lorg/fdroid/fdroid/nearby/httpish/FileDetails;
    .locals 4

    .line 83
    new-instance v0, Lorg/fdroid/fdroid/nearby/httpish/FileDetails;

    invoke-direct {v0}, Lorg/fdroid/fdroid/nearby/httpish/FileDetails;-><init>()V

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/httpish/Response;->headers:Ljava/util/Map;

    .line 84
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 85
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lorg/fdroid/fdroid/nearby/httpish/Header;->process(Lorg/fdroid/fdroid/nearby/httpish/FileDetails;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method
