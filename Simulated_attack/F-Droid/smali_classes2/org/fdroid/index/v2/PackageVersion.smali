.class public interface abstract Lorg/fdroid/index/v2/PackageVersion;
.super Ljava/lang/Object;
.source "PackageV2.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0012\u0010\u0013\u001a\u00020\u0014X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lorg/fdroid/index/v2/PackageVersion;",
        "",
        "hasKnownVulnerability",
        "",
        "getHasKnownVulnerability",
        "()Z",
        "packageManifest",
        "Lorg/fdroid/index/v2/PackageManifest;",
        "getPackageManifest",
        "()Lorg/fdroid/index/v2/PackageManifest;",
        "releaseChannels",
        "",
        "",
        "getReleaseChannels",
        "()Ljava/util/List;",
        "signer",
        "Lorg/fdroid/index/v2/SignerV2;",
        "getSigner",
        "()Lorg/fdroid/index/v2/SignerV2;",
        "versionCode",
        "",
        "getVersionCode",
        "()J",
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
.method public abstract getHasKnownVulnerability()Z
.end method

.method public abstract getPackageManifest()Lorg/fdroid/index/v2/PackageManifest;
.end method

.method public abstract getReleaseChannels()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSigner()Lorg/fdroid/index/v2/SignerV2;
.end method

.method public abstract getVersionCode()J
.end method
