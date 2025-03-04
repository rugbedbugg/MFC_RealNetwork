.class final Lorg/fdroid/download/Mirror$url$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Mirror.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/download/Mirror;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/download/Mirror;


# direct methods
.method constructor <init>(Lorg/fdroid/download/Mirror;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/download/Mirror$url$2;->this$0:Lorg/fdroid/download/Mirror;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lio/ktor/http/Url;
    .locals 5

    const-string v0, "http://127.0.0.1:64335"

    :try_start_0
    iget-object v1, p0, Lorg/fdroid/download/Mirror$url$2;->this$0:Lorg/fdroid/download/Mirror;

    .line 20
    invoke-virtual {v1}, Lorg/fdroid/download/Mirror;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0x2f

    aput-char v4, v2, v3

    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/ktor/http/URLUtilsKt;->URLBuilder(Ljava/lang/String;)Lio/ktor/http/URLBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/http/URLBuilder;->build()Lio/ktor/http/Url;

    move-result-object v0
    :try_end_0
    .catch Lio/ktor/http/URLParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 28
    :catch_0
    sget-object v1, Lmu/KotlinLogging;->INSTANCE:Lmu/KotlinLogging;

    sget-object v2, Lorg/fdroid/download/Mirror$url$2$log$2;->INSTANCE:Lorg/fdroid/download/Mirror$url$2$log$2;

    invoke-virtual {v1, v2}, Lmu/KotlinLogging;->logger(Lkotlin/jvm/functions/Function0;)Lmu/KLogger;

    move-result-object v1

    .line 29
    new-instance v2, Lorg/fdroid/download/Mirror$url$2$2;

    iget-object v3, p0, Lorg/fdroid/download/Mirror$url$2;->this$0:Lorg/fdroid/download/Mirror;

    invoke-direct {v2, v3}, Lorg/fdroid/download/Mirror$url$2$2;-><init>(Lorg/fdroid/download/Mirror;)V

    invoke-interface {v1, v2}, Lmu/KLogger;->warn(Lkotlin/jvm/functions/Function0;)V

    .line 30
    invoke-static {v0}, Lio/ktor/http/URLUtilsKt;->URLBuilder(Ljava/lang/String;)Lio/ktor/http/URLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/http/URLBuilder;->build()Lio/ktor/http/Url;

    move-result-object v0

    goto :goto_0

    .line 24
    :catch_1
    sget-object v1, Lmu/KotlinLogging;->INSTANCE:Lmu/KotlinLogging;

    sget-object v2, Lorg/fdroid/download/Mirror$url$2$log$1;->INSTANCE:Lorg/fdroid/download/Mirror$url$2$log$1;

    invoke-virtual {v1, v2}, Lmu/KotlinLogging;->logger(Lkotlin/jvm/functions/Function0;)Lmu/KLogger;

    move-result-object v1

    .line 25
    new-instance v2, Lorg/fdroid/download/Mirror$url$2$1;

    iget-object v3, p0, Lorg/fdroid/download/Mirror$url$2;->this$0:Lorg/fdroid/download/Mirror;

    invoke-direct {v2, v3}, Lorg/fdroid/download/Mirror$url$2$1;-><init>(Lorg/fdroid/download/Mirror;)V

    invoke-interface {v1, v2}, Lmu/KLogger;->warn(Lkotlin/jvm/functions/Function0;)V

    .line 26
    invoke-static {v0}, Lio/ktor/http/URLUtilsKt;->URLBuilder(Ljava/lang/String;)Lio/ktor/http/URLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/http/URLBuilder;->build()Lio/ktor/http/Url;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lorg/fdroid/download/Mirror$url$2;->invoke()Lio/ktor/http/Url;

    move-result-object v0

    return-object v0
.end method
