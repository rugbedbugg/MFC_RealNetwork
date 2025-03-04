.class public final Lio/ktor/client/network/sockets/SocketTimeoutException;
.super Ljava/net/SocketTimeoutException;
.source "TimeoutExceptions.kt"


# instance fields
.field private final cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lio/ktor/client/network/sockets/SocketTimeoutException;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/network/sockets/SocketTimeoutException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
