.class public abstract Lio/ktor/util/logging/KtorSimpleLoggerJvmKt;
.super Ljava/lang/Object;
.source "KtorSimpleLoggerJvm.kt"


# direct methods
.method public static final KtorSimpleLogger(Ljava/lang/String;)Lorg/slf4j/Logger;
    .locals 1

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {p0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object p0

    const-string v0, "getLogger(name)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
