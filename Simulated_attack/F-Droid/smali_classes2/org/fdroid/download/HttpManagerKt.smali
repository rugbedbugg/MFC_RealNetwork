.class public final Lorg/fdroid/download/HttpManagerKt;
.super Ljava/lang/Object;
.source "HttpManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0016\u0010\u0000\u001a\u0006\u0012\u0002\u0008\u00030\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0000\u001a\u001a\u0010\u0004\u001a\u00020\u0005*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0086@\u00a2\u0006\u0002\u0010\t\u001a\u001a\u0010\n\u001a\u00020\u000b*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0086@\u00a2\u0006\u0002\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "getHttpClientEngineFactory",
        "Lio/ktor/client/engine/HttpClientEngineFactory;",
        "customDns",
        "Lokhttp3/Dns;",
        "getDigestInputStream",
        "Lorg/fdroid/fdroid/DigestInputStream;",
        "Lorg/fdroid/download/HttpManager;",
        "request",
        "Lorg/fdroid/download/DownloadRequest;",
        "(Lorg/fdroid/download/HttpManager;Lorg/fdroid/download/DownloadRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getInputStream",
        "Ljava/io/InputStream;",
        "download_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getDigestInputStream(Lorg/fdroid/download/HttpManager;Lorg/fdroid/download/DownloadRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/download/HttpManager;",
            "Lorg/fdroid/download/DownloadRequest;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lorg/fdroid/download/HttpManagerKt$getDigestInputStream$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/fdroid/download/HttpManagerKt$getDigestInputStream$1;

    iget v1, v0, Lorg/fdroid/download/HttpManagerKt$getDigestInputStream$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/fdroid/download/HttpManagerKt$getDigestInputStream$1;->label:I

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/fdroid/download/HttpManagerKt$getDigestInputStream$1;

    invoke-direct {v0, p2}, Lorg/fdroid/download/HttpManagerKt$getDigestInputStream$1;-><init>(Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object p2, v4, Lorg/fdroid/download/HttpManagerKt$getDigestInputStream$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 54
    iget v1, v4, Lorg/fdroid/download/HttpManagerKt$getDigestInputStream$1;->label:I

    const/4 v7, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v7, :cond_1

    iget-object p0, v4, Lorg/fdroid/download/HttpManagerKt$getDigestInputStream$1;->L$0:Ljava/lang/Object;

    check-cast p0, Ljava/security/MessageDigest;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const-string p2, "SHA-256"

    .line 55
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 56
    iput-object p2, v4, Lorg/fdroid/download/HttpManagerKt$getDigestInputStream$1;->L$0:Ljava/lang/Object;

    iput v7, v4, Lorg/fdroid/download/HttpManagerKt$getDigestInputStream$1;->label:I

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lorg/fdroid/download/HttpManager;->getChannel$download_release$default(Lorg/fdroid/download/HttpManager;Lorg/fdroid/download/DownloadRequest;Ljava/lang/Long;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    move-object v8, p2

    move-object p2, p0

    move-object p0, v8

    :goto_2
    check-cast p2, Lio/ktor/utils/io/ByteReadChannel;

    const/4 p1, 0x0

    invoke-static {p2, p1, v7, p1}, Lio/ktor/utils/io/jvm/javaio/BlockingKt;->toInputStream$default(Lio/ktor/utils/io/ByteReadChannel;Lkotlinx/coroutines/Job;ILjava/lang/Object;)Ljava/io/InputStream;

    move-result-object p1

    .line 57
    new-instance p2, Lorg/fdroid/fdroid/DigestInputStream;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p2, p1, p0}, Lorg/fdroid/fdroid/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    return-object p2
.end method

.method public static final getHttpClientEngineFactory(Lokhttp3/Dns;)Lio/ktor/client/engine/HttpClientEngineFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Dns;",
            ")",
            "Lio/ktor/client/engine/HttpClientEngineFactory;"
        }
    .end annotation

    .line 19
    new-instance v0, Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1;

    invoke-direct {v0, p0}, Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1;-><init>(Lokhttp3/Dns;)V

    return-object v0
.end method

.method public static final getInputStream(Lorg/fdroid/download/HttpManager;Lorg/fdroid/download/DownloadRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/download/HttpManager;",
            "Lorg/fdroid/download/DownloadRequest;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lorg/fdroid/download/HttpManagerKt$getInputStream$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/fdroid/download/HttpManagerKt$getInputStream$1;

    iget v1, v0, Lorg/fdroid/download/HttpManagerKt$getInputStream$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/fdroid/download/HttpManagerKt$getInputStream$1;->label:I

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/fdroid/download/HttpManagerKt$getInputStream$1;

    invoke-direct {v0, p2}, Lorg/fdroid/download/HttpManagerKt$getInputStream$1;-><init>(Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object p2, v4, Lorg/fdroid/download/HttpManagerKt$getInputStream$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 45
    iget v1, v4, Lorg/fdroid/download/HttpManagerKt$getInputStream$1;->label:I

    const/4 v7, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v7, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 46
    iput v7, v4, Lorg/fdroid/download/HttpManagerKt$getInputStream$1;->label:I

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lorg/fdroid/download/HttpManager;->getChannel$download_release$default(Lorg/fdroid/download/HttpManager;Lorg/fdroid/download/DownloadRequest;Ljava/lang/Long;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_3

    return-object v0

    :cond_3
    :goto_2
    check-cast p2, Lio/ktor/utils/io/ByteReadChannel;

    const/4 p0, 0x0

    invoke-static {p2, p0, v7, p0}, Lio/ktor/utils/io/jvm/javaio/BlockingKt;->toInputStream$default(Lio/ktor/utils/io/ByteReadChannel;Lkotlinx/coroutines/Job;ILjava/lang/Object;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method
