.class public abstract Lkotlin/reflect/jvm/internal/impl/resolve/ResolutionAnchorProviderKt;
.super Ljava/lang/Object;
.source "ResolutionAnchorProvider.kt"


# static fields
.field private static final RESOLUTION_ANCHOR_PROVIDER_CAPABILITY:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleCapability;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleCapability;

    const-string v1, "ResolutionAnchorProvider"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleCapability;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/ResolutionAnchorProviderKt;->RESOLUTION_ANCHOR_PROVIDER_CAPABILITY:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleCapability;

    return-void
.end method

.method public static final getResolutionAnchorIfAny(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/ResolutionAnchorProviderKt;->RESOLUTION_ANCHOR_PROVIDER_CAPABILITY:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleCapability;

    .line 18
    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getCapability(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleCapability;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method
