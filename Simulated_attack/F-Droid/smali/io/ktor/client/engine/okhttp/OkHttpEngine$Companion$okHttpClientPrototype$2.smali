.class final Lio/ktor/client/engine/okhttp/OkHttpEngine$Companion$okHttpClientPrototype$2;
.super Lkotlin/jvm/internal/Lambda;
.source "OkHttpEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/engine/okhttp/OkHttpEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/client/engine/okhttp/OkHttpEngine$Companion$okHttpClientPrototype$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$Companion$okHttpClientPrototype$2;

    invoke-direct {v0}, Lio/ktor/client/engine/okhttp/OkHttpEngine$Companion$okHttpClientPrototype$2;-><init>()V

    sput-object v0, Lio/ktor/client/engine/okhttp/OkHttpEngine$Companion$okHttpClientPrototype$2;->INSTANCE:Lio/ktor/client/engine/okhttp/OkHttpEngine$Companion$okHttpClientPrototype$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lio/ktor/client/engine/okhttp/OkHttpEngine$Companion$okHttpClientPrototype$2;->invoke()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lokhttp3/OkHttpClient;
    .locals 1

    .line 131
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method
