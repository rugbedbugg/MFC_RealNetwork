.class public final Lorg/fdroid/download/MirrorChooserRandom;
.super Lorg/fdroid/download/MirrorChooserImpl;
.source "MirrorChooser.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lorg/fdroid/download/MirrorChooserRandom;",
        "Lorg/fdroid/download/MirrorChooserImpl;",
        "()V",
        "orderMirrors",
        "",
        "Lorg/fdroid/download/Mirror;",
        "downloadRequest",
        "Lorg/fdroid/download/DownloadRequest;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Lorg/fdroid/download/MirrorChooserImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public orderMirrors(Lorg/fdroid/download/DownloadRequest;)Ljava/util/List;
    .locals 3
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

    const-string v0, "downloadRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Lorg/fdroid/download/DownloadRequest;->getMirrors()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 93
    invoke-virtual {p1}, Lorg/fdroid/download/DownloadRequest;->getTryFirstMirror()Lorg/fdroid/download/Mirror;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1002
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    new-instance v1, Lorg/fdroid/download/MirrorChooserRandom$orderMirrors$lambda$2$$inlined$sortBy$1;

    invoke-direct {v1, p1}, Lorg/fdroid/download/MirrorChooserRandom$orderMirrors$lambda$2$$inlined$sortBy$1;-><init>(Lorg/fdroid/download/DownloadRequest;)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-object v0
.end method
