.class final Lkotlin/jvm/internal/TypeReference$asString$args$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TypeReference.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/jvm/internal/TypeReference;->asString(Z)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkotlin/jvm/internal/TypeReference;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/TypeReference;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lkotlin/jvm/internal/TypeReference$asString$args$1;->this$0:Lkotlin/jvm/internal/TypeReference;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lkotlin/reflect/KTypeProjection;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/jvm/internal/TypeReference$asString$args$1;->this$0:Lkotlin/jvm/internal/TypeReference;

    .line 51
    invoke-static {v0, p1}, Lkotlin/jvm/internal/TypeReference;->access$asString(Lkotlin/jvm/internal/TypeReference;Lkotlin/reflect/KTypeProjection;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 51
    check-cast p1, Lkotlin/reflect/KTypeProjection;

    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/TypeReference$asString$args$1;->invoke(Lkotlin/reflect/KTypeProjection;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
