.class public Lorg/fdroid/fdroid/nearby/httpish/Response$Builder;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/nearby/httpish/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private contentStream:Ljava/io/InputStream;

.field private etag:Ljava/lang/String;

.field private fileSize:I

.field private statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lorg/fdroid/fdroid/nearby/httpish/Response$Builder;->statusCode:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/fdroid/fdroid/nearby/httpish/Response$Builder;->fileSize:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lorg/fdroid/fdroid/nearby/httpish/Response$Builder;->statusCode:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/fdroid/fdroid/nearby/httpish/Response$Builder;->fileSize:I

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/httpish/Response$Builder;->contentStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public build()Lorg/fdroid/fdroid/nearby/httpish/Response;
    .locals 4

    .line 153
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget v1, p0, Lorg/fdroid/fdroid/nearby/httpish/Response$Builder;->fileSize:I

    if-lez v1, :cond_0

    const-string v2, "Content-Length"

    .line 156
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/httpish/Response$Builder;->etag:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "ETag"

    .line 160
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_1
    new-instance v1, Lorg/fdroid/fdroid/nearby/httpish/Response;

    iget v2, p0, Lorg/fdroid/fdroid/nearby/httpish/Response$Builder;->statusCode:I

    iget-object v3, p0, Lorg/fdroid/fdroid/nearby/httpish/Response$Builder;->contentStream:Ljava/io/InputStream;

    invoke-direct {v1, v2, v0, v3}, Lorg/fdroid/fdroid/nearby/httpish/Response;-><init>(ILjava/util/Map;Ljava/io/InputStream;)V

    return-object v1
.end method

.method public setETag(Ljava/lang/String;)Lorg/fdroid/fdroid/nearby/httpish/Response$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/httpish/Response$Builder;->etag:Ljava/lang/String;

    return-object p0
.end method

.method public setFileSize(I)Lorg/fdroid/fdroid/nearby/httpish/Response$Builder;
    .locals 0

    .line 0
    iput p1, p0, Lorg/fdroid/fdroid/nearby/httpish/Response$Builder;->fileSize:I

    return-object p0
.end method

.method public setStatusCode(I)Lorg/fdroid/fdroid/nearby/httpish/Response$Builder;
    .locals 0

    .line 0
    iput p1, p0, Lorg/fdroid/fdroid/nearby/httpish/Response$Builder;->statusCode:I

    return-object p0
.end method
