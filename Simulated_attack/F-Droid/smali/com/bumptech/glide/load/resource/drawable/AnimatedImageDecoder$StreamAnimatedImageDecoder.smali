.class final Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$StreamAnimatedImageDecoder;
.super Ljava/lang/Object;
.source "AnimatedImageDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StreamAnimatedImageDecoder"
.end annotation


# instance fields
.field private final delegate:Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$StreamAnimatedImageDecoder;->delegate:Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;

    return-void
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 1

    .line 137
    invoke-static {p1}, Lcom/bumptech/glide/util/ByteBufferUtil;->fromStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/load/resource/bitmap/ByteBufferBitmapImageDecoderResourceDecoder$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$StreamAnimatedImageDecoder;->delegate:Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;

    .line 138
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;->decode(Landroid/graphics/ImageDecoder$Source;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic decode(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 0

    .line 118
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$StreamAnimatedImageDecoder;->decode(Ljava/io/InputStream;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method public handles(Ljava/io/InputStream;Lcom/bumptech/glide/load/Options;)Z
    .locals 0

    iget-object p2, p0, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$StreamAnimatedImageDecoder;->delegate:Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;

    .line 130
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;->handles(Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;Lcom/bumptech/glide/load/Options;)Z
    .locals 0

    .line 118
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$StreamAnimatedImageDecoder;->handles(Ljava/io/InputStream;Lcom/bumptech/glide/load/Options;)Z

    move-result p1

    return p1
.end method
