.class final Lkotlin/reflect/jvm/internal/KTypeImpl$classifier$2;
.super Lkotlin/jvm/internal/Lambda;
.source "KTypeImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/KTypeImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkotlin/reflect/jvm/internal/KTypeImpl;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/KTypeImpl;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$classifier$2;->this$0:Lkotlin/reflect/jvm/internal/KTypeImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KTypeImpl$classifier$2;->invoke()Lkotlin/reflect/KClassifier;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlin/reflect/KClassifier;
    .locals 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$classifier$2;->this$0:Lkotlin/reflect/jvm/internal/KTypeImpl;

    .line 48
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KTypeImpl;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/KTypeImpl;->access$convert(Lkotlin/reflect/jvm/internal/KTypeImpl;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/KClassifier;

    move-result-object v0

    return-object v0
.end method
