.class final Lio/ktor/client/HttpClientKt$HttpClient$2;
.super Lkotlin/jvm/internal/Lambda;
.source "HttpClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/HttpClientKt;->HttpClient(Lio/ktor/client/engine/HttpClientEngineFactory;Lkotlin/jvm/functions/Function1;)Lio/ktor/client/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $engine:Lio/ktor/client/engine/HttpClientEngine;


# direct methods
.method constructor <init>(Lio/ktor/client/engine/HttpClientEngine;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lio/ktor/client/HttpClientKt$HttpClient$2;->$engine:Lio/ktor/client/engine/HttpClientEngine;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lio/ktor/client/HttpClientKt$HttpClient$2;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lio/ktor/client/HttpClientKt$HttpClient$2;->$engine:Lio/ktor/client/engine/HttpClientEngine;

    .line 48
    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    return-void
.end method
