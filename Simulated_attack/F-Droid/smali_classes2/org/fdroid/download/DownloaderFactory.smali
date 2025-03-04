.class public abstract Lorg/fdroid/download/DownloaderFactory;
.super Ljava/lang/Object;
.source "DownloaderFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH&J@\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH$J&\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c\u00a8\u0006\u0012"
    }
    d2 = {
        "Lorg/fdroid/download/DownloaderFactory;",
        "",
        "()V",
        "create",
        "Lorg/fdroid/download/Downloader;",
        "repo",
        "Lorg/fdroid/database/Repository;",
        "uri",
        "Landroid/net/Uri;",
        "indexFile",
        "Lorg/fdroid/IndexFile;",
        "destFile",
        "Ljava/io/File;",
        "mirrors",
        "",
        "Lorg/fdroid/download/Mirror;",
        "tryFirst",
        "createWithTryFirstMirror",
        "database_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract create(Lorg/fdroid/database/Repository;Landroid/net/Uri;Lorg/fdroid/IndexFile;Ljava/io/File;)Lorg/fdroid/download/Downloader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract create(Lorg/fdroid/database/Repository;Ljava/util/List;Landroid/net/Uri;Lorg/fdroid/IndexFile;Ljava/io/File;Lorg/fdroid/download/Mirror;)Lorg/fdroid/download/Downloader;
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
.end method

.method public final createWithTryFirstMirror(Lorg/fdroid/database/Repository;Landroid/net/Uri;Lorg/fdroid/IndexFile;Ljava/io/File;)Lorg/fdroid/download/Downloader;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "repo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indexFile"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destFile"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getMirrors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/fdroid/download/Mirror;

    .line 28
    invoke-virtual {v2}, Lorg/fdroid/download/Mirror;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 27
    :goto_0
    move-object v8, v1

    check-cast v8, Lorg/fdroid/download/Mirror;

    if-nez v8, :cond_2

    const-string v0, "DownloaderFactory"

    const-string v1, "Try-first mirror not found, disabled by user?"

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_2
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getMirrors()Ljava/util/List;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 34
    invoke-virtual/range {v2 .. v8}, Lorg/fdroid/download/DownloaderFactory;->create(Lorg/fdroid/database/Repository;Ljava/util/List;Landroid/net/Uri;Lorg/fdroid/IndexFile;Ljava/io/File;Lorg/fdroid/download/Mirror;)Lorg/fdroid/download/Downloader;

    move-result-object p1

    return-object p1
.end method
