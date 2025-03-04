.class public Lorg/fdroid/fdroid/net/DownloaderFactory;
.super Lorg/fdroid/download/DownloaderFactory;
.source "DownloaderFactory.java"


# static fields
.field public static final HTTP_MANAGER:Lorg/fdroid/download/HttpManager;

.field public static final INSTANCE:Lorg/fdroid/fdroid/net/DownloaderFactory;

.field private static final TAG:Ljava/lang/String; = "DownloaderFactory"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 35
    new-instance v0, Lorg/fdroid/fdroid/net/DownloaderFactory;

    invoke-direct {v0}, Lorg/fdroid/fdroid/net/DownloaderFactory;-><init>()V

    sput-object v0, Lorg/fdroid/fdroid/net/DownloaderFactory;->INSTANCE:Lorg/fdroid/fdroid/net/DownloaderFactory;

    .line 36
    new-instance v0, Lorg/fdroid/download/HttpManager;

    .line 37
    invoke-static {}, Lorg/fdroid/fdroid/Utils;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/fdroid/fdroid/FDroidApp;->queryString:Ljava/lang/String;

    invoke-static {}, Linfo/guardianproject/netcipher/NetCipher;->getProxy()Ljava/net/Proxy;

    move-result-object v3

    new-instance v4, Lorg/fdroid/fdroid/net/DnsWithCache;

    invoke-direct {v4}, Lorg/fdroid/fdroid/net/DnsWithCache;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fdroid/download/HttpManager;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy;Lokhttp3/Dns;)V

    sput-object v0, Lorg/fdroid/fdroid/net/DownloaderFactory;->HTTP_MANAGER:Lorg/fdroid/download/HttpManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/fdroid/download/DownloaderFactory;-><init>()V

    return-void
.end method

.method private static loadIpfsGateways(Lorg/fdroid/fdroid/Preferences;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/fdroid/Preferences;",
            ")",
            "Ljava/util/List<",
            "Lorg/fdroid/download/Mirror;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    invoke-virtual {p0}, Lorg/fdroid/fdroid/Preferences;->getActiveIpfsGateways()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 96
    new-instance v2, Lorg/fdroid/download/Mirror;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v4}, Lorg/fdroid/download/Mirror;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public create(Lorg/fdroid/database/Repository;Landroid/net/Uri;Lorg/fdroid/IndexFile;Ljava/io/File;)Lorg/fdroid/download/Downloader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getMirrors()Ljava/util/List;

    move-result-object v2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 44
    invoke-virtual/range {v0 .. v6}, Lorg/fdroid/fdroid/net/DownloaderFactory;->create(Lorg/fdroid/database/Repository;Ljava/util/List;Landroid/net/Uri;Lorg/fdroid/IndexFile;Ljava/io/File;Lorg/fdroid/download/Mirror;)Lorg/fdroid/download/Downloader;

    move-result-object p1

    return-object p1
.end method

.method protected create(Lorg/fdroid/database/Repository;Ljava/util/List;Landroid/net/Uri;Lorg/fdroid/IndexFile;Ljava/io/File;Lorg/fdroid/download/Mirror;)Lorg/fdroid/download/Downloader;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/database/Repository;",
            "Ljava/util/List<",
            "Lorg/fdroid/download/Mirror;",
            ">;",
            "Landroid/net/Uri;",
            "Lorg/fdroid/IndexFile;",
            "Ljava/io/File;",
            "Lorg/fdroid/download/Mirror;",
            ")",
            "Lorg/fdroid/download/Downloader;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bluetooth"

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    new-instance p1, Lorg/fdroid/fdroid/net/BluetoothDownloader;

    invoke-direct {p1, p3, p4, p5}, Lorg/fdroid/fdroid/net/BluetoothDownloader;-><init>(Landroid/net/Uri;Lorg/fdroid/IndexFile;Ljava/io/File;)V

    goto/16 :goto_4

    :cond_0
    const-string v1, "content"

    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    new-instance p1, Lorg/fdroid/fdroid/net/TreeUriDownloader;

    invoke-direct {p1, p3, p4, p5}, Lorg/fdroid/fdroid/net/TreeUriDownloader;-><init>(Landroid/net/Uri;Lorg/fdroid/IndexFile;Ljava/io/File;)V

    goto/16 :goto_4

    :cond_1
    const-string v1, "file"

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    new-instance p1, Lorg/fdroid/fdroid/net/LocalFileDownloader;

    invoke-direct {p1, p3, p4, p5}, Lorg/fdroid/fdroid/net/LocalFileDownloader;-><init>(Landroid/net/Uri;Lorg/fdroid/IndexFile;Ljava/io/File;)V

    goto/16 :goto_4

    .line 63
    :cond_2
    invoke-static {p1}, Lorg/fdroid/fdroid/Utils;->getRepoAddress(Lorg/fdroid/database/Repository;)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, ""

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Using suffix "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " with mirrors "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "DownloaderFactory"

    invoke-static {v0, p3}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Linfo/guardianproject/netcipher/NetCipher;->getProxy()Ljava/net/Proxy;

    move-result-object p3

    .line 67
    new-instance v0, Lorg/fdroid/download/DownloadRequest;

    .line 68
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getPassword()Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/fdroid/download/DownloadRequest;-><init>(Lorg/fdroid/IndexFile;Ljava/util/List;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/download/Mirror;)V

    .line 69
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object p4

    .line 70
    invoke-virtual {p4}, Lorg/fdroid/fdroid/Preferences;->isForceOldIndexEnabled()Z

    move-result v1

    .line 71
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getFormatVersion()Lorg/fdroid/index/IndexFormatVersion;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 72
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getFormatVersion()Lorg/fdroid/index/IndexFormatVersion;

    move-result-object v2

    sget-object v3, Lorg/fdroid/index/IndexFormatVersion;->ONE:Lorg/fdroid/index/IndexFormatVersion;

    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v1, :cond_8

    if-eqz v2, :cond_5

    goto :goto_3

    .line 78
    :cond_5
    invoke-virtual {v0}, Lorg/fdroid/download/DownloadRequest;->getIndexFile()Lorg/fdroid/IndexFile;

    move-result-object v1

    invoke-interface {v1}, Lorg/fdroid/IndexFile;->getIpfsCidV1()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p4}, Lorg/fdroid/fdroid/Preferences;->isIpfsEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_2

    .line 82
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 83
    invoke-static {p4}, Lorg/fdroid/fdroid/net/DownloaderFactory;->loadIpfsGateways(Lorg/fdroid/fdroid/Preferences;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 84
    new-instance p2, Lorg/fdroid/download/DownloadRequest;

    invoke-virtual {v0}, Lorg/fdroid/download/DownloadRequest;->getIndexFile()Lorg/fdroid/IndexFile;

    move-result-object v2

    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getUsername()Ljava/lang/String;

    move-result-object v5

    .line 85
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getPassword()Ljava/lang/String;

    move-result-object v6

    move-object v1, p2

    move-object v4, p3

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/fdroid/download/DownloadRequest;-><init>(Lorg/fdroid/IndexFile;Ljava/util/List;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/download/Mirror;)V

    move-object v0, p2

    .line 87
    :cond_7
    :goto_2
    new-instance p1, Lorg/fdroid/download/HttpDownloaderV2;

    sget-object p2, Lorg/fdroid/fdroid/net/DownloaderFactory;->HTTP_MANAGER:Lorg/fdroid/download/HttpManager;

    invoke-direct {p1, p2, v0, p5}, Lorg/fdroid/download/HttpDownloaderV2;-><init>(Lorg/fdroid/download/HttpManager;Lorg/fdroid/download/DownloadRequest;Ljava/io/File;)V

    goto :goto_4

    .line 75
    :cond_8
    :goto_3
    new-instance p1, Lorg/fdroid/download/HttpDownloader;

    sget-object p2, Lorg/fdroid/fdroid/net/DownloaderFactory;->HTTP_MANAGER:Lorg/fdroid/download/HttpManager;

    invoke-direct {p1, p2, v0, p5}, Lorg/fdroid/download/HttpDownloader;-><init>(Lorg/fdroid/download/HttpManager;Lorg/fdroid/download/DownloadRequest;Ljava/io/File;)V

    :goto_4
    return-object p1
.end method
