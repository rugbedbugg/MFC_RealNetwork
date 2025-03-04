.class public final Lio/ktor/client/plugins/HttpCallValidator$Config;
.super Ljava/lang/Object;
.source "HttpCallValidator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/HttpCallValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# instance fields
.field private expectSuccess:Z

.field private final responseExceptionHandlers:Ljava/util/List;

.field private final responseValidators:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/ktor/client/plugins/HttpCallValidator$Config;->responseValidators:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/ktor/client/plugins/HttpCallValidator$Config;->responseExceptionHandlers:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/ktor/client/plugins/HttpCallValidator$Config;->expectSuccess:Z

    return-void
.end method


# virtual methods
.method public final getExpectSuccess()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lio/ktor/client/plugins/HttpCallValidator$Config;->expectSuccess:Z

    return v0
.end method

.method public final getResponseExceptionHandlers$ktor_client_core()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/plugins/HttpCallValidator$Config;->responseExceptionHandlers:Ljava/util/List;

    return-object v0
.end method

.method public final getResponseValidators$ktor_client_core()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/plugins/HttpCallValidator$Config;->responseValidators:Ljava/util/List;

    return-object v0
.end method

.method public final setExpectSuccess(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lio/ktor/client/plugins/HttpCallValidator$Config;->expectSuccess:Z

    return-void
.end method

.method public final validateResponse(Lkotlin/jvm/functions/Function2;)V
    .locals 1

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/ktor/client/plugins/HttpCallValidator$Config;->responseValidators:Ljava/util/List;

    .line 108
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method
