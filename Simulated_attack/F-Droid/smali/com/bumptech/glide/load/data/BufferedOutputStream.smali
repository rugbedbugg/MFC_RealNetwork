.class public final Lcom/bumptech/glide/load/data/BufferedOutputStream;
.super Ljava/io/OutputStream;
.source "BufferedOutputStream.java"


# instance fields
.field private arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field private buffer:[B

.field private index:I

.field private final out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .locals 1

    const/high16 v0, 0x10000

    .line 20
    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/data/BufferedOutputStream;-><init>(Ljava/io/OutputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;I)V

    return-void
.end method

.method constructor <init>(Ljava/io/OutputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;I)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->out:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    const-class p1, [B

    .line 27
    invoke-interface {p2, p3, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->get(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->buffer:[B

    return-void
.end method

.method private flushBuffer()V
    .locals 4

    iget v0, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->index:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->buffer:[B

    const/4 v3, 0x0

    .line 74
    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->index:I

    :cond_0
    return-void
.end method

.method private maybeFlushBuffer()V
    .locals 2

    iget v0, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->index:I

    iget-object v1, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->buffer:[B

    .line 80
    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/bumptech/glide/load/data/BufferedOutputStream;->flushBuffer()V

    :cond_0
    return-void
.end method

.method private release()V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->buffer:[B

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 97
    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->buffer:[B

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 88
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/load/data/BufferedOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->out:Ljava/io/OutputStream;

    .line 90
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 92
    invoke-direct {p0}, Lcom/bumptech/glide/load/data/BufferedOutputStream;->release()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->out:Ljava/io/OutputStream;

    .line 90
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 91
    throw v0
.end method

.method public flush()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/bumptech/glide/load/data/BufferedOutputStream;->flushBuffer()V

    iget-object v0, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->out:Ljava/io/OutputStream;

    .line 69
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 3

    iget-object v0, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->buffer:[B

    iget v1, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->index:I

    int-to-byte p1, p1

    .line 32
    aput-byte p1, v0, v1

    .line 33
    invoke-direct {p0}, Lcom/bumptech/glide/load/data/BufferedOutputStream;->maybeFlushBuffer()V

    return-void
.end method

.method public write([B)V
    .locals 2

    .line 38
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/bumptech/glide/load/data/BufferedOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 5

    const/4 v0, 0x0

    :cond_0
    sub-int v1, p3, v0

    add-int v2, p2, v0

    iget v3, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->index:I

    if-nez v3, :cond_1

    iget-object v4, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->buffer:[B

    .line 49
    array-length v4, v4

    if-lt v1, v4, :cond_1

    iget-object p2, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->out:Ljava/io/OutputStream;

    .line 50
    invoke-virtual {p2, p1, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->buffer:[B

    .line 54
    array-length v4, v4

    sub-int/2addr v4, v3

    .line 55
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v3, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->buffer:[B

    iget v4, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->index:I

    .line 57
    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->index:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->index:I

    add-int/2addr v0, v1

    .line 62
    invoke-direct {p0}, Lcom/bumptech/glide/load/data/BufferedOutputStream;->maybeFlushBuffer()V

    if-lt v0, p3, :cond_0

    return-void
.end method
