.class final Lio/ktor/utils/io/jvm/javaio/BlockingKt$ADAPTER_LOGGER$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Blocking.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/jvm/javaio/BlockingKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/utils/io/jvm/javaio/BlockingKt$ADAPTER_LOGGER$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lio/ktor/utils/io/jvm/javaio/BlockingKt$ADAPTER_LOGGER$2;

    invoke-direct {v0}, Lio/ktor/utils/io/jvm/javaio/BlockingKt$ADAPTER_LOGGER$2;-><init>()V

    sput-object v0, Lio/ktor/utils/io/jvm/javaio/BlockingKt$ADAPTER_LOGGER$2;->INSTANCE:Lio/ktor/utils/io/jvm/javaio/BlockingKt$ADAPTER_LOGGER$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lio/ktor/utils/io/jvm/javaio/BlockingKt$ADAPTER_LOGGER$2;->invoke()Lorg/slf4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/slf4j/Logger;
    .locals 1

    const-class v0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;

    .line 16
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    return-object v0
.end method
