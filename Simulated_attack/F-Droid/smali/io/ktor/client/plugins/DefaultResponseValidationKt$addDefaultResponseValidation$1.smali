.class final Lio/ktor/client/plugins/DefaultResponseValidationKt$addDefaultResponseValidation$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DefaultResponseValidation.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/DefaultResponseValidationKt;->addDefaultResponseValidation(Lio/ktor/client/HttpClientConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $this_addDefaultResponseValidation:Lio/ktor/client/HttpClientConfig;


# direct methods
.method constructor <init>(Lio/ktor/client/HttpClientConfig;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lio/ktor/client/plugins/DefaultResponseValidationKt$addDefaultResponseValidation$1;->$this_addDefaultResponseValidation:Lio/ktor/client/HttpClientConfig;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Lio/ktor/client/plugins/HttpCallValidator$Config;

    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/DefaultResponseValidationKt$addDefaultResponseValidation$1;->invoke(Lio/ktor/client/plugins/HttpCallValidator$Config;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lio/ktor/client/plugins/HttpCallValidator$Config;)V
    .locals 2

    const-string v0, "$this$HttpResponseValidator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/ktor/client/plugins/DefaultResponseValidationKt$addDefaultResponseValidation$1;->$this_addDefaultResponseValidation:Lio/ktor/client/HttpClientConfig;

    .line 27
    invoke-virtual {v0}, Lio/ktor/client/HttpClientConfig;->getExpectSuccess()Z

    move-result v0

    invoke-virtual {p1, v0}, Lio/ktor/client/plugins/HttpCallValidator$Config;->setExpectSuccess(Z)V

    .line 29
    new-instance v0, Lio/ktor/client/plugins/DefaultResponseValidationKt$addDefaultResponseValidation$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/client/plugins/DefaultResponseValidationKt$addDefaultResponseValidation$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1, v0}, Lio/ktor/client/plugins/HttpCallValidator$Config;->validateResponse(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
