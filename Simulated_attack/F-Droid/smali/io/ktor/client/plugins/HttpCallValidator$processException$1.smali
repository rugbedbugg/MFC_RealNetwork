.class final Lio/ktor/client/plugins/HttpCallValidator$processException$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "HttpCallValidator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/HttpCallValidator;->processException(Ljava/lang/Throwable;Lio/ktor/client/request/HttpRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lio/ktor/client/plugins/HttpCallValidator;


# direct methods
.method constructor <init>(Lio/ktor/client/plugins/HttpCallValidator;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lio/ktor/client/plugins/HttpCallValidator$processException$1;->this$0:Lio/ktor/client/plugins/HttpCallValidator;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iput-object p1, p0, Lio/ktor/client/plugins/HttpCallValidator$processException$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/client/plugins/HttpCallValidator$processException$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/client/plugins/HttpCallValidator$processException$1;->label:I

    iget-object p1, p0, Lio/ktor/client/plugins/HttpCallValidator$processException$1;->this$0:Lio/ktor/client/plugins/HttpCallValidator;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p0}, Lio/ktor/client/plugins/HttpCallValidator;->access$processException(Lio/ktor/client/plugins/HttpCallValidator;Ljava/lang/Throwable;Lio/ktor/client/request/HttpRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
