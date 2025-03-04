.class public Lorg/fdroid/fdroid/net/TreeUriDownloader;
.super Lorg/fdroid/download/Downloader;
.source "TreeUriDownloader.java"


# static fields
.field public static final ESCAPED_SLASH:Ljava/lang/String; = "%2F"

.field public static final TAG:Ljava/lang/String; = "TreeUriDownloader"


# instance fields
.field private final context:Landroid/content/Context;

.field private final documentFile:Landroidx/documentfile/provider/DocumentFile;

.field private final treeUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;Lorg/fdroid/IndexFile;Ljava/io/File;)V
    .locals 2

    .line 51
    invoke-direct {p0, p2, p3}, Lorg/fdroid/download/Downloader;-><init>(Lorg/fdroid/IndexFile;Ljava/io/File;)V

    .line 52
    invoke-static {}, Lorg/fdroid/fdroid/FDroidApp;->getInstance()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lorg/fdroid/fdroid/net/TreeUriDownloader;->context:Landroid/content/Context;

    .line 53
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object p3

    const-string v0, "%2F"

    .line 54
    invoke-virtual {p3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    .line 55
    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/net/TreeUriDownloader;->treeUri:Landroid/net/Uri;

    .line 58
    invoke-static {p2, p1}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/net/TreeUriDownloader;->documentFile:Landroidx/documentfile/provider/DocumentFile;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 0
    return-void
.end method

.method public download()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0, v0}, Lorg/fdroid/download/Downloader;->downloadFromStream(Z)V

    return-void
.end method

.method protected getInputStream(Z)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/fdroid/download/NotFoundException;
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lorg/fdroid/fdroid/net/TreeUriDownloader;->context:Landroid/content/Context;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lorg/fdroid/fdroid/net/TreeUriDownloader;->treeUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 83
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_0

    .line 81
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "InputStream was null"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileNotFoundException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    new-instance p1, Lorg/fdroid/download/NotFoundException;

    invoke-direct {p1}, Lorg/fdroid/download/NotFoundException;-><init>()V

    throw p1

    .line 92
    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :catch_1
    new-instance p1, Lorg/fdroid/download/NotFoundException;

    invoke-direct {p1}, Lorg/fdroid/download/NotFoundException;-><init>()V

    throw p1
.end method

.method public hasChanged()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method protected totalDownloadSize()J
    .locals 2

    .line 103
    invoke-virtual {p0}, Lorg/fdroid/download/Downloader;->getIndexFile()Lorg/fdroid/IndexFile;

    move-result-object v0

    invoke-interface {v0}, Lorg/fdroid/IndexFile;->getSize()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/fdroid/download/Downloader;->getIndexFile()Lorg/fdroid/IndexFile;

    move-result-object v0

    invoke-interface {v0}, Lorg/fdroid/IndexFile;->getSize()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/net/TreeUriDownloader;->documentFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->length()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method
