.class public Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;
.super Ljava/lang/Object;
.source "BitmapDrawableDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# instance fields
.field private final decoder:Lcom/bumptech/glide/load/ResourceDecoder;

.field private final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/ResourceDecoder;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Resources;

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;->resources:Landroid/content/res/Resources;

    .line 46
    invoke-static {p2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/ResourceDecoder;

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 58
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/ResourceDecoder;->decode(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p1

    iget-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;->resources:Landroid/content/res/Resources;

    .line 59
    invoke-static {p2, p1}, Lcom/bumptech/glide/load/resource/bitmap/LazyBitmapDrawableResource;->obtain(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method public handles(Ljava/lang/Object;Lcom/bumptech/glide/load/Options;)Z
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 51
    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/load/ResourceDecoder;->handles(Ljava/lang/Object;Lcom/bumptech/glide/load/Options;)Z

    move-result p1

    return p1
.end method
