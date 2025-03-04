.class final Lkotlinx/serialization/internal/ObjectSerializer$descriptor$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectSerializer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/internal/ObjectSerializer$descriptor$2;->invoke()Lkotlinx/serialization/descriptors/SerialDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkotlinx/serialization/internal/ObjectSerializer;


# direct methods
.method constructor <init>(Lkotlinx/serialization/internal/ObjectSerializer;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lkotlinx/serialization/internal/ObjectSerializer$descriptor$2$1;->this$0:Lkotlinx/serialization/internal/ObjectSerializer;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/ObjectSerializer$descriptor$2$1;->invoke(Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;)V
    .locals 1

    const-string v0, "$this$buildSerialDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/internal/ObjectSerializer$descriptor$2$1;->this$0:Lkotlinx/serialization/internal/ObjectSerializer;

    .line 34
    invoke-static {v0}, Lkotlinx/serialization/internal/ObjectSerializer;->access$get_annotations$p(Lkotlinx/serialization/internal/ObjectSerializer;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->setAnnotations(Ljava/util/List;)V

    return-void
.end method
