.class public final Lkotlin/reflect/jvm/internal/EmptyContainerForLocal;
.super Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;
.source "EmptyContainerForLocal.kt"


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/EmptyContainerForLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lkotlin/reflect/jvm/internal/EmptyContainerForLocal;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/EmptyContainerForLocal;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/EmptyContainerForLocal;->INSTANCE:Lkotlin/reflect/jvm/internal/EmptyContainerForLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;-><init>()V

    return-void
.end method

.method private final fail()Ljava/lang/Void;
    .locals 2

    .line 41
    new-instance v0, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;

    const-string v1, "Introspecting local functions, lambdas, anonymous functions, local variables and typealiases is not yet fully supported in Kotlin reflection"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getConstructorDescriptors()Ljava/util/Collection;
    .locals 1

    .line 33
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/EmptyContainerForLocal;->fail()Ljava/lang/Void;

    const/4 v0, 0x0

    throw v0
.end method

.method public getFunctions(Lkotlin/reflect/jvm/internal/impl/name/Name;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/EmptyContainerForLocal;->fail()Ljava/lang/Void;

    const/4 p1, 0x0

    throw p1
.end method

.method public getJClass()Ljava/lang/Class;
    .locals 1

    .line 27
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/EmptyContainerForLocal;->fail()Ljava/lang/Void;

    const/4 v0, 0x0

    throw v0
.end method

.method public getLocalProperty(I)Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;
    .locals 0

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getProperties(Lkotlin/reflect/jvm/internal/impl/name/Name;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/EmptyContainerForLocal;->fail()Ljava/lang/Void;

    const/4 p1, 0x0

    throw p1
.end method
