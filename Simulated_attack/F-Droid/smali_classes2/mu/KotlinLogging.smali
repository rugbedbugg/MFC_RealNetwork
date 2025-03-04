.class public final Lmu/KotlinLogging;
.super Ljava/lang/Object;
.source "KotlinLogging.kt"


# static fields
.field public static final INSTANCE:Lmu/KotlinLogging;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lmu/KotlinLogging;

    invoke-direct {v0}, Lmu/KotlinLogging;-><init>()V

    sput-object v0, Lmu/KotlinLogging;->INSTANCE:Lmu/KotlinLogging;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final logger(Lkotlin/jvm/functions/Function0;)Lmu/KLogger;
    .locals 5

    const-string v0, "func"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v0, Lmu/internal/KLoggerFactory;->INSTANCE:Lmu/internal/KLoggerFactory;

    .line 30
    sget-object v0, Lmu/internal/KLoggerNameResolver;->INSTANCE:Lmu/internal/KLoggerNameResolver;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "name"

    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Kt$"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v0, v3, v2, v3}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "$"

    .line 19
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, v0, v3, v2, v3}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    const-string v0, "slicedName"

    .line 22
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object p1

    const-string v0, "LoggerFactory.getLogger(name)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    instance-of v0, p1, Lorg/slf4j/spi/LocationAwareLogger;

    if-eqz v0, :cond_2

    .line 42
    new-instance v0, Lmu/internal/LocationAwareKLogger;

    check-cast p1, Lorg/slf4j/spi/LocationAwareLogger;

    invoke-direct {v0, p1}, Lmu/internal/LocationAwareKLogger;-><init>(Lorg/slf4j/spi/LocationAwareLogger;)V

    goto :goto_1

    .line 44
    :cond_2
    new-instance v0, Lmu/internal/LocationIgnorantKLogger;

    invoke-direct {v0, p1}, Lmu/internal/LocationIgnorantKLogger;-><init>(Lorg/slf4j/Logger;)V

    :goto_1
    return-object v0
.end method
