.class final Lkotlinx/serialization/descriptors/SerialDescriptorsKt$buildSerialDescriptor$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SerialDescriptors.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->buildSerialDescriptor$default(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialKind;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/descriptors/SerialDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/descriptors/SerialDescriptorsKt$buildSerialDescriptor$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lkotlinx/serialization/descriptors/SerialDescriptorsKt$buildSerialDescriptor$1;

    invoke-direct {v0}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt$buildSerialDescriptor$1;-><init>()V

    sput-object v0, Lkotlinx/serialization/descriptors/SerialDescriptorsKt$buildSerialDescriptor$1;->INSTANCE:Lkotlinx/serialization/descriptors/SerialDescriptorsKt$buildSerialDescriptor$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 140
    check-cast p1, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt$buildSerialDescriptor$1;->invoke(Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;)V
    .locals 1

    .line 0
    const-string v0, "$this$null"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
