.class public final Lkotlin/reflect/jvm/internal/JvmFunctionSignature$JavaMethod;
.super Lkotlin/reflect/jvm/internal/JvmFunctionSignature;
.source "RuntimeTypeMapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/JvmFunctionSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JavaMethod"
.end annotation


# instance fields
.field private final method:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 1

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/JvmFunctionSignature;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$JavaMethod;->method:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public asString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$JavaMethod;->method:Ljava/lang/reflect/Method;

    .line 78
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/RuntimeTypeMapperKt;->access$getSignature(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$JavaMethod;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method
