.class final Lkotlinx/serialization/SerializersCacheKt$SERIALIZERS_CACHE_NULLABLE$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SerializersCache.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/SerializersCacheKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/SerializersCacheKt$SERIALIZERS_CACHE_NULLABLE$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lkotlinx/serialization/SerializersCacheKt$SERIALIZERS_CACHE_NULLABLE$1;

    invoke-direct {v0}, Lkotlinx/serialization/SerializersCacheKt$SERIALIZERS_CACHE_NULLABLE$1;-><init>()V

    sput-object v0, Lkotlinx/serialization/SerializersCacheKt$SERIALIZERS_CACHE_NULLABLE$1;->INSTANCE:Lkotlinx/serialization/SerializersCacheKt$SERIALIZERS_CACHE_NULLABLE$1;

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

    .line 27
    check-cast p1, Lkotlin/reflect/KClass;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/SerializersCacheKt$SERIALIZERS_CACHE_NULLABLE$1;->invoke(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {p1}, Lkotlinx/serialization/SerializersKt;->serializerOrNull(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
