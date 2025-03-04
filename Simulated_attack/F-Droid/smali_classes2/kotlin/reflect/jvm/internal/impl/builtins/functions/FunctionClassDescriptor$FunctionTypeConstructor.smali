.class final Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor$FunctionTypeConstructor;
.super Lkotlin/reflect/jvm/internal/impl/types/AbstractClassTypeConstructor;
.source "FunctionClassDescriptor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FunctionTypeConstructor"
.end annotation


# instance fields
.field final synthetic this$0:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor$FunctionTypeConstructor;->this$0:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;

    .line 97
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->access$getStorageManager$p(Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/AbstractClassTypeConstructor;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;)V

    return-void
.end method


# virtual methods
.method protected computeSupertypes()Ljava/util/Collection;
    .locals 9

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor$FunctionTypeConstructor;->this$0:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;

    .line 100
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->getFunctionTypeKind()Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind;

    move-result-object v0

    .line 101
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind$Function;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind$Function;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->access$getFunctionClassId$cp()Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_0
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind$KFunction;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind$KFunction;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    new-array v0, v4, [Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 104
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->access$getKFunctionClassId$cp()Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v2

    aput-object v2, v0, v3

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->BUILT_INS_PACKAGE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor$FunctionTypeConstructor;->this$0:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->getArity()I

    move-result v4

    invoke-virtual {v1, v4}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind;->numberedClassName(I)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;-><init>(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    aput-object v2, v0, v5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 105
    :cond_1
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind$SuspendFunction;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind$SuspendFunction;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->access$getFunctionClassId$cp()Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_2
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind$KSuspendFunction;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind$KSuspendFunction;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-array v0, v4, [Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 108
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->access$getKFunctionClassId$cp()Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v2

    aput-object v2, v0, v3

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->COROUTINES_PACKAGE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor$FunctionTypeConstructor;->this$0:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->getArity()I

    move-result v4

    invoke-virtual {v1, v4}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind;->numberedClassName(I)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;-><init>(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    aput-object v2, v0, v5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor$FunctionTypeConstructor;->this$0:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;

    .line 112
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->access$getContainingDeclaration$p(Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    move-result-object v1

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1621
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 114
    invoke-static {v1, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt;->findClassAcrossModuleDependencies(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 117
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor$FunctionTypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v6

    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->takeLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object v4

    .line 1549
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1621
    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 118
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;

    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v7

    invoke-direct {v8, v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .line 1621
    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 121
    :cond_3
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->getEmpty()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v4

    invoke-static {v4, v5, v6}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->simpleNotNullType(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v4

    .line 1621
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 114
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Built-in class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_5
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_6
    const/4 v0, 0x0

    .line 109
    invoke-static {v0, v5, v0}, Lkotlin/reflect/jvm/internal/impl/utils/addToStdlib/AddToStdlibKt;->shouldNotBeCalled$default(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    throw v0
.end method

.method public getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor$FunctionTypeConstructor;->this$0:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;

    return-object v0
.end method

.method public bridge synthetic getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor$FunctionTypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor$FunctionTypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor$FunctionTypeConstructor;->this$0:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;

    .line 125
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->access$getParameters$p(Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getSupertypeLoopChecker()Lkotlin/reflect/jvm/internal/impl/descriptors/SupertypeLoopChecker;
    .locals 1

    .line 133
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/SupertypeLoopChecker$EMPTY;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/SupertypeLoopChecker$EMPTY;

    return-object v0
.end method

.method public isDenotable()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor$FunctionTypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
