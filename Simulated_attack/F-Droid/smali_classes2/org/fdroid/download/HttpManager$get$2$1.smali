.class final Lorg/fdroid/download/HttpManager$get$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HttpManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/download/HttpManager$get$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $receiver:Lorg/fdroid/download/BytesReceiver;

.field final synthetic $skipBytes:Lkotlin/jvm/internal/Ref$LongRef;

.field synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$LongRef;Lorg/fdroid/download/BytesReceiver;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/download/HttpManager$get$2$1;->$skipBytes:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p2, p0, Lorg/fdroid/download/HttpManager$get$2$1;->$receiver:Lorg/fdroid/download/BytesReceiver;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 0
    new-instance v0, Lorg/fdroid/download/HttpManager$get$2$1;

    iget-object v1, p0, Lorg/fdroid/download/HttpManager$get$2$1;->$skipBytes:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v2, p0, Lorg/fdroid/download/HttpManager$get$2$1;->$receiver:Lorg/fdroid/download/BytesReceiver;

    invoke-direct {v0, v1, v2, p2}, Lorg/fdroid/download/HttpManager$get$2$1;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Lorg/fdroid/download/BytesReceiver;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lorg/fdroid/download/HttpManager$get$2$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Lio/ktor/client/statement/HttpResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/download/HttpManager$get$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/fdroid/download/HttpManager$get$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/fdroid/download/HttpManager$get$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lio/ktor/client/statement/HttpResponse;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/download/HttpManager$get$2$1;->invoke(Lio/ktor/client/statement/HttpResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lorg/fdroid/download/HttpManager$get$2$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lorg/fdroid/download/HttpManager$get$2$1;->L$3:Ljava/lang/Object;

    .line 142
    check-cast v2, [B

    iget-object v7, v0, Lorg/fdroid/download/HttpManager$get$2$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lio/ktor/utils/io/core/ByteReadPacket;

    iget-object v8, v0, Lorg/fdroid/download/HttpManager$get$2$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lio/ktor/utils/io/ByteReadChannel;

    iget-object v9, v0, Lorg/fdroid/download/HttpManager$get$2$1;->L$0:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v0

    goto/16 :goto_5

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v2, v0, Lorg/fdroid/download/HttpManager$get$2$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteReadChannel;

    iget-object v7, v0, Lorg/fdroid/download/HttpManager$get$2$1;->L$0:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v9, p1

    move-object v8, v0

    goto/16 :goto_3

    :cond_2
    iget-object v2, v0, Lorg/fdroid/download/HttpManager$get$2$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, v2

    move-object/from16 v2, p1

    goto :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lorg/fdroid/download/HttpManager$get$2$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/client/statement/HttpResponse;

    .line 143
    invoke-static {v2}, Lio/ktor/http/HttpMessagePropertiesKt;->contentLength(Lio/ktor/http/HttpMessage;)Ljava/lang/Long;

    move-result-object v7

    iget-object v8, v0, Lorg/fdroid/download/HttpManager$get$2$1;->$skipBytes:Lkotlin/jvm/internal/Ref$LongRef;

    .line 144
    iget-wide v8, v8, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_5

    invoke-virtual {v2}, Lio/ktor/client/statement/HttpResponse;->getStatus()Lio/ktor/http/HttpStatusCode;

    move-result-object v8

    sget-object v9, Lio/ktor/http/HttpStatusCode;->Companion:Lio/ktor/http/HttpStatusCode$Companion;

    invoke-virtual {v9}, Lio/ktor/http/HttpStatusCode$Companion;->getPartialContent()Lio/ktor/http/HttpStatusCode;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_0

    .line 145
    :cond_4
    new-instance v1, Lorg/fdroid/download/NoResumeException;

    invoke-direct {v1}, Lorg/fdroid/download/NoResumeException;-><init>()V

    throw v1

    .line 156
    :cond_5
    :goto_0
    invoke-virtual {v2}, Lio/ktor/client/statement/HttpResponse;->getCall()Lio/ktor/client/call/HttpClientCall;

    move-result-object v2

    const-class v8, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v9

    .line 18
    invoke-static {v9}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v10

    .line 19
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-static {v10, v8, v9}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v8

    iput-object v7, v0, Lorg/fdroid/download/HttpManager$get$2$1;->L$0:Ljava/lang/Object;

    iput v6, v0, Lorg/fdroid/download/HttpManager$get$2$1;->label:I

    .line 156
    invoke-virtual {v2, v8, v0}, Lio/ktor/client/call/HttpClientCall;->bodyNullable(Lio/ktor/util/reflect/TypeInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    return-object v1

    :cond_6
    :goto_1
    if-eqz v2, :cond_b

    check-cast v2, Lio/ktor/utils/io/ByteReadChannel;

    move-object v8, v0

    .line 148
    :goto_2
    invoke-interface {v2}, Lio/ktor/utils/io/ByteReadChannel;->isClosedForRead()Z

    move-result v9

    if-nez v9, :cond_a

    iput-object v7, v8, Lorg/fdroid/download/HttpManager$get$2$1;->L$0:Ljava/lang/Object;

    iput-object v2, v8, Lorg/fdroid/download/HttpManager$get$2$1;->L$1:Ljava/lang/Object;

    iput-object v5, v8, Lorg/fdroid/download/HttpManager$get$2$1;->L$2:Ljava/lang/Object;

    iput-object v5, v8, Lorg/fdroid/download/HttpManager$get$2$1;->L$3:Ljava/lang/Object;

    iput v4, v8, Lorg/fdroid/download/HttpManager$get$2$1;->label:I

    const-wide/16 v9, 0x2000

    .line 149
    invoke-interface {v2, v9, v10, v8}, Lio/ktor/utils/io/ByteReadChannel;->readRemaining(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_7

    return-object v1

    .line 142
    :cond_7
    :goto_3
    check-cast v9, Lio/ktor/utils/io/core/ByteReadPacket;

    move-object/from16 v16, v8

    move-object v8, v7

    move-object v7, v9

    move-object/from16 v9, v16

    .line 39
    :goto_4
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Input;->getEndOfInput()Z

    move-result v10

    if-nez v10, :cond_9

    const/4 v10, 0x0

    .line 151
    invoke-static {v7, v10, v6, v5}, Lio/ktor/utils/io/core/StringsKt;->readBytes$default(Lio/ktor/utils/io/core/ByteReadPacket;IILjava/lang/Object;)[B

    move-result-object v10

    iget-object v11, v9, Lorg/fdroid/download/HttpManager$get$2$1;->$receiver:Lorg/fdroid/download/BytesReceiver;

    iput-object v8, v9, Lorg/fdroid/download/HttpManager$get$2$1;->L$0:Ljava/lang/Object;

    iput-object v2, v9, Lorg/fdroid/download/HttpManager$get$2$1;->L$1:Ljava/lang/Object;

    iput-object v7, v9, Lorg/fdroid/download/HttpManager$get$2$1;->L$2:Ljava/lang/Object;

    iput-object v10, v9, Lorg/fdroid/download/HttpManager$get$2$1;->L$3:Ljava/lang/Object;

    iput v3, v9, Lorg/fdroid/download/HttpManager$get$2$1;->label:I

    .line 152
    invoke-interface {v11, v10, v8, v9}, Lorg/fdroid/download/BytesReceiver;->receive([BLjava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v1, :cond_8

    return-object v1

    :cond_8
    move-object/from16 v16, v8

    move-object v8, v2

    move-object v2, v10

    move-object v10, v9

    move-object/from16 v9, v16

    :goto_5
    iget-object v11, v10, Lorg/fdroid/download/HttpManager$get$2$1;->$skipBytes:Lkotlin/jvm/internal/Ref$LongRef;

    .line 153
    iget-wide v12, v11, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    array-length v2, v2

    int-to-long v14, v2

    add-long/2addr v12, v14

    iput-wide v12, v11, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-object v2, v8

    move-object v8, v9

    move-object v9, v10

    goto :goto_4

    :cond_9
    move-object v7, v8

    move-object v8, v9

    goto :goto_2

    .line 156
    :cond_a
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 156
    :cond_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type io.ktor.utils.io.ByteReadChannel"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
