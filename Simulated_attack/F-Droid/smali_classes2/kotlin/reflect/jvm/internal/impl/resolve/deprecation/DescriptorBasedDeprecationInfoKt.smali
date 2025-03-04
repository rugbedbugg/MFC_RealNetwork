.class public abstract Lkotlin/reflect/jvm/internal/impl/resolve/deprecation/DescriptorBasedDeprecationInfoKt;
.super Ljava/lang/Object;
.source "DescriptorBasedDeprecationInfo.kt"


# static fields
.field private static final DEPRECATED_FUNCTION_KEY:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor$UserDataKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/deprecation/DescriptorBasedDeprecationInfoKt$DEPRECATED_FUNCTION_KEY$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/deprecation/DescriptorBasedDeprecationInfoKt$DEPRECATED_FUNCTION_KEY$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/deprecation/DescriptorBasedDeprecationInfoKt;->DEPRECATED_FUNCTION_KEY:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor$UserDataKey;

    return-void
.end method

.method public static final getDEPRECATED_FUNCTION_KEY()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor$UserDataKey;
    .locals 1

    .line 0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/deprecation/DescriptorBasedDeprecationInfoKt;->DEPRECATED_FUNCTION_KEY:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor$UserDataKey;

    return-object v0
.end method
