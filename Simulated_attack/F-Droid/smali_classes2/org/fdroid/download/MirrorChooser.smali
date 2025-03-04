.class public interface abstract Lorg/fdroid/download/MirrorChooser;
.super Ljava/lang/Object;
.source "MirrorChooser.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&JH\u0010\u000c\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010\u00072\u0006\u0010\u0003\u001a\u00020\u00022(\u0010\u000b\u001a$\u0008\u0001\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0008H\u00a6@\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lorg/fdroid/download/MirrorChooser;",
        "",
        "Lorg/fdroid/download/DownloadRequest;",
        "downloadRequest",
        "",
        "Lorg/fdroid/download/Mirror;",
        "orderMirrors",
        "T",
        "Lkotlin/Function3;",
        "Lio/ktor/http/Url;",
        "Lkotlin/coroutines/Continuation;",
        "request",
        "mirrorRequest",
        "(Lorg/fdroid/download/DownloadRequest;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "download_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# virtual methods
.method public abstract mirrorRequest(Lorg/fdroid/download/DownloadRequest;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/fdroid/download/DownloadRequest;",
            "Lkotlin/jvm/functions/Function3;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract orderMirrors(Lorg/fdroid/download/DownloadRequest;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/download/DownloadRequest;",
            ")",
            "Ljava/util/List<",
            "Lorg/fdroid/download/Mirror;",
            ">;"
        }
    .end annotation
.end method
