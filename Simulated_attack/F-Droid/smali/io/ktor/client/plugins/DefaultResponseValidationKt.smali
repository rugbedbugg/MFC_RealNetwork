.class public abstract Lio/ktor/client/plugins/DefaultResponseValidationKt;
.super Ljava/lang/Object;
.source "DefaultResponseValidation.kt"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final ValidateMark:Lio/ktor/util/AttributeKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lio/ktor/util/AttributeKey;

    const-string v1, "ValidateMark"

    invoke-direct {v0, v1}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/plugins/DefaultResponseValidationKt;->ValidateMark:Lio/ktor/util/AttributeKey;

    const-string v0, "io.ktor.client.plugins.DefaultResponseValidation"

    .line 18
    invoke-static {v0}, Lio/ktor/util/logging/KtorSimpleLoggerJvmKt;->KtorSimpleLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/ktor/client/plugins/DefaultResponseValidationKt;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public static final synthetic access$getLOGGER$p()Lorg/slf4j/Logger;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/client/plugins/DefaultResponseValidationKt;->LOGGER:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public static final synthetic access$getValidateMark$p()Lio/ktor/util/AttributeKey;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/client/plugins/DefaultResponseValidationKt;->ValidateMark:Lio/ktor/util/AttributeKey;

    return-object v0
.end method

.method public static final addDefaultResponseValidation(Lio/ktor/client/HttpClientConfig;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lio/ktor/client/plugins/DefaultResponseValidationKt$addDefaultResponseValidation$1;

    invoke-direct {v0, p0}, Lio/ktor/client/plugins/DefaultResponseValidationKt$addDefaultResponseValidation$1;-><init>(Lio/ktor/client/HttpClientConfig;)V

    invoke-static {p0, v0}, Lio/ktor/client/plugins/HttpCallValidatorKt;->HttpResponseValidator(Lio/ktor/client/HttpClientConfig;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
