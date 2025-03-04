.class final Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "HttpRedirect.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/HttpRedirect$Plugin;->handleCall(Lio/ktor/client/plugins/Sender;Lio/ktor/client/request/HttpRequestBuilder;Lio/ktor/client/call/HttpClientCall;ZLio/ktor/client/HttpClient;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lio/ktor/client/plugins/HttpRedirect$Plugin;


# direct methods
.method constructor <init>(Lio/ktor/client/plugins/HttpRedirect$Plugin;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->this$0:Lio/ktor/client/plugins/HttpRedirect$Plugin;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 0
    iput-object p1, p0, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->label:I

    iget-object v0, p0, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->this$0:Lio/ktor/client/plugins/HttpRedirect$Plugin;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lio/ktor/client/plugins/HttpRedirect$Plugin;->access$handleCall(Lio/ktor/client/plugins/HttpRedirect$Plugin;Lio/ktor/client/plugins/Sender;Lio/ktor/client/request/HttpRequestBuilder;Lio/ktor/client/call/HttpClientCall;ZLio/ktor/client/HttpClient;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
