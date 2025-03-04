.class public final Lorg/fdroid/fdroid/nearby/httpish/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/nearby/httpish/Request$Methods;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "bluetooth.Request"


# instance fields
.field private final connection:Lorg/fdroid/fdroid/nearby/BluetoothConnection;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final input:Ljava/io/InputStream;

.field private method:Ljava/lang/String;

.field private final output:Ljava/io/Writer;

.field private path:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/fdroid/nearby/BluetoothConnection;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/httpish/Request;->method:Ljava/lang/String;

    iput-object p2, p0, Lorg/fdroid/fdroid/nearby/httpish/Request;->path:Ljava/lang/String;

    iput-object p3, p0, Lorg/fdroid/fdroid/nearby/httpish/Request;->connection:Lorg/fdroid/fdroid/nearby/BluetoothConnection;

    .line 37
    new-instance p1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p3}, Lorg/fdroid/fdroid/nearby/BluetoothConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/httpish/Request;->output:Ljava/io/Writer;

    .line 38
    invoke-virtual {p3}, Lorg/fdroid/fdroid/nearby/BluetoothConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/httpish/Request;->input:Ljava/io/InputStream;

    return-void
.end method

.method public static createGET(Ljava/lang/String;Lorg/fdroid/fdroid/nearby/BluetoothConnection;)Lorg/fdroid/fdroid/nearby/httpish/Request;
    .locals 2

    .line 46
    new-instance v0, Lorg/fdroid/fdroid/nearby/httpish/Request;

    const-string v1, "GET"

    invoke-direct {v0, v1, p0, p1}, Lorg/fdroid/fdroid/nearby/httpish/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/fdroid/nearby/BluetoothConnection;)V

    return-object v0
.end method

.method public static createHEAD(Ljava/lang/String;Lorg/fdroid/fdroid/nearby/BluetoothConnection;)Lorg/fdroid/fdroid/nearby/httpish/Request;
    .locals 2

    .line 42
    new-instance v0, Lorg/fdroid/fdroid/nearby/httpish/Request;

    const-string v1, "HEAD"

    invoke-direct {v0, v1, p0, p1}, Lorg/fdroid/fdroid/nearby/httpish/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/fdroid/nearby/BluetoothConnection;)V

    return-object v0
.end method

.method private listen()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/httpish/Request;->readLine()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 96
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "\\s+"

    .line 100
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 103
    array-length v2, v0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    return v1

    .line 107
    :cond_1
    aget-object v1, v0, v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/fdroid/fdroid/nearby/httpish/Request;->method:Ljava/lang/String;

    const/4 v1, 0x1

    .line 108
    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/httpish/Request;->path:Ljava/lang/String;

    .line 109
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/httpish/Request;->readHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/httpish/Request;->headers:Ljava/util/Map;

    :cond_2
    :goto_0
    return v1
.end method

.method public static listenForRequest(Lorg/fdroid/fdroid/nearby/BluetoothConnection;)Lorg/fdroid/fdroid/nearby/httpish/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    new-instance v0, Lorg/fdroid/fdroid/nearby/httpish/Request;

    const-string v1, ""

    invoke-direct {v0, v1, v1, p0}, Lorg/fdroid/fdroid/nearby/httpish/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/fdroid/nearby/BluetoothConnection;)V

    .line 118
    invoke-direct {v0}, Lorg/fdroid/fdroid/nearby/httpish/Request;->listen()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private readHeaders()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 177
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/httpish/Request;->readLine()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    const-string v2, ":"

    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 182
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const/4 v2, 0x0

    .line 183
    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 184
    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/httpish/Request;->input:Ljava/io/InputStream;

    .line 188
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_1

    .line 189
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/httpish/Request;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private readLine()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :catch_0
    :goto_0
    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/httpish/Request;->input:Ljava/io/InputStream;

    .line 145
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/httpish/Request;->input:Ljava/io/InputStream;

    .line 147
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    int-to-char v2, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 150
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 151
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 157
    :cond_1
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x64

    .line 161
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private readResponseCode()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/httpish/Request;->readLine()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 133
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 135
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/httpish/Request;->headers:Ljava/util/Map;

    .line 50
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/httpish/Request;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/httpish/Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/httpish/Request;->path:Ljava/lang/String;

    return-object v0
.end method

.method public send()Lorg/fdroid/fdroid/nearby/httpish/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending request to server ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/httpish/Request;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bluetooth.Request"

    invoke-static {v1, v0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/httpish/Request;->output:Ljava/io/Writer;

    iget-object v2, p0, Lorg/fdroid/fdroid/nearby/httpish/Request;->method:Ljava/lang/String;

    .line 57
    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/httpish/Request;->output:Ljava/io/Writer;

    const/16 v2, 0x20

    .line 58
    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/httpish/Request;->output:Ljava/io/Writer;

    iget-object v2, p0, Lorg/fdroid/fdroid/nearby/httpish/Request;->path:Ljava/lang/String;

    .line 59
    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/httpish/Request;->output:Ljava/io/Writer;

    const-string v2, "\n\n"

    .line 61
    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/httpish/Request;->output:Ljava/io/Writer;

    .line 63
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    const-string v0, "Finished sending request, now attempting to read response status code..."

    .line 65
    invoke-static {v1, v0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/httpish/Request;->readResponseCode()I

    move-result v0

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read response code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from server, now reading headers..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/httpish/Request;->readHeaders()Ljava/util/Map;

    move-result-object v2

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " headers"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/fdroid/fdroid/nearby/httpish/Request;->method:Ljava/lang/String;

    const-string v4, "HEAD"

    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Request was a HEAD request, not including anything other than headers and status..."

    .line 76
    invoke-static {v1, v3}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v1, Lorg/fdroid/fdroid/nearby/httpish/Response;

    invoke-direct {v1, v0, v2}, Lorg/fdroid/fdroid/nearby/httpish/Response;-><init>(ILjava/util/Map;)V

    return-object v1

    :cond_0
    const-string v3, "Request was a GET request, so including content stream in response..."

    .line 80
    invoke-static {v1, v3}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v1, Lorg/fdroid/fdroid/nearby/httpish/Response;

    iget-object v3, p0, Lorg/fdroid/fdroid/nearby/httpish/Request;->connection:Lorg/fdroid/fdroid/nearby/BluetoothConnection;

    invoke-virtual {v3}, Lorg/fdroid/fdroid/nearby/BluetoothConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lorg/fdroid/fdroid/nearby/httpish/Response;-><init>(ILjava/util/Map;Ljava/io/InputStream;)V

    return-object v1
.end method
