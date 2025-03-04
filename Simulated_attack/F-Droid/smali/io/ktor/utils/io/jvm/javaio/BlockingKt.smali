.class public abstract Lio/ktor/utils/io/jvm/javaio/BlockingKt;
.super Ljava/lang/Object;
.source "Blocking.kt"


# static fields
.field private static final ADAPTER_LOGGER$delegate:Lkotlin/Lazy;

.field private static final CloseToken:Ljava/lang/Object;

.field private static final FlushToken:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lio/ktor/utils/io/jvm/javaio/BlockingKt$ADAPTER_LOGGER$2;->INSTANCE:Lio/ktor/utils/io/jvm/javaio/BlockingKt$ADAPTER_LOGGER$2;

    .line 16
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/jvm/javaio/BlockingKt;->ADAPTER_LOGGER$delegate:Lkotlin/Lazy;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/ktor/utils/io/jvm/javaio/BlockingKt;->CloseToken:Ljava/lang/Object;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/ktor/utils/io/jvm/javaio/BlockingKt;->FlushToken:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getADAPTER_LOGGER()Lorg/slf4j/Logger;
    .locals 1

    .line 1
    invoke-static {}, Lio/ktor/utils/io/jvm/javaio/BlockingKt;->getADAPTER_LOGGER()Lorg/slf4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method private static final getADAPTER_LOGGER()Lorg/slf4j/Logger;
    .locals 1

    sget-object v0, Lio/ktor/utils/io/jvm/javaio/BlockingKt;->ADAPTER_LOGGER$delegate:Lkotlin/Lazy;

    .line 16
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/slf4j/Logger;

    return-object v0
.end method

.method public static final toInputStream(Lio/ktor/utils/io/ByteReadChannel;Lkotlinx/coroutines/Job;)Ljava/io/InputStream;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter;

    invoke-direct {v0, p1, p0}, Lio/ktor/utils/io/jvm/javaio/InputAdapter;-><init>(Lkotlinx/coroutines/Job;Lio/ktor/utils/io/ByteReadChannel;)V

    return-object v0
.end method

.method public static synthetic toInputStream$default(Lio/ktor/utils/io/ByteReadChannel;Lkotlinx/coroutines/Job;ILjava/lang/Object;)Ljava/io/InputStream;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 22
    :cond_0
    invoke-static {p0, p1}, Lio/ktor/utils/io/jvm/javaio/BlockingKt;->toInputStream(Lio/ktor/utils/io/ByteReadChannel;Lkotlinx/coroutines/Job;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method
