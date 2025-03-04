.class public interface abstract Lorg/fdroid/index/v2/IndexV2StreamReceiver;
.super Ljava/lang/Object;
.source "IndexV2StreamReceiver.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0018\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H&J\u0018\u0010\u0004\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH&\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/fdroid/index/v2/IndexV2StreamReceiver;",
        "",
        "onStreamEnded",
        "",
        "receive",
        "packageName",
        "",
        "p",
        "Lorg/fdroid/index/v2/PackageV2;",
        "repo",
        "Lorg/fdroid/index/v2/RepoV2;",
        "version",
        "",
        "index_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract onStreamEnded()V
.end method

.method public abstract receive(Ljava/lang/String;Lorg/fdroid/index/v2/PackageV2;)V
.end method

.method public abstract receive(Lorg/fdroid/index/v2/RepoV2;J)V
.end method
