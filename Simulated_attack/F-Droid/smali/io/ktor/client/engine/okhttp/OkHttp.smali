.class public final Lio/ktor/client/engine/okhttp/OkHttp;
.super Ljava/lang/Object;
.source "OkHttp.kt"

# interfaces
.implements Lio/ktor/client/engine/HttpClientEngineFactory;


# static fields
.field public static final INSTANCE:Lio/ktor/client/engine/okhttp/OkHttp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lio/ktor/client/engine/okhttp/OkHttp;

    invoke-direct {v0}, Lio/ktor/client/engine/okhttp/OkHttp;-><init>()V

    sput-object v0, Lio/ktor/client/engine/okhttp/OkHttp;->INSTANCE:Lio/ktor/client/engine/okhttp/OkHttp;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lkotlin/jvm/functions/Function1;)Lio/ktor/client/engine/HttpClientEngine;
    .locals 2

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lio/ktor/client/engine/okhttp/OkHttpEngine;

    new-instance v1, Lio/ktor/client/engine/okhttp/OkHttpConfig;

    invoke-direct {v1}, Lio/ktor/client/engine/okhttp/OkHttpConfig;-><init>()V

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Lio/ktor/client/engine/okhttp/OkHttpEngine;-><init>(Lio/ktor/client/engine/okhttp/OkHttpConfig;)V

    return-object v0
.end method
