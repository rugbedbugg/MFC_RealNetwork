.class public interface abstract Lorg/fdroid/index/v1/IndexV1StreamReceiver;
.super Ljava/lang/Object;
.source "IndexV1StreamReceiver.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008g\u0018\u00002\u00020\u0001J$\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00080\u0007H&J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH&J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH&J\u001a\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0005H&JD\u0010\u0011\u001a\u00020\u00032\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00130\u00072\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00150\u00072\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00170\u0007H&\u00a8\u0006\u0018"
    }
    d2 = {
        "Lorg/fdroid/index/v1/IndexV1StreamReceiver;",
        "",
        "receive",
        "",
        "packageName",
        "",
        "v",
        "",
        "Lorg/fdroid/index/v2/PackageVersionV2;",
        "m",
        "Lorg/fdroid/index/v2/MetadataV2;",
        "repo",
        "Lorg/fdroid/index/v2/RepoV2;",
        "version",
        "",
        "updateAppMetadata",
        "preferredSigner",
        "updateRepo",
        "antiFeatures",
        "Lorg/fdroid/index/v2/AntiFeatureV2;",
        "categories",
        "Lorg/fdroid/index/v2/CategoryV2;",
        "releaseChannels",
        "Lorg/fdroid/index/v2/ReleaseChannelV2;",
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
.method public abstract receive(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v2/PackageVersionV2;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract receive(Ljava/lang/String;Lorg/fdroid/index/v2/MetadataV2;)V
.end method

.method public abstract receive(Lorg/fdroid/index/v2/RepoV2;J)V
.end method

.method public abstract updateAppMetadata(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateRepo(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v2/AntiFeatureV2;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v2/CategoryV2;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v2/ReleaseChannelV2;",
            ">;)V"
        }
    .end annotation
.end method
