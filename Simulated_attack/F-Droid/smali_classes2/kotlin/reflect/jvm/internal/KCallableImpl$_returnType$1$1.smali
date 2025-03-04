.class final Lkotlin/reflect/jvm/internal/KCallableImpl$_returnType$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KCallableImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/KCallableImpl$_returnType$1;->invoke()Lkotlin/reflect/jvm/internal/KTypeImpl;
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
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_returnType$1$1;->this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl$_returnType$1$1;->invoke()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_returnType$1$1;->this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;

    .line 77
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->access$extractContinuationArgument(Lkotlin/reflect/jvm/internal/KCallableImpl;)Ljava/lang/reflect/Type;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_returnType$1$1;->this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/calls/Caller;->getReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    :cond_0
    return-object v0
.end method
