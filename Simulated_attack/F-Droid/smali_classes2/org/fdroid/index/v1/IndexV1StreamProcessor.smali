.class public final Lorg/fdroid/index/v1/IndexV1StreamProcessor;
.super Ljava/lang/Object;
.source "IndexV1StreamProcessor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u000fB)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/fdroid/index/v1/IndexV1StreamProcessor;",
        "",
        "indexStreamReceiver",
        "Lorg/fdroid/index/v1/IndexV1StreamReceiver;",
        "lastTimestamp",
        "",
        "locale",
        "",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "(Lorg/fdroid/index/v1/IndexV1StreamReceiver;JLjava/lang/String;Lkotlinx/serialization/json/Json;)V",
        "process",
        "",
        "inputStream",
        "Ljava/io/InputStream;",
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
.field private final indexStreamReceiver:Lorg/fdroid/index/v1/IndexV1StreamReceiver;

.field private final json:Lkotlinx/serialization/json/Json;

.field private final lastTimestamp:J

.field private final locale:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/fdroid/index/v1/IndexV1StreamReceiver;JLjava/lang/String;Lkotlinx/serialization/json/Json;)V
    .locals 1

    const-string v0, "indexStreamReceiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locale"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/index/v1/IndexV1StreamProcessor;->indexStreamReceiver:Lorg/fdroid/index/v1/IndexV1StreamReceiver;

    iput-wide p2, p0, Lorg/fdroid/index/v1/IndexV1StreamProcessor;->lastTimestamp:J

    iput-object p4, p0, Lorg/fdroid/index/v1/IndexV1StreamProcessor;->locale:Ljava/lang/String;

    iput-object p5, p0, Lorg/fdroid/index/v1/IndexV1StreamProcessor;->json:Lkotlinx/serialization/json/Json;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/fdroid/index/v1/IndexV1StreamReceiver;JLjava/lang/String;Lkotlinx/serialization/json/Json;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const-string p4, "en-US"

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    .line 43
    invoke-static {}, Lorg/fdroid/index/IndexParser;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p5

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 39
    invoke-direct/range {v0 .. v5}, Lorg/fdroid/index/v1/IndexV1StreamProcessor;-><init>(Lorg/fdroid/index/v1/IndexV1StreamReceiver;JLjava/lang/String;Lkotlinx/serialization/json/Json;)V

    return-void
.end method

.method public static final synthetic access$getIndexStreamReceiver$p(Lorg/fdroid/index/v1/IndexV1StreamProcessor;)Lorg/fdroid/index/v1/IndexV1StreamReceiver;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/fdroid/index/v1/IndexV1StreamProcessor;->indexStreamReceiver:Lorg/fdroid/index/v1/IndexV1StreamReceiver;

    return-object p0
.end method

.method public static final synthetic access$getLastTimestamp$p(Lorg/fdroid/index/v1/IndexV1StreamProcessor;)J
    .locals 2

    .line 37
    iget-wide v0, p0, Lorg/fdroid/index/v1/IndexV1StreamProcessor;->lastTimestamp:J

    return-wide v0
.end method

.method public static final synthetic access$getLocale$p(Lorg/fdroid/index/v1/IndexV1StreamProcessor;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/fdroid/index/v1/IndexV1StreamProcessor;->locale:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final process(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlinx/serialization/SerializationException;,
            Lorg/fdroid/index/v1/OldIndexException;
        }
    .end annotation

    const-string v0, "inputStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/index/v1/IndexV1StreamProcessor;->json:Lkotlinx/serialization/json/Json;

    .line 48
    new-instance v1, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;

    invoke-direct {v1, p0}, Lorg/fdroid/index/v1/IndexV1StreamProcessor$IndexStreamSerializer;-><init>(Lorg/fdroid/index/v1/IndexV1StreamProcessor;)V

    invoke-static {v0, v1, p1}, Lkotlinx/serialization/json/JvmStreamsKt;->decodeFromStream(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/DeserializationStrategy;Ljava/io/InputStream;)Ljava/lang/Object;

    return-void
.end method
