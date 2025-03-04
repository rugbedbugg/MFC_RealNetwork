.class final Lkotlin/reflect/jvm/internal/KCallableImpl$_absentArguments$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KCallableImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/KCallableImpl;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/KCallableImpl;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_absentArguments$1;->this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 115
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl$_absentArguments$1;->invoke()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()[Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_absentArguments$1;->this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;

    .line 116
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getParameters()Ljava/util/List;

    move-result-object v0

    .line 117
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_absentArguments$1;->this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;

    invoke-interface {v2}, Lkotlin/reflect/KCallable;->isSuspend()Z

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_absentArguments$1;->this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;

    .line 119
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/KCallableImpl;->access$getParametersNeedMFVCFlattening$p(Lkotlin/reflect/jvm/internal/KCallableImpl;)Lkotlin/Lazy;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_absentArguments$1;->this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;

    .line 120
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v3

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/KParameter;

    .line 121
    invoke-interface {v6}, Lkotlin/reflect/KParameter;->getKind()Lkotlin/reflect/KParameter$Kind;

    move-result-object v7

    sget-object v8, Lkotlin/reflect/KParameter$Kind;->VALUE:Lkotlin/reflect/KParameter$Kind;

    if-ne v7, v8, :cond_0

    invoke-static {v2, v6}, Lkotlin/reflect/jvm/internal/KCallableImpl;->access$getParameterTypeSize(Lkotlin/reflect/jvm/internal/KCallableImpl;Lkotlin/reflect/KParameter;)I

    move-result v6

    goto :goto_1

    :cond_0
    move v6, v3

    :goto_1
    add-int/2addr v5, v6

    goto :goto_0

    .line 1774
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move v5, v3

    goto :goto_3

    .line 1776
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v5, v3

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/KParameter;

    .line 124
    invoke-interface {v4}, Lkotlin/reflect/KParameter;->getKind()Lkotlin/reflect/KParameter$Kind;

    move-result-object v4

    sget-object v6, Lkotlin/reflect/KParameter$Kind;->VALUE:Lkotlin/reflect/KParameter$Kind;

    if-ne v4, v6, :cond_3

    add-int/lit8 v5, v5, 0x1

    if-gez v5, :cond_3

    .line 1776
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1f

    .line 126
    div-int/lit8 v5, v5, 0x20

    add-int v2, v1, v5

    add-int/lit8 v2, v2, 0x1

    .line 129
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_absentArguments$1;->this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/KParameter;

    .line 133
    invoke-interface {v6}, Lkotlin/reflect/KParameter;->isOptional()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Lkotlin/reflect/KParameter;->getType()Lkotlin/reflect/KType;

    move-result-object v7

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/UtilKt;->isInlineClassType(Lkotlin/reflect/KType;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 136
    invoke-interface {v6}, Lkotlin/reflect/KParameter;->getIndex()I

    move-result v7

    invoke-interface {v6}, Lkotlin/reflect/KParameter;->getType()Lkotlin/reflect/KType;

    move-result-object v6

    invoke-static {v6}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/UtilKt;->defaultPrimitiveValue(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v2, v7

    goto :goto_4

    .line 137
    :cond_6
    invoke-interface {v6}, Lkotlin/reflect/KParameter;->isVararg()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 138
    invoke-interface {v6}, Lkotlin/reflect/KParameter;->getIndex()I

    move-result v7

    invoke-interface {v6}, Lkotlin/reflect/KParameter;->getType()Lkotlin/reflect/KType;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/reflect/jvm/internal/KCallableImpl;->access$defaultEmptyArray(Lkotlin/reflect/jvm/internal/KCallableImpl;Lkotlin/reflect/KType;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v2, v7

    goto :goto_4

    :cond_7
    move v0, v3

    :goto_5
    if-ge v0, v5, :cond_8

    add-int v4, v1, v0

    .line 143
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    return-object v2
.end method
