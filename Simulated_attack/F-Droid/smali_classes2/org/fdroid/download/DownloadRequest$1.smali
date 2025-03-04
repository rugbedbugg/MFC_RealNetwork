.class public final Lorg/fdroid/download/DownloadRequest$1;
.super Ljava/lang/Object;
.source "DownloadRequest.kt"

# interfaces
.implements Lorg/fdroid/IndexFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/download/DownloadRequest;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/download/Mirror;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u000e\u001a\u00020\u0003H\u0016R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0005R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0005R\u0014\u0010\n\u001a\u00020\u000bX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "org/fdroid/download/DownloadRequest$1",
        "Lorg/fdroid/IndexFile;",
        "ipfsCidV1",
        "",
        "getIpfsCidV1",
        "()Ljava/lang/String;",
        "name",
        "getName",
        "sha256",
        "getSha256",
        "size",
        "",
        "getSize",
        "()Ljava/lang/Long;",
        "serialize",
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
.field private final ipfsCidV1:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final sha256:Ljava/lang/String;

.field private final size:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/download/DownloadRequest$1;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIpfsCidV1()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/download/DownloadRequest$1;->ipfsCidV1:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/download/DownloadRequest$1;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSha256()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/download/DownloadRequest$1;->sha256:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/Long;
    .locals 2

    iget-wide v0, p0, Lorg/fdroid/download/DownloadRequest$1;->size:J

    .line 34
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public serialize()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Lkotlin/NotImplementedError;

    const-string v1, "Serialization is not implemented."

    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
