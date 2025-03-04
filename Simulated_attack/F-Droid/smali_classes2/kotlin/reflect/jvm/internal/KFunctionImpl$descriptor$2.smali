.class final Lkotlin/reflect/jvm/internal/KFunctionImpl$descriptor$2;
.super Lkotlin/jvm/internal/Lambda;
.source "KFunctionImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/KFunctionImpl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $name:Ljava/lang/String;

.field final synthetic this$0:Lkotlin/reflect/jvm/internal/KFunctionImpl;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/KFunctionImpl;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KFunctionImpl$descriptor$2;->this$0:Lkotlin/reflect/jvm/internal/KFunctionImpl;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/KFunctionImpl$descriptor$2;->$name:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl$descriptor$2;->invoke()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;
    .locals 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KFunctionImpl$descriptor$2;->this$0:Lkotlin/reflect/jvm/internal/KFunctionImpl;

    .line 59
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getContainer()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    move-result-object v0

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KFunctionImpl$descriptor$2;->$name:Ljava/lang/String;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/KFunctionImpl$descriptor$2;->this$0:Lkotlin/reflect/jvm/internal/KFunctionImpl;

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->access$getSignature$p(Lkotlin/reflect/jvm/internal/KFunctionImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->findFunctionDescriptor(Ljava/lang/String;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object v0

    return-object v0
.end method
