.class final Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$childSerializers$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PluginGeneratedSerialDescriptor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;


# direct methods
.method constructor <init>(Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$childSerializers$2;->this$0:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$childSerializers$2;->invoke()[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()[Lkotlinx/serialization/KSerializer;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$childSerializers$2;->this$0:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 36
    invoke-static {v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->access$getGeneratedSerializer$p(Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)Lkotlinx/serialization/internal/GeneratedSerializer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/serialization/internal/GeneratedSerializer;->childSerializers()[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lkotlinx/serialization/internal/PluginHelperInterfacesKt;->EMPTY_SERIALIZER_ARRAY:[Lkotlinx/serialization/KSerializer;

    :cond_1
    return-object v0
.end method
