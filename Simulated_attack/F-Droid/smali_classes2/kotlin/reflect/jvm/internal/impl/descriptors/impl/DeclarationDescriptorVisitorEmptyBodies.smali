.class public abstract Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorVisitorEmptyBodies;
.super Ljava/lang/Object;
.source "DeclarationDescriptorVisitorEmptyBodies.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorVisitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitClassDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorVisitorEmptyBodies;->visitDeclarationDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitConstructorDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorVisitorEmptyBodies;->visitFunctionDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclarationDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract visitFunctionDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public visitModuleDeclaration(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorVisitorEmptyBodies;->visitDeclarationDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitPackageFragmentDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorVisitorEmptyBodies;->visitDeclarationDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitPackageViewDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorVisitorEmptyBodies;->visitDeclarationDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitPropertyGetterDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyGetterDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorVisitorEmptyBodies;->visitFunctionDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitPropertySetterDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 93
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorVisitorEmptyBodies;->visitFunctionDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitReceiverParameterDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 98
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorVisitorEmptyBodies;->visitDeclarationDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeAliasDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorVisitorEmptyBodies;->visitDeclarationDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeParameterDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorVisitorEmptyBodies;->visitDeclarationDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitValueParameterDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 83
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorVisitorEmptyBodies;->visitVariableDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/VariableDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitVariableDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/VariableDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorVisitorEmptyBodies;->visitDeclarationDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
