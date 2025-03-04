.class final Lio/ktor/client/engine/okhttp/OkHttpConfig$config$1;
.super Lkotlin/jvm/internal/Lambda;
.source "OkHttpConfig.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/okhttp/OkHttpConfig;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/client/engine/okhttp/OkHttpConfig$config$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lio/ktor/client/engine/okhttp/OkHttpConfig$config$1;

    invoke-direct {v0}, Lio/ktor/client/engine/okhttp/OkHttpConfig$config$1;-><init>()V

    sput-object v0, Lio/ktor/client/engine/okhttp/OkHttpConfig$config$1;->INSTANCE:Lio/ktor/client/engine/okhttp/OkHttpConfig$config$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {p0, p1}, Lio/ktor/client/engine/okhttp/OkHttpConfig$config$1;->invoke(Lokhttp3/OkHttpClient$Builder;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lokhttp3/OkHttpClient$Builder;)V
    .locals 1

    const-string v0, "$this$null"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    .line 17
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    const/4 v0, 0x1

    .line 19
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    return-void
.end method
