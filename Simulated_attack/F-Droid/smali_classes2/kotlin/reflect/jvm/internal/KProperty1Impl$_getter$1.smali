.class final Lkotlin/reflect/jvm/internal/KProperty1Impl$_getter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KProperty1Impl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/KProperty1Impl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkotlin/reflect/jvm/internal/KProperty1Impl;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/KProperty1Impl;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KProperty1Impl$_getter$1;->this$0:Lkotlin/reflect/jvm/internal/KProperty1Impl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KProperty1Impl$_getter$1;->invoke()Lkotlin/reflect/jvm/internal/KProperty1Impl$Getter;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlin/reflect/jvm/internal/KProperty1Impl$Getter;
    .locals 2

    .line 31
    new-instance v0, Lkotlin/reflect/jvm/internal/KProperty1Impl$Getter;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KProperty1Impl$_getter$1;->this$0:Lkotlin/reflect/jvm/internal/KProperty1Impl;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/KProperty1Impl$Getter;-><init>(Lkotlin/reflect/jvm/internal/KProperty1Impl;)V

    return-object v0
.end method
