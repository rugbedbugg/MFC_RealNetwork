.class public interface abstract Lorg/fdroid/index/v2/IndexV2DiffStreamReceiver;
.super Ljava/lang/Object;
.source "IndexV2DiffStreamReceiver.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u001a\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H&J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0008H&J(\u0010\r\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0018\u00010\u000fH&\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/fdroid/index/v2/IndexV2DiffStreamReceiver;",
        "",
        "onStreamEnded",
        "",
        "receivePackageMetadataDiff",
        "packageName",
        "",
        "packageJsonObject",
        "Lkotlinx/serialization/json/JsonObject;",
        "receiveRepoDiff",
        "version",
        "",
        "repoJsonObject",
        "receiveVersionsDiff",
        "versionsDiffMap",
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

.method public abstract receivePackageMetadataDiff(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V
.end method

.method public abstract receiveRepoDiff(JLkotlinx/serialization/json/JsonObject;)V
.end method

.method public abstract receiveVersionsDiff(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlinx/serialization/json/JsonObject;",
            ">;)V"
        }
    .end annotation
.end method
