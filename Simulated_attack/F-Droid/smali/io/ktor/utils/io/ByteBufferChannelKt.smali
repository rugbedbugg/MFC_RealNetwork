.class public abstract Lio/ktor/utils/io/ByteBufferChannelKt;
.super Ljava/lang/Object;
.source "ByteBufferChannel.kt"


# direct methods
.method public static final synthetic access$rethrowClosed(Ljava/lang/Throwable;)Ljava/lang/Void;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/ktor/utils/io/ByteBufferChannelKt;->rethrowClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method private static final rethrowClosed(Ljava/lang/Throwable;)Ljava/lang/Void;
    .locals 1

    .line 2404
    :try_start_0
    invoke-static {p0, p0}, Lio/ktor/utils/io/ExceptionUtilsJvmKt;->tryCopyException(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    move-object p0, v0

    .line 2409
    :goto_1
    throw p0
.end method
