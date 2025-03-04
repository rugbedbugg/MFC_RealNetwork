.class public Lkotlin/reflect/jvm/internal/CreateKCallableVisitor;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorVisitorEmptyBodies;
.source "util.kt"


# instance fields
.field private final container:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorVisitorEmptyBodies;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/CreateKCallableVisitor;->container:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    return-void
.end method


# virtual methods
.method public bridge synthetic visitFunctionDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 291
    check-cast p2, Lkotlin/Unit;

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/CreateKCallableVisitor;->visitFunctionDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Lkotlin/Unit;)Lkotlin/reflect/jvm/internal/KCallableImpl;

    move-result-object p1

    return-object p1
.end method

.method public visitFunctionDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Lkotlin/Unit;)Lkotlin/reflect/jvm/internal/KCallableImpl;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    new-instance p2, Lkotlin/reflect/jvm/internal/KFunctionImpl;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/CreateKCallableVisitor;->container:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    invoke-direct {p2, v0, p1}, Lkotlin/reflect/jvm/internal/KFunctionImpl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;)V

    return-object p2
.end method

.method public bridge synthetic visitPropertyDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 291
    check-cast p2, Lkotlin/Unit;

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/CreateKCallableVisitor;->visitPropertyDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/Unit;)Lkotlin/reflect/jvm/internal/KCallableImpl;

    move-result-object p1

    return-object p1
.end method

.method public visitPropertyDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/Unit;)Lkotlin/reflect/jvm/internal/KCallableImpl;
    .locals 3

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getDispatchReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 295
    :goto_0
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;

    move-result-object v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    add-int/2addr p2, v0

    .line 298
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/VariableDescriptor;->isVar()Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    if-eq p2, v1, :cond_2

    if-ne p2, v2, :cond_5

    .line 301
    new-instance p2, Lkotlin/reflect/jvm/internal/KMutableProperty2Impl;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/CreateKCallableVisitor;->container:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    invoke-direct {p2, v0, p1}, Lkotlin/reflect/jvm/internal/KMutableProperty2Impl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)V

    return-object p2

    .line 300
    :cond_2
    new-instance p2, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/CreateKCallableVisitor;->container:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    invoke-direct {p2, v0, p1}, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)V

    return-object p2

    .line 299
    :cond_3
    new-instance p2, Lkotlin/reflect/jvm/internal/KMutableProperty0Impl;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/CreateKCallableVisitor;->container:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    invoke-direct {p2, v0, p1}, Lkotlin/reflect/jvm/internal/KMutableProperty0Impl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)V

    return-object p2

    :cond_4
    if-eqz p2, :cond_7

    if-eq p2, v1, :cond_6

    if-ne p2, v2, :cond_5

    .line 306
    new-instance p2, Lkotlin/reflect/jvm/internal/KProperty2Impl;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/CreateKCallableVisitor;->container:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    invoke-direct {p2, v0, p1}, Lkotlin/reflect/jvm/internal/KProperty2Impl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)V

    return-object p2

    .line 310
    :cond_5
    new-instance p2, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported property: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;-><init>(Ljava/lang/String;)V

    throw p2

    .line 305
    :cond_6
    new-instance p2, Lkotlin/reflect/jvm/internal/KProperty1Impl;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/CreateKCallableVisitor;->container:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    invoke-direct {p2, v0, p1}, Lkotlin/reflect/jvm/internal/KProperty1Impl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)V

    return-object p2

    .line 304
    :cond_7
    new-instance p2, Lkotlin/reflect/jvm/internal/KProperty0Impl;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/CreateKCallableVisitor;->container:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    invoke-direct {p2, v0, p1}, Lkotlin/reflect/jvm/internal/KProperty0Impl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)V

    return-object p2
.end method
