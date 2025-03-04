.class public Lorg/fdroid/fdroid/net/GlideRequest;
.super Lcom/bumptech/glide/RequestBuilder;
.source "GlideRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/RequestBuilder;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Glide;",
            "Lcom/bumptech/glide/RequestManager;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/RequestBuilder;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/RequestBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/RequestBuilder;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/RequestBuilder;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/RequestBuilder;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public addListener(Lcom/bumptech/glide/request/RequestListener;)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/RequestListener;",
            ")",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 494
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/BaseRequestOptions;",
            ")",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 473
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic autoClone()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/fdroid/fdroid/net/GlideRequest;->autoClone()Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public autoClone()Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 466
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->autoClone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/fdroid/fdroid/net/GlideRequest;->centerCrop()Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public centerCrop()Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 313
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic centerInside()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/fdroid/fdroid/net/GlideRequest;->centerInside()Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public centerInside()Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 349
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerInside()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic circleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/fdroid/fdroid/net/GlideRequest;->circleCrop()Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public circleCrop()Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 367
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->circleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/RequestBuilder;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/fdroid/fdroid/net/GlideRequest;->clone()Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/fdroid/fdroid/net/GlideRequest;->clone()Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lorg/fdroid/fdroid/net/GlideRequest;->clone()Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 607
    invoke-super {p0}, Lcom/bumptech/glide/RequestBuilder;->clone()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->decode(Ljava/lang/Class;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/lang/Class;)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 232
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic disallowHardwareConfig()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/fdroid/fdroid/net/GlideRequest;->disallowHardwareConfig()Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public disallowHardwareConfig()Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 277
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->disallowHardwareConfig()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 106
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/fdroid/fdroid/net/GlideRequest;->dontAnimate()Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public dontAnimate()Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 450
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic dontTransform()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/fdroid/fdroid/net/GlideRequest;->dontTransform()Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public dontTransform()Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 441
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontTransform()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            ")",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 286
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap$CompressFormat;",
            ")",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 241
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic encodeQuality(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->encodeQuality(I)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public encodeQuality(I)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 250
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->encodeQuality(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic error(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->error(Lcom/bumptech/glide/RequestBuilder;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic error(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->error(Ljava/lang/Object;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic error(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->error(I)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->error(Landroid/graphics/drawable/Drawable;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public error(I)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 169
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 160
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public error(Lcom/bumptech/glide/RequestBuilder;)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/RequestBuilder;",
            ")",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 500
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->error(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public error(Ljava/lang/Object;)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 507
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->error(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic fallback(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->fallback(I)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->fallback(Landroid/graphics/drawable/Drawable;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public fallback(I)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 151
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->fallback(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public fallback(Landroid/graphics/drawable/Drawable;)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 142
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/fdroid/fdroid/net/GlideRequest;->fitCenter()Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public fitCenter()Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 331
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public format(Lcom/bumptech/glide/load/DecodeFormat;)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DecodeFormat;",
            ")",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 268
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic frame(J)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/net/GlideRequest;->frame(J)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public frame(J)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 259
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->frame(J)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method protected bridge synthetic getDownloadOnlyRequest()Lcom/bumptech/glide/RequestBuilder;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/fdroid/fdroid/net/GlideRequest;->getDownloadOnlyRequest()Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method protected getDownloadOnlyRequest()Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Lorg/fdroid/fdroid/net/GlideRequest;

    const-class v1, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Lorg/fdroid/fdroid/net/GlideRequest;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/RequestBuilder;)V

    sget-object v1, Lcom/bumptech/glide/RequestBuilder;->DOWNLOAD_ONLY_OPTIONS:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/fdroid/fdroid/net/GlideRequest;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->listener(Lcom/bumptech/glide/request/RequestListener;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public listener(Lcom/bumptech/glide/request/RequestListener;)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/RequestListener;",
            ")",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 487
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->load(Landroid/graphics/Bitmap;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->load(Landroid/graphics/drawable/Drawable;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->load(Landroid/net/Uri;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->load(Ljava/io/File;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->load(Ljava/lang/Integer;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->load(Ljava/lang/Object;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->load(Ljava/lang/String;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/net/URL;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->load(Ljava/net/URL;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load([B)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->load([B)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->load(Landroid/graphics/Bitmap;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->load(Landroid/graphics/drawable/Drawable;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->load(Landroid/net/Uri;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/io/File;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->load(Ljava/io/File;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->load(Ljava/lang/Integer;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->load(Ljava/lang/Object;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->load(Ljava/lang/String;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/net/URL;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->load(Ljava/net/URL;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load([B)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->load([B)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public load(Landroid/graphics/Bitmap;)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 552
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public load(Landroid/graphics/drawable/Drawable;)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 559
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public load(Landroid/net/Uri;)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 573
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public load(Ljava/io/File;)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 580
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public load(Ljava/lang/Integer;)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 587
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public load(Ljava/lang/Object;)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 545
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public load(Ljava/lang/String;)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 566
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public load(Ljava/net/URL;)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 594
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/net/URL;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public load([B)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 601
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic lock()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/fdroid/fdroid/net/GlideRequest;->lock()Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public lock()Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 458
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->lock()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->onlyRetrieveFromCache(Z)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public onlyRetrieveFromCache(Z)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 97
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic optionalCenterCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/fdroid/fdroid/net/GlideRequest;->optionalCenterCrop()Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public optionalCenterCrop()Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 304
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCenterCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic optionalCenterInside()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/fdroid/fdroid/net/GlideRequest;->optionalCenterInside()Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public optionalCenterInside()Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 340
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCenterInside()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic optionalCircleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/fdroid/fdroid/net/GlideRequest;->optionalCircleCrop()Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public optionalCircleCrop()Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 358
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCircleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic optionalFitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/fdroid/fdroid/net/GlideRequest;->optionalFitCenter()Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public optionalFitCenter()Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 322
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalFitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/net/GlideRequest;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation;",
            ")",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 412
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lcom/bumptech/glide/load/Transformation;",
            ")",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 422
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic override(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->override(I)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic override(II)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/net/GlideRequest;->override(II)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public override(I)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 205
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public override(II)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 196
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->placeholder(I)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->placeholder(Landroid/graphics/drawable/Drawable;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public placeholder(I)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 133
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 124
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->priority(Lcom/bumptech/glide/Priority;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public priority(Lcom/bumptech/glide/Priority;)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            ")",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 115
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/net/GlideRequest;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option;",
            "TY;)",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 223
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->signature(Lcom/bumptech/glide/load/Key;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public signature(Lcom/bumptech/glide/load/Key;)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 214
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic sizeMultiplier(F)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->sizeMultiplier(F)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public sizeMultiplier(F)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 70
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->sizeMultiplier(F)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->skipMemoryCache(Z)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public skipMemoryCache(Z)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 187
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->theme(Landroid/content/res/Resources$Theme;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public theme(Landroid/content/res/Resources$Theme;)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources$Theme;",
            ")",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 178
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic thumbnail(F)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->thumbnail(F)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thumbnail(Ljava/util/List;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->thumbnail(Ljava/util/List;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thumbnail([Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->thumbnail([Lcom/bumptech/glide/RequestBuilder;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public thumbnail(F)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 538
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(F)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/RequestBuilder;",
            ")",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 514
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public thumbnail(Ljava/util/List;)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/RequestBuilder;",
            ">;)",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 530
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(Ljava/util/List;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public final varargs thumbnail([Lcom/bumptech/glide/RequestBuilder;)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/RequestBuilder;",
            ")",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 523
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->thumbnail([Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic timeout(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->timeout(I)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public timeout(I)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 295
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->timeout(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->transform(Lcom/bumptech/glide/load/Transformation;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/net/GlideRequest;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->transform([Lcom/bumptech/glide/load/Transformation;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public transform(Lcom/bumptech/glide/load/Transformation;)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation;",
            ")",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 376
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lcom/bumptech/glide/load/Transformation;",
            ")",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 432
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public varargs transform([Lcom/bumptech/glide/load/Transformation;)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation;",
            ")",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 389
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->transforms([Lcom/bumptech/glide/load/Transformation;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public varargs transforms([Lcom/bumptech/glide/load/Transformation;)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation;",
            ")",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 403
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->transition(Lcom/bumptech/glide/TransitionOptions;)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public transition(Lcom/bumptech/glide/TransitionOptions;)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/TransitionOptions;",
            ")",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 480
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic useAnimationPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->useAnimationPool(Z)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public useAnimationPool(Z)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 88
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->useAnimationPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/net/GlideRequest;->useUnlimitedSourceGeneratorsPool(Z)Lorg/fdroid/fdroid/net/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public useUnlimitedSourceGeneratorsPool(Z)Lorg/fdroid/fdroid/net/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/fdroid/fdroid/net/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 79
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/net/GlideRequest;

    return-object p1
.end method
