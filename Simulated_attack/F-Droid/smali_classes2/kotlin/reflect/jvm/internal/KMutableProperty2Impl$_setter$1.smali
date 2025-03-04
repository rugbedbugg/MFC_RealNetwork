.class final Lkotlin/reflect/jvm/internal/KMutableProperty2Impl$_setter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KProperty2Impl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lkotlin/reflect/jvm/internal/KMutableProperty2Impl;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/KMutableProperty2Impl;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KMutableProperty2Impl$_setter$1;->this$0:Lkotlin/reflect/jvm/internal/KMutableProperty2Impl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KMutableProperty2Impl$_setter$1;->invoke()Lkotlin/reflect/jvm/internal/KMutableProperty2Impl$Setter;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlin/reflect/jvm/internal/KMutableProperty2Impl$Setter;
    .locals 2

    .line 54
    new-instance v0, Lkotlin/reflect/jvm/internal/KMutableProperty2Impl$Setter;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KMutableProperty2Impl$_setter$1;->this$0:Lkotlin/reflect/jvm/internal/KMutableProperty2Impl;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/KMutableProperty2Impl$Setter;-><init>(Lkotlin/reflect/jvm/internal/KMutableProperty2Impl;)V

    return-object v0
.end method
