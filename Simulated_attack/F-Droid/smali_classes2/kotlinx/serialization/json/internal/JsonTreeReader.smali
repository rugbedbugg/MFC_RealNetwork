.class public final Lkotlinx/serialization/json/internal/JsonTreeReader;
.super Ljava/lang/Object;
.source "JsonTreeReader.kt"


# instance fields
.field private final isLenient:Z

.field private final lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

.field private stackDepth:I


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/json/internal/AbstractJsonLexer;)V
    .locals 1

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lexer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .line 15
    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonConfiguration;->isLenient()Z

    move-result p1

    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->isLenient:Z

    return-void
.end method

.method public static final synthetic access$getLexer$p(Lkotlinx/serialization/json/internal/JsonTreeReader;)Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    .locals 0

    .line 10
    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    return-object p0
.end method

.method public static final synthetic access$readArray(Lkotlinx/serialization/json/internal/JsonTreeReader;)Lkotlinx/serialization/json/JsonElement;
    .locals 0

    .line 10
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->readArray()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$readObject(Lkotlinx/serialization/json/internal/JsonTreeReader;Lkotlin/DeepRecursiveScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/JsonTreeReader;->readObject(Lkotlin/DeepRecursiveScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$readValue(Lkotlinx/serialization/json/internal/JsonTreeReader;Z)Lkotlinx/serialization/json/JsonPrimitive;
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/JsonTreeReader;->readValue(Z)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p0

    return-object p0
.end method

.method private final readArray()Lkotlinx/serialization/json/JsonElement;
    .locals 11

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .line 53
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken()B

    move-result v0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .line 55
    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekNextToken()B

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_6

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    iget-object v3, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .line 57
    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->canConsumeValue()Z

    move-result v3

    const/16 v4, 0x9

    if-eqz v3, :cond_3

    .line 58
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->read()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    .line 59
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .line 60
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken()B

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v5, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    if-ne v0, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 463
    :goto_1
    invoke-static {v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->access$getCurrentPosition$p(Lkotlinx/serialization/json/internal/AbstractJsonLexer;)I

    move-result v7

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v6, "Expected end of the array or comma"

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    .line 464
    invoke-static/range {v5 .. v10}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_3
    const/16 v3, 0x8

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .line 67
    invoke-virtual {v0, v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(B)B

    goto :goto_2

    :cond_4
    if-eq v0, v2, :cond_5

    .line 71
    :goto_2
    new-instance v0, Lkotlinx/serialization/json/JsonArray;

    invoke-direct {v0, v1}, Lkotlinx/serialization/json/JsonArray;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_5
    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const-string v3, "Unexpected trailing comma"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    .line 69
    invoke-static/range {v2 .. v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_6
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const-string v2, "Unexpected leading comma"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    .line 55
    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method private final readDeepRecursive()Lkotlinx/serialization/json/JsonElement;
    .locals 3

    .line 108
    new-instance v0, Lkotlin/DeepRecursiveFunction;

    .line 116
    new-instance v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;-><init>(Lkotlinx/serialization/json/internal/JsonTreeReader;Lkotlin/coroutines/Continuation;)V

    .line 108
    invoke-direct {v0, v1}, Lkotlin/DeepRecursiveFunction;-><init>(Lkotlin/jvm/functions/Function3;)V

    .line 116
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0, v1}, Lkotlin/DeepRecursiveKt;->invoke(Lkotlin/DeepRecursiveFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    return-object v0
.end method

.method private final readObject(Lkotlin/DeepRecursiveScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;

    iget v3, v2, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;

    invoke-direct {v2, v0, v1}, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;-><init>(Lkotlinx/serialization/json/internal/JsonTreeReader;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 22
    iget v4, v2, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->label:I

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x1

    const/4 v8, 0x4

    if-eqz v4, :cond_2

    if-ne v4, v7, :cond_1

    iget-object v4, v2, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v9, v2, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$2:Ljava/lang/Object;

    check-cast v9, Ljava/util/LinkedHashMap;

    iget-object v10, v2, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$1:Ljava/lang/Object;

    check-cast v10, Lkotlinx/serialization/json/internal/JsonTreeReader;

    iget-object v11, v2, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$0:Ljava/lang/Object;

    check-cast v11, Lkotlin/DeepRecursiveScope;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    goto :goto_3

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .line 26
    invoke-virtual {v1, v6}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(B)B

    move-result v1

    iget-object v4, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .line 27
    invoke-virtual {v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekNextToken()B

    move-result v4

    if-eq v4, v8, :cond_a

    .line 28
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v10, v0

    move-object v9, v4

    move-object v4, v3

    move-object v3, v2

    move v2, v1

    move-object/from16 v1, p1

    .line 29
    :goto_1
    iget-object v11, v10, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v11}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->canConsumeValue()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 31
    iget-boolean v2, v10, Lkotlinx/serialization/json/internal/JsonTreeReader;->isLenient:Z

    if-eqz v2, :cond_3

    iget-object v2, v10, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    iget-object v2, v10, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeString()Ljava/lang/String;

    move-result-object v2

    .line 32
    :goto_2
    iget-object v11, v10, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(B)B

    .line 23
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object v1, v3, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$0:Ljava/lang/Object;

    iput-object v10, v3, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$1:Ljava/lang/Object;

    iput-object v9, v3, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$2:Ljava/lang/Object;

    iput-object v2, v3, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$3:Ljava/lang/Object;

    iput v7, v3, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->label:I

    invoke-virtual {v1, v11, v3}, Lkotlin/DeepRecursiveScope;->callRecursive(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v4, :cond_4

    return-object v4

    :cond_4
    move-object/from16 v18, v11

    move-object v11, v1

    move-object/from16 v1, v18

    move-object/from16 v19, v4

    move-object v4, v2

    move-object/from16 v2, v19

    :goto_3
    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    .line 34
    invoke-interface {v9, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v1, v10, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken()B

    move-result v1

    if-eq v1, v8, :cond_6

    if-ne v1, v5, :cond_5

    move v2, v1

    goto :goto_4

    .line 40
    :cond_5
    iget-object v12, v10, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const-string v13, "Expected end of the object or comma"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x6

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1

    :cond_6
    move-object v4, v2

    move v2, v1

    move-object v1, v11

    goto :goto_1

    :cond_7
    :goto_4
    if-ne v2, v6, :cond_8

    .line 45
    iget-object v1, v10, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v1, v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(B)B

    goto :goto_5

    :cond_8
    if-eq v2, v8, :cond_9

    .line 49
    :goto_5
    new-instance v1, Lkotlinx/serialization/json/JsonObject;

    invoke-direct {v1, v9}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    return-object v1

    .line 47
    :cond_9
    iget-object v2, v10, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const-string v3, "Unexpected trailing comma"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1

    :cond_a
    iget-object v2, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const-string v3, "Unexpected leading comma"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    .line 27
    invoke-static/range {v2 .. v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1
.end method

.method private final readObject()Lkotlinx/serialization/json/JsonElement;
    .locals 12

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const/4 v1, 0x6

    .line 26
    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(B)B

    move-result v0

    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .line 27
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekNextToken()B

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_6

    .line 28
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_0
    iget-object v4, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .line 29
    invoke-virtual {v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->canConsumeValue()Z

    move-result v4

    const/4 v5, 0x7

    if-eqz v4, :cond_3

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->isLenient:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .line 31
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v4, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const/4 v6, 0x5

    .line 32
    invoke-virtual {v4, v6}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(B)B

    .line 19
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->read()Lkotlinx/serialization/json/JsonElement;

    move-result-object v4

    .line 34
    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .line 36
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken()B

    move-result v0

    if-eq v0, v3, :cond_0

    if-ne v0, v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const-string v7, "Expected end of the object or comma"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    .line 40
    invoke-static/range {v6 .. v11}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_3
    :goto_1
    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .line 45
    invoke-virtual {v0, v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(B)B

    goto :goto_2

    :cond_4
    if-eq v0, v3, :cond_5

    .line 49
    :goto_2
    new-instance v0, Lkotlinx/serialization/json/JsonObject;

    invoke-direct {v0, v2}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    return-object v0

    :cond_5
    iget-object v3, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const-string v4, "Unexpected trailing comma"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    .line 47
    invoke-static/range {v3 .. v8}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_6
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const-string v2, "Unexpected leading comma"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    .line 27
    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method private final readValue(Z)Lkotlinx/serialization/json/JsonPrimitive;
    .locals 2

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->isLenient:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .line 78
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .line 76
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-nez p1, :cond_2

    const-string v1, "null"

    .line 80
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    return-object p1

    .line 81
    :cond_2
    new-instance v1, Lkotlinx/serialization/json/JsonLiteral;

    invoke-direct {v1, v0, p1}, Lkotlinx/serialization/json/JsonLiteral;-><init>(Ljava/lang/Object;Z)V

    return-object v1
.end method


# virtual methods
.method public final read()Lkotlinx/serialization/json/JsonElement;
    .locals 7

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .line 85
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekNextToken()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 86
    invoke-direct {p0, v1}, Lkotlinx/serialization/json/internal/JsonTreeReader;->readValue(Z)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->readValue(Z)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v2, 0x6

    if-ne v0, v2, :cond_3

    iget v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->stackDepth:I

    add-int/2addr v0, v1

    iput v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->stackDepth:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 96
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->readDeepRecursive()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_2
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->readObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    :goto_0
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->stackDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->stackDepth:I

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 103
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->readArray()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_4
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot begin reading element, unexpected token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method
