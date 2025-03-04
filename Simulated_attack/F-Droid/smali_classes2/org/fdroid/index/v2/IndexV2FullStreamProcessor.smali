.class public final Lorg/fdroid/index/v2/IndexV2FullStreamProcessor;
.super Ljava/lang/Object;
.source "IndexV2FullStreamProcessor.kt"

# interfaces
.implements Lorg/fdroid/index/v2/IndexV2StreamProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0010B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J,\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00080\u000eH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lorg/fdroid/index/v2/IndexV2FullStreamProcessor;",
        "Lorg/fdroid/index/v2/IndexV2StreamProcessor;",
        "indexStreamReceiver",
        "Lorg/fdroid/index/v2/IndexV2StreamReceiver;",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "(Lorg/fdroid/index/v2/IndexV2StreamReceiver;Lkotlinx/serialization/json/Json;)V",
        "process",
        "",
        "version",
        "",
        "inputStream",
        "Ljava/io/InputStream;",
        "onAppProcessed",
        "Lkotlin/Function1;",
        "",
        "IndexStreamSerializer",
        "index_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final indexStreamReceiver:Lorg/fdroid/index/v2/IndexV2StreamReceiver;

.field private final json:Lkotlinx/serialization/json/Json;


# direct methods
.method public constructor <init>(Lorg/fdroid/index/v2/IndexV2StreamReceiver;Lkotlinx/serialization/json/Json;)V
    .locals 1

    const-string v0, "indexStreamReceiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor;->indexStreamReceiver:Lorg/fdroid/index/v2/IndexV2StreamReceiver;

    iput-object p2, p0, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor;->json:Lkotlinx/serialization/json/Json;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/fdroid/index/v2/IndexV2StreamReceiver;Lkotlinx/serialization/json/Json;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 19
    invoke-static {}, Lorg/fdroid/index/IndexParser;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p2

    .line 17
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor;-><init>(Lorg/fdroid/index/v2/IndexV2StreamReceiver;Lkotlinx/serialization/json/Json;)V

    return-void
.end method

.method public static final synthetic access$getIndexStreamReceiver$p(Lorg/fdroid/index/v2/IndexV2FullStreamProcessor;)Lorg/fdroid/index/v2/IndexV2StreamReceiver;
    .locals 0

    .line 16
    iget-object p0, p0, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor;->indexStreamReceiver:Lorg/fdroid/index/v2/IndexV2StreamReceiver;

    return-object p0
.end method


# virtual methods
.method public process(JLjava/io/InputStream;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/io/InputStream;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlinx/serialization/SerializationException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "inputStream"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onAppProcessed"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor;->json:Lkotlinx/serialization/json/Json;

    .line 28
    new-instance v1, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;

    invoke-direct {v1, p0, p1, p2, p4}, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;-><init>(Lorg/fdroid/index/v2/IndexV2FullStreamProcessor;JLkotlin/jvm/functions/Function1;)V

    invoke-static {v0, v1, p3}, Lkotlinx/serialization/json/JvmStreamsKt;->decodeFromStream(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/DeserializationStrategy;Ljava/io/InputStream;)Ljava/lang/Object;

    return-void
.end method
