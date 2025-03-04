.class final Lkotlin/reflect/jvm/internal/KProperty2Impl$_getter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KProperty2Impl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lkotlin/reflect/jvm/internal/KProperty2Impl;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/KProperty2Impl;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KProperty2Impl$_getter$1;->this$0:Lkotlin/reflect/jvm/internal/KProperty2Impl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KProperty2Impl$_getter$1;->invoke()Lkotlin/reflect/jvm/internal/KProperty2Impl$Getter;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlin/reflect/jvm/internal/KProperty2Impl$Getter;
    .locals 2

    .line 32
    new-instance v0, Lkotlin/reflect/jvm/internal/KProperty2Impl$Getter;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KProperty2Impl$_getter$1;->this$0:Lkotlin/reflect/jvm/internal/KProperty2Impl;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/KProperty2Impl$Getter;-><init>(Lkotlin/reflect/jvm/internal/KProperty2Impl;)V

    return-object v0
.end method
