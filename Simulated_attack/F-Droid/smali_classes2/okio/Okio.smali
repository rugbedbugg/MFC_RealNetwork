.class public abstract Lokio/Okio;
.super Ljava/lang/Object;


# direct methods
.method public static final buffer(Lokio/Sink;)Lokio/BufferedSink;
    .locals 0

    .line 1
    invoke-static {p0}, Lokio/Okio__OkioKt;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p0

    return-object p0
.end method

.method public static final buffer(Lokio/Source;)Lokio/BufferedSource;
    .locals 0

    .line 1
    invoke-static {p0}, Lokio/Okio__OkioKt;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p0

    return-object p0
.end method

.method public static final isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lokio/Okio__JvmOkioKt;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result p0

    return p0
.end method

.method public static final sink(Ljava/net/Socket;)Lokio/Sink;
    .locals 0

    .line 1
    invoke-static {p0}, Lokio/Okio__JvmOkioKt;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object p0

    return-object p0
.end method

.method public static final source(Ljava/io/InputStream;)Lokio/Source;
    .locals 0

    .line 1
    invoke-static {p0}, Lokio/Okio__JvmOkioKt;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object p0

    return-object p0
.end method

.method public static final source(Ljava/net/Socket;)Lokio/Source;
    .locals 0

    .line 1
    invoke-static {p0}, Lokio/Okio__JvmOkioKt;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object p0

    return-object p0
.end method
