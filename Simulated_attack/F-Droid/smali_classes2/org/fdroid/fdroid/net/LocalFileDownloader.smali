.class public Lorg/fdroid/fdroid/net/LocalFileDownloader;
.super Lorg/fdroid/download/Downloader;
.source "LocalFileDownloader.java"


# instance fields
.field private inputStream:Ljava/io/InputStream;

.field private final sourceFile:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/net/Uri;Lorg/fdroid/IndexFile;Ljava/io/File;)V
    .locals 0

    .line 35
    invoke-direct {p0, p2, p3}, Lorg/fdroid/download/Downloader;-><init>(Lorg/fdroid/IndexFile;Ljava/io/File;)V

    .line 36
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/fdroid/fdroid/net/LocalFileDownloader;->sourceFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/net/LocalFileDownloader;->inputStream:Ljava/io/InputStream;

    .line 63
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-void
.end method

.method public download()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/fdroid/net/LocalFileDownloader;->sourceFile:Ljava/io/File;

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/fdroid/fdroid/net/LocalFileDownloader;->sourceFile:Ljava/io/File;

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-object v2, p0, Lorg/fdroid/download/Downloader;->outputFile:Ljava/io/File;

    .line 84
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/download/Downloader;->outputFile:Ljava/io/File;

    .line 86
    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/fdroid/download/Downloader;->outputFile:Ljava/io/File;

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 92
    :goto_1
    invoke-virtual {p0, v0}, Lorg/fdroid/download/Downloader;->downloadFromStream(Z)V

    return-void

    .line 79
    :cond_3
    new-instance v0, Ljava/net/ConnectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/fdroid/fdroid/net/LocalFileDownloader;->sourceFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not exist, try a mirror"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getInputStream(Z)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/fdroid/download/NotFoundException;
        }
    .end annotation

    .line 52
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lorg/fdroid/fdroid/net/LocalFileDownloader;->sourceFile:Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lorg/fdroid/fdroid/net/LocalFileDownloader;->inputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 57
    new-instance v0, Ljava/net/ProtocolException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
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

    iget-object v0, p0, Lorg/fdroid/fdroid/net/LocalFileDownloader;->sourceFile:Ljava/io/File;

    .line 73
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method
