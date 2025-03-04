.class final Lio/ktor/client/engine/okhttp/OkHttpEngine$Companion;
.super Ljava/lang/Object;
.source "OkHttpEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/engine/okhttp/OkHttpEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lio/ktor/client/engine/okhttp/OkHttpEngine$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOkHttpClientPrototype()Lokhttp3/OkHttpClient;
    .locals 1

    .line 130
    invoke-static {}, Lio/ktor/client/engine/okhttp/OkHttpEngine;->access$getOkHttpClientPrototype$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient;

    return-object v0
.end method
