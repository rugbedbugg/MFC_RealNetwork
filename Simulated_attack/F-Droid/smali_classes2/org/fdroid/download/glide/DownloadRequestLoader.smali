.class public final Lorg/fdroid/download/glide/DownloadRequestLoader;
.super Ljava/lang/Object;
.source "DownloadRequestLoader.kt"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/download/glide/DownloadRequestLoader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0011B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J.\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00082\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0002H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lorg/fdroid/download/glide/DownloadRequestLoader;",
        "Lcom/bumptech/glide/load/model/ModelLoader;",
        "Lorg/fdroid/download/DownloadRequest;",
        "Ljava/io/InputStream;",
        "httpManager",
        "Lorg/fdroid/download/HttpManager;",
        "(Lorg/fdroid/download/HttpManager;)V",
        "buildLoadData",
        "Lcom/bumptech/glide/load/model/ModelLoader$LoadData;",
        "downloadRequest",
        "width",
        "",
        "height",
        "options",
        "Lcom/bumptech/glide/load/Options;",
        "handles",
        "",
        "Factory",
        "download_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final httpManager:Lorg/fdroid/download/HttpManager;


# direct methods
.method public constructor <init>(Lorg/fdroid/download/HttpManager;)V
    .locals 1

    const-string v0, "httpManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/download/glide/DownloadRequestLoader;->httpManager:Lorg/fdroid/download/HttpManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 0

    .line 13
    check-cast p1, Lorg/fdroid/download/DownloadRequest;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/fdroid/download/glide/DownloadRequestLoader;->buildLoadData(Lorg/fdroid/download/DownloadRequest;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    move-result-object p1

    return-object p1
.end method

.method public buildLoadData(Lorg/fdroid/download/DownloadRequest;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/download/DownloadRequest;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData;"
        }
    .end annotation

    const-string p2, "downloadRequest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "options"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance p2, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    invoke-static {p1}, Lorg/fdroid/download/glide/DownloadRequestLoaderKt;->getKey(Lorg/fdroid/download/DownloadRequest;)Lcom/bumptech/glide/signature/ObjectKey;

    move-result-object p3

    new-instance p4, Lorg/fdroid/download/glide/HttpFetcher;

    iget-object v0, p0, Lorg/fdroid/download/glide/DownloadRequestLoader;->httpManager:Lorg/fdroid/download/HttpManager;

    invoke-direct {p4, v0, p1}, Lorg/fdroid/download/glide/HttpFetcher;-><init>(Lorg/fdroid/download/HttpManager;Lorg/fdroid/download/DownloadRequest;)V

    invoke-direct {p2, p3, p4}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    return-object p2
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    .line 13
    check-cast p1, Lorg/fdroid/download/DownloadRequest;

    invoke-virtual {p0, p1}, Lorg/fdroid/download/glide/DownloadRequestLoader;->handles(Lorg/fdroid/download/DownloadRequest;)Z

    move-result p1

    return p1
.end method

.method public handles(Lorg/fdroid/download/DownloadRequest;)Z
    .locals 1

    .line 0
    const-string v0, "downloadRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
