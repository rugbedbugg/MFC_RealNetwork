.class public final Lokhttp3/internal/connection/RouteException;
.super Ljava/lang/RuntimeException;
.source "RouteException.kt"


# instance fields
.field private final firstConnectException:Ljava/io/IOException;

.field private lastConnectException:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 1

    const-string v0, "firstConnectException"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, p0, Lokhttp3/internal/connection/RouteException;->firstConnectException:Ljava/io/IOException;

    iput-object p1, p0, Lokhttp3/internal/connection/RouteException;->lastConnectException:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public final addConnectException(Ljava/io/IOException;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/internal/connection/RouteException;->firstConnectException:Ljava/io/IOException;

    .line 30
    invoke-static {v0, p1}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lokhttp3/internal/connection/RouteException;->lastConnectException:Ljava/io/IOException;

    return-void
.end method

.method public final getFirstConnectException()Ljava/io/IOException;
    .locals 1

    .line 0
    iget-object v0, p0, Lokhttp3/internal/connection/RouteException;->firstConnectException:Ljava/io/IOException;

    return-object v0
.end method

.method public final getLastConnectException()Ljava/io/IOException;
    .locals 1

    .line 0
    iget-object v0, p0, Lokhttp3/internal/connection/RouteException;->lastConnectException:Ljava/io/IOException;

    return-object v0
.end method
