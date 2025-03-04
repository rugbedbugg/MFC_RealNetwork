.class public Lorg/fdroid/fdroid/nearby/LocalHTTPD;
.super Lfi/iki/elonen/NanoHTTPD;
.source "LocalHTTPD.java"


# static fields
.field public static final INDEX_FILE_NAMES:[Ljava/lang/String;

.field private static final RFC_1123:Ljava/text/DateFormat;

.field private static final TAG:Ljava/lang/String; = "LocalHTTPD"


# instance fields
.field private final context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected rootDirs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$KnCE02xAH2YfT-jAxhoztDGxqhg(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->lambda$listDirectory$1(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$stIjaWjVoMn5z0pdxkrd2Vk1vBU(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->lambda$listDirectory$0(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string v0, "index.html"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->INDEX_FILE_NAMES:[Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->RFC_1123:Ljava/text/DateFormat;

    const/4 v1, 0x0

    .line 93
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setLenient(Z)V

    const-string v1, "GMT"

    .line 94
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/io/File;Z)V
    .locals 0

    .line 104
    invoke-direct {p0, p2, p3}, Lfi/iki/elonen/NanoHTTPD;-><init>(Ljava/lang/String;I)V

    .line 105
    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->rootDirs:Ljava/util/List;

    .line 106
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->context:Ljava/lang/ref/WeakReference;

    if-eqz p5, :cond_0

    .line 108
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->enableHTTPS()V

    .line 110
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    sput-object p1, Lfi/iki/elonen/NanoHTTPD;->MIME_TYPES:Ljava/util/Map;

    const-string p2, "apk"

    const-string p3, "application/vnd.android.package-archive"

    .line 111
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lfi/iki/elonen/NanoHTTPD;->MIME_TYPES:Ljava/util/Map;

    const-string p2, "html"

    const-string p3, "text/html"

    .line 112
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lfi/iki/elonen/NanoHTTPD;->MIME_TYPES:Ljava/util/Map;

    const-string p2, "png"

    const-string p3, "image/png"

    .line 113
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lfi/iki/elonen/NanoHTTPD;->MIME_TYPES:Ljava/util/Map;

    const-string p2, "xml"

    const-string p3, "application/xml"

    .line 114
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addResponseHeaders(Lfi/iki/elonen/NanoHTTPD$Response;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 2

    const/4 v0, 0x0

    .line 239
    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->setKeepAlive(Z)V

    .line 240
    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->setGzipEncoding(Z)V

    const-string v0, "Connection"

    const-string v1, "close"

    .line 241
    invoke-virtual {p0, v0, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Security-Policy"

    const-string v1, "default-src \'none\'; img-src \'self\'; style-src \'self\' \'unsafe-inline\';"

    .line 242
    invoke-virtual {p0, v0, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private canServeUri(Ljava/lang/String;Ljava/io/File;)Z
    .locals 1

    .line 119
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method private defaultRespond(Ljava/util/Map;Lfi/iki/elonen/NanoHTTPD$IHTTPSession;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lfi/iki/elonen/NanoHTTPD$IHTTPSession;",
            "Ljava/lang/String;",
            ")",
            "Lfi/iki/elonen/NanoHTTPD$Response;"
        }
    .end annotation

    .line 269
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x2f

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p3

    const/16 v0, 0x3f

    .line 270
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    .line 271
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    :cond_0
    const-string v0, "../"

    .line 275
    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Won\'t serve ../ for security reasons."

    .line 276
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->getForbiddenResponse(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x0

    move v1, v2

    :goto_0
    if-nez v2, :cond_2

    iget-object v3, p0, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->rootDirs:Ljava/util/List;

    .line 281
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->rootDirs:Ljava/util/List;

    .line 282
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 283
    invoke-direct {p0, p3, v0}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->canServeUri(Ljava/lang/String;Ljava/io/File;)Z

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    .line 286
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->getNotFoundResponse()Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    .line 291
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 292
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v2, "text/html"

    if-eqz v0, :cond_4

    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 293
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 294
    sget-object p2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->REDIRECT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<html><body>Redirected: <a href=\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\">"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</a></body></html>"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 295
    invoke-static {p2, v2, p3}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p2

    const-string p3, "Location"

    .line 297
    invoke-virtual {p2, p3, p1}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 301
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 304
    invoke-direct {p0, v1}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->findIndexFileInDirectory(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 306
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 308
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-virtual {p0, p3, v1}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->listDirectory(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v2, p2}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_5
    const-string p1, "No directory listing."

    .line 310
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->getForbiddenResponse(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    .line 313
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->respond(Ljava/util/Map;Lfi/iki/elonen/NanoHTTPD$IHTTPSession;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    .line 316
    :cond_7
    invoke-static {p3}, Lfi/iki/elonen/NanoHTTPD;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 317
    invoke-virtual {p0, p3, p1, v1, p2}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->serveFile(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    if-eqz p1, :cond_8

    goto :goto_1

    .line 318
    :cond_8
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->getNotFoundResponse()Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private enableHTTPS()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->context:Ljava/lang/ref/WeakReference;

    .line 495
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->get(Landroid/content/Context;)Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;

    move-result-object v0

    .line 497
    invoke-virtual {v0}, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v1

    .line 498
    invoke-virtual {v0}, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    .line 496
    invoke-static {v1, v0}, Lfi/iki/elonen/NanoHTTPD;->makeSSLSocketFactory(Ljava/security/KeyStore;[Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v0

    const/4 v1, 0x0

    .line 499
    invoke-virtual {p0, v0, v1}, Lfi/iki/elonen/NanoHTTPD;->makeSecure(Ljavax/net/ssl/SSLServerSocketFactory;[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore$InitException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 501
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private encodeUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 130
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "/ "

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, ""

    .line 131
    :catch_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    .line 133
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v2, " "

    .line 135
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%20"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 139
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private findIndexFileInDirectory(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    sget-object v0, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->INDEX_FILE_NAMES:[Ljava/lang/String;

    .line 148
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 149
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private handlePost(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 3

    .line 365
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "/request-swap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    .line 375
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->newFixedLengthResponse(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    .line 368
    :cond_0
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getParms()Ljava/util/Map;

    move-result-object v0

    const-string v1, "repo"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "text/plain"

    if-nez v0, :cond_1

    .line 369
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v0, "Requires \'repo\' parameter to be posted."

    invoke-static {p1, v2, v0}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->context:Ljava/lang/ref/WeakReference;

    .line 372
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getParms()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->requestSwap(Landroid/content/Context;Ljava/lang/String;)V

    .line 373
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v0, "Swap request received."

    invoke-static {p1, v2, v0}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$listDirectory$0(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .line 188
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$listDirectory$1(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .line 191
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    return p0
.end method

.method private newFixedFileResponse(Ljava/io/File;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 487
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int p1, v2

    int-to-long v2, p1

    invoke-static {v0, p2, v1, v2, v3}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    .line 488
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->addResponseHeaders(Lfi/iki/elonen/NanoHTTPD$Response;)Lfi/iki/elonen/NanoHTTPD$Response;

    const-string p2, "Accept-Ranges"

    const-string v0, "bytes"

    .line 489
    invoke-virtual {p1, p2, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 0

    .line 253
    invoke-static {p0, p1, p2, p3, p4}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p0

    invoke-static {p0}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->addResponseHeaders(Lfi/iki/elonen/NanoHTTPD$Response;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p0

    return-object p0
.end method

.method public static newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 0

    .line 257
    invoke-static {p0, p1, p2}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p0

    .line 258
    invoke-static {p0}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->addResponseHeaders(Lfi/iki/elonen/NanoHTTPD$Response;)Lfi/iki/elonen/NanoHTTPD$Response;

    const-string p1, "Accept-Ranges"

    const-string p2, "bytes"

    .line 259
    invoke-virtual {p0, p1, p2}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static newFixedLengthResponse(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 0

    .line 248
    invoke-static {p0}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p0

    invoke-static {p0}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->addResponseHeaders(Lfi/iki/elonen/NanoHTTPD$Response;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p0

    return-object p0
.end method

.method private respond(Ljava/util/Map;Lfi/iki/elonen/NanoHTTPD$IHTTPSession;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lfi/iki/elonen/NanoHTTPD$IHTTPSession;",
            "Ljava/lang/String;",
            ")",
            "Lfi/iki/elonen/NanoHTTPD$Response;"
        }
    .end annotation

    .line 264
    invoke-direct {p0, p1, p2, p3}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->defaultRespond(Ljava/util/Map;Lfi/iki/elonen/NanoHTTPD$IHTTPSession;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected getForbiddenResponse(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 3

    .line 158
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->FORBIDDEN:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FORBIDDEN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "text/plain"

    invoke-static {v0, v1, p1}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method protected getInternalErrorResponse(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 3

    .line 162
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INTERNAL ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "text/plain"

    invoke-static {v0, v1, p1}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method protected getNotFoundResponse()Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 3

    .line 167
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "text/plain"

    const-string v2, "Error 404, file not found."

    invoke-static {v0, v1, v2}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method

.method protected listDirectory(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 13

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<html><head><title>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</title><style><!--\nspan.dirname { font-weight: bold; }\nspan.filesize { font-size: 75%; }\n// -->\n</style></head><body><h1>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</h1>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 180
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x2f

    .line 181
    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-ltz v4, :cond_0

    .line 182
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v4, v0, :cond_0

    add-int/2addr v4, v2

    .line 183
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 187
    :goto_0
    new-instance v2, Lorg/fdroid/fdroid/nearby/LocalHTTPD$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/fdroid/fdroid/nearby/LocalHTTPD$$ExternalSyntheticLambda0;-><init>()V

    .line 188
    invoke-virtual {p2, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 189
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 190
    new-instance v3, Lorg/fdroid/fdroid/nearby/LocalHTTPD$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lorg/fdroid/fdroid/nearby/LocalHTTPD$$ExternalSyntheticLambda1;-><init>()V

    .line 191
    invoke-virtual {p2, v3}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 192
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-nez v0, :cond_1

    .line 193
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    if-lez v4, :cond_a

    :cond_1
    const-string v4, "<ul>"

    .line 194
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</section>"

    if-nez v0, :cond_2

    .line 195
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    :cond_2
    const-string v5, "<section class=\"directories\">"

    .line 196
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "<li><a rel=\"directory\" href=\""

    if-eqz v0, :cond_3

    .line 198
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"><span class=\"dirname\">..</span></a></li>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 202
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 203
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->encodeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\"><span class=\"dirname\">"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</span></a></li>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 206
    :cond_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    const-string v0, "<section class=\"files\">"

    .line 209
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "<li><a href=\""

    .line 211
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->encodeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"><span class=\"filename\">"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</span></a>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v2

    const-string v5, "&nbsp;<span class=\"filesize\">("

    .line 215
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x400

    cmp-long v7, v2, v5

    if-gez v7, :cond_6

    .line 217
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    const-wide/32 v7, 0x100000

    cmp-long v9, v2, v7

    const-wide/16 v10, 0x64

    const-string v12, "."

    if-gez v9, :cond_7

    .line 219
    div-long v7, v2, v5

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-long/2addr v2, v5

    const-wide/16 v5, 0xa

    div-long/2addr v2, v5

    rem-long/2addr v2, v10

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " KB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 221
    :cond_7
    div-long v5, v2, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-long/2addr v2, v7

    const-wide/16 v5, 0x2710

    div-long/2addr v2, v5

    rem-long/2addr v2, v10

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " MB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const-string v2, ")</span></li>"

    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 225
    :cond_8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string p1, "</ul>"

    .line 227
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const-string p1, "</body></html>"

    .line 229
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public serve(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 5

    const-string v0, "text/plain"

    .line 323
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object v1

    .line 324
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getParms()Ljava/util/Map;

    .line 325
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v2

    .line 342
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getMethod()Lfi/iki/elonen/NanoHTTPD$Method;

    move-result-object v3

    sget-object v4, Lfi/iki/elonen/NanoHTTPD$Method;->POST:Lfi/iki/elonen/NanoHTTPD$Method;

    if-ne v3, v4, :cond_0

    .line 344
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1, v1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->parseBody(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->handlePost(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 349
    invoke-virtual {p1}, Lfi/iki/elonen/NanoHTTPD$ResponseException;->getStatus()Lfi/iki/elonen/NanoHTTPD$Response$Status;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    .line 346
    :catch_1
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "Internal server error, check logcat on server for details."

    invoke-static {p1, v0, v1}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->rootDirs:Ljava/util/List;

    .line 355
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 357
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    .line 358
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "given path is not a directory ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->getInternalErrorResponse(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    .line 361
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0, p1, v2}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->respond(Ljava/util/Map;Lfi/iki/elonen/NanoHTTPD$IHTTPSession;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method serveFile(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Lfi/iki/elonen/NanoHTTPD$Response;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, ""

    .line 386
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "range"

    .line 392
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v11, -0x1

    if-eqz v6, :cond_0

    const-string v13, "bytes="

    .line 394
    invoke-virtual {v6, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x6

    .line 395
    invoke-virtual {v6, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const/16 v13, 0x2d

    .line 396
    invoke-virtual {v6, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    if-lez v13, :cond_0

    .line 399
    :try_start_1
    invoke-virtual {v6, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    add-int/2addr v13, v7

    .line 400
    :try_start_2
    invoke-virtual {v6, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    :catch_0
    :cond_0
    const-wide/16 v14, 0x0

    :catch_1
    :goto_0
    :try_start_3
    const-string v13, "if-range"

    .line 409
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_2

    .line 410
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    goto :goto_1

    :cond_1
    move v13, v8

    goto :goto_2

    :cond_2
    :goto_1
    move v13, v7

    :goto_2
    const-string v7, "if-none-match"

    .line 412
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v7, "*"

    .line 414
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v7, 0x1

    goto :goto_3

    :cond_4
    move v7, v8

    .line 418
    :goto_3
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->length()J

    move-result-wide v9
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    const-string v1, "Last-Modified"

    const-string v8, "Content-Range"

    const-string v0, "Content-Length"

    move-object/from16 p1, v1

    const-string v1, "ETag"

    if-eqz v13, :cond_8

    if-eqz v6, :cond_8

    const-wide/16 v16, 0x0

    cmp-long v18, v14, v16

    if-ltz v18, :cond_8

    cmp-long v18, v14, v9

    if-gez v18, :cond_8

    if-eqz v7, :cond_5

    .line 428
    :try_start_4
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_MODIFIED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-static {v0, v3, v4}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    .line 429
    invoke-virtual {v0, v1, v5}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    move-object v2, v0

    :goto_5
    move-object/from16 v0, p0

    goto/16 :goto_8

    :catch_2
    move-object/from16 v0, p0

    goto/16 :goto_7

    :cond_5
    const-wide/16 v6, 0x0

    cmp-long v13, v11, v6

    const-wide/16 v16, 0x1

    if-gez v13, :cond_6

    sub-long v11, v9, v16

    :cond_6
    sub-long v18, v11, v14

    add-long v18, v18, v16

    cmp-long v13, v18, v6

    if-gez v13, :cond_7

    goto :goto_6

    :cond_7
    move-wide/from16 v6, v18

    .line 439
    :goto_6
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 440
    invoke-virtual {v13, v14, v15}, Ljava/io/FileInputStream;->skip(J)J

    .line 442
    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->PARTIAL_CONTENT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-static {v2, v3, v13, v6, v7}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v2

    const-string v3, "Accept-Ranges"

    const-string v13, "bytes"

    .line 443
    invoke-virtual {v2, v3, v13}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v8, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-virtual {v2, v1, v5}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->RFC_1123:Ljava/text/DateFormat;

    .line 447
    new-instance v1, Ljava/util/Date;

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v11, p1

    invoke-virtual {v2, v11, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    move-object/from16 v11, p1

    if-eqz v13, :cond_9

    if-eqz v6, :cond_9

    cmp-long v2, v14, v9

    if-ltz v2, :cond_9

    .line 454
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->RANGE_NOT_SATISFIABLE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v2, "text/plain"

    invoke-static {v0, v2, v4}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    .line 455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes */"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-virtual {v0, v1, v5}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_9
    if-nez v6, :cond_a

    if-eqz v7, :cond_a

    .line 461
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_MODIFIED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-static {v0, v3, v4}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    .line 462
    invoke-virtual {v0, v1, v5}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_a
    if-nez v13, :cond_b

    if-eqz v7, :cond_b

    .line 468
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_MODIFIED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-static {v0, v3, v4}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    .line 469
    invoke-virtual {v0, v1, v5}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_4

    :cond_b
    move-object/from16 v2, p3

    move-object v6, v0

    move-object/from16 v0, p0

    .line 472
    :try_start_5
    invoke-direct {v0, v2, v3}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->newFixedFileResponse(Ljava/io/File;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v3

    .line 473
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-virtual {v3, v1, v5}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->RFC_1123:Ljava/text/DateFormat;

    .line 475
    new-instance v4, Ljava/util/Date;

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v11, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move-object v2, v3

    goto :goto_8

    :catch_3
    :goto_7
    const-string v1, "Reading file failed."

    .line 479
    invoke-virtual {v0, v1}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->getForbiddenResponse(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v2

    .line 482
    :goto_8
    invoke-static {v2}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;->addResponseHeaders(Lfi/iki/elonen/NanoHTTPD$Response;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v1

    return-object v1
.end method
