.class public final Lorg/fdroid/download/glide/DownloadRequestLoaderKt;
.super Ljava/lang/Object;
.source "DownloadRequestLoader.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "getKey",
        "Lcom/bumptech/glide/signature/ObjectKey;",
        "Lorg/fdroid/download/DownloadRequest;",
        "download_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getKey(Lorg/fdroid/download/DownloadRequest;)Lcom/bumptech/glide/signature/ObjectKey;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/bumptech/glide/signature/ObjectKey;

    invoke-virtual {p0}, Lorg/fdroid/download/DownloadRequest;->getIndexFile()Lorg/fdroid/IndexFile;

    move-result-object v1

    invoke-interface {v1}, Lorg/fdroid/IndexFile;->getSha256()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/fdroid/download/DownloadRequest;->getMirrors()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/download/Mirror;

    invoke-virtual {v1}, Lorg/fdroid/download/Mirror;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fdroid/download/DownloadRequest;->getIndexFile()Lorg/fdroid/IndexFile;

    move-result-object p0

    invoke-interface {p0}, Lorg/fdroid/IndexFile;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-direct {v0, v1}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
