.class public final Lorg/fdroid/download/glide/DownloadRequestLoader$Factory;
.super Ljava/lang/Object;
.source "DownloadRequestLoader.kt"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/download/glide/DownloadRequestLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001c\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/fdroid/download/glide/DownloadRequestLoader$Factory;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory;",
        "Lorg/fdroid/download/DownloadRequest;",
        "Ljava/io/InputStream;",
        "httpManager",
        "Lorg/fdroid/download/HttpManager;",
        "(Lorg/fdroid/download/HttpManager;)V",
        "build",
        "Lcom/bumptech/glide/load/model/ModelLoader;",
        "multiFactory",
        "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;",
        "teardown",
        "",
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

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/download/glide/DownloadRequestLoader$Factory;->httpManager:Lorg/fdroid/download/HttpManager;

    return-void
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader;"
        }
    .end annotation

    const-string v0, "multiFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance p1, Lorg/fdroid/download/glide/DownloadRequestLoader;

    iget-object v0, p0, Lorg/fdroid/download/glide/DownloadRequestLoader$Factory;->httpManager:Lorg/fdroid/download/HttpManager;

    invoke-direct {p1, v0}, Lorg/fdroid/download/glide/DownloadRequestLoader;-><init>(Lorg/fdroid/download/HttpManager;)V

    return-object p1
.end method

.method public teardown()V
    .locals 0

    .line 0
    return-void
.end method
