.class final Lorg/fdroid/download/HttpManager$getNewHttpClient$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "HttpManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/download/HttpManager$getNewHttpClient$1;->invoke(Lio/ktor/client/HttpClientConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/download/HttpManager;


# direct methods
.method constructor <init>(Lorg/fdroid/download/HttpManager;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/download/HttpManager$getNewHttpClient$1$2;->this$0:Lorg/fdroid/download/HttpManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 86
    check-cast p1, Lio/ktor/client/plugins/UserAgent$Config;

    invoke-virtual {p0, p1}, Lorg/fdroid/download/HttpManager$getNewHttpClient$1$2;->invoke(Lio/ktor/client/plugins/UserAgent$Config;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lio/ktor/client/plugins/UserAgent$Config;)V
    .locals 1

    const-string v0, "$this$install"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/download/HttpManager$getNewHttpClient$1$2;->this$0:Lorg/fdroid/download/HttpManager;

    .line 87
    invoke-static {v0}, Lorg/fdroid/download/HttpManager;->access$getUserAgent$p(Lorg/fdroid/download/HttpManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/ktor/client/plugins/UserAgent$Config;->setAgent(Ljava/lang/String;)V

    return-void
.end method
