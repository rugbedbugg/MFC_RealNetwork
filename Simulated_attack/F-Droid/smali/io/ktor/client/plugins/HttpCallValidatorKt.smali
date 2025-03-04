.class public abstract Lio/ktor/client/plugins/HttpCallValidatorKt;
.super Ljava/lang/Object;
.source "HttpCallValidator.kt"


# static fields
.field private static final ExpectSuccessAttributeKey:Lio/ktor/util/AttributeKey;

.field private static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "io.ktor.client.plugins.HttpCallValidator"

    .line 19
    invoke-static {v0}, Lio/ktor/util/logging/KtorSimpleLoggerJvmKt;->KtorSimpleLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/ktor/client/plugins/HttpCallValidatorKt;->LOGGER:Lorg/slf4j/Logger;

    .line 184
    new-instance v0, Lio/ktor/util/AttributeKey;

    const-string v1, "ExpectSuccessAttributeKey"

    invoke-direct {v0, v1}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/plugins/HttpCallValidatorKt;->ExpectSuccessAttributeKey:Lio/ktor/util/AttributeKey;

    return-void
.end method

.method private static final HttpRequest(Lio/ktor/client/request/HttpRequestBuilder;)Lio/ktor/client/plugins/HttpCallValidatorKt$HttpRequest$1;
    .locals 1

    .line 159
    new-instance v0, Lio/ktor/client/plugins/HttpCallValidatorKt$HttpRequest$1;

    invoke-direct {v0, p0}, Lio/ktor/client/plugins/HttpCallValidatorKt$HttpRequest$1;-><init>(Lio/ktor/client/request/HttpRequestBuilder;)V

    return-object v0
.end method

.method public static final HttpResponseValidator(Lio/ktor/client/HttpClientConfig;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    sget-object v0, Lio/ktor/client/plugins/HttpCallValidator;->Companion:Lio/ktor/client/plugins/HttpCallValidator$Companion;

    invoke-virtual {p0, v0, p1}, Lio/ktor/client/HttpClientConfig;->install(Lio/ktor/client/plugins/HttpClientPlugin;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$HttpRequest(Lio/ktor/client/request/HttpRequestBuilder;)Lio/ktor/client/plugins/HttpCallValidatorKt$HttpRequest$1;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/ktor/client/plugins/HttpCallValidatorKt;->HttpRequest(Lio/ktor/client/request/HttpRequestBuilder;)Lio/ktor/client/plugins/HttpCallValidatorKt$HttpRequest$1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLOGGER$p()Lorg/slf4j/Logger;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/client/plugins/HttpCallValidatorKt;->LOGGER:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public static final getExpectSuccessAttributeKey()Lio/ktor/util/AttributeKey;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/client/plugins/HttpCallValidatorKt;->ExpectSuccessAttributeKey:Lio/ktor/util/AttributeKey;

    return-object v0
.end method
