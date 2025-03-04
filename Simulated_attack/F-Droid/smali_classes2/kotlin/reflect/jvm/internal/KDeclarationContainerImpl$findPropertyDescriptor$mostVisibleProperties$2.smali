.class final Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$findPropertyDescriptor$mostVisibleProperties$2;
.super Lkotlin/jvm/internal/Lambda;
.source "KDeclarationContainerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->findPropertyDescriptor(Ljava/lang/String;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$findPropertyDescriptor$mostVisibleProperties$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$findPropertyDescriptor$mostVisibleProperties$2;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$findPropertyDescriptor$mostVisibleProperties$2;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$findPropertyDescriptor$mostVisibleProperties$2;->INSTANCE:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$findPropertyDescriptor$mostVisibleProperties$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;)Ljava/lang/Integer;
    .locals 0

    .line 105
    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->compare(Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 104
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$findPropertyDescriptor$mostVisibleProperties$2;->invoke(Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
