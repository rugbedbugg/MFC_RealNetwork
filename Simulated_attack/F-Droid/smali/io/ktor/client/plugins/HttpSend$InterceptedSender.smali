.class final Lio/ktor/client/plugins/HttpSend$InterceptedSender;
.super Ljava/lang/Object;
.source "HttpSend.kt"

# interfaces
.implements Lio/ktor/client/plugins/Sender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/HttpSend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InterceptedSender"
.end annotation


# instance fields
.field private final interceptor:Lkotlin/jvm/functions/Function3;

.field private final nextSender:Lio/ktor/client/plugins/Sender;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function3;Lio/ktor/client/plugins/Sender;)V
    .locals 1

    const-string v0, "interceptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nextSender"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/client/plugins/HttpSend$InterceptedSender;->interceptor:Lkotlin/jvm/functions/Function3;

    iput-object p2, p0, Lio/ktor/client/plugins/HttpSend$InterceptedSender;->nextSender:Lio/ktor/client/plugins/Sender;

    return-void
.end method


# virtual methods
.method public execute(Lio/ktor/client/request/HttpRequestBuilder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lio/ktor/client/plugins/HttpSend$InterceptedSender;->interceptor:Lkotlin/jvm/functions/Function3;

    iget-object v1, p0, Lio/ktor/client/plugins/HttpSend$InterceptedSender;->nextSender:Lio/ktor/client/plugins/Sender;

    .line 116
    invoke-interface {v0, v1, p1, p2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
