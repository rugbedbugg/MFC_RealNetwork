.class public final Lio/ktor/http/HttpMethod$Companion;
.super Ljava/lang/Object;
.source "HttpMethod.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/HttpMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
    invoke-direct {p0}, Lio/ktor/http/HttpMethod$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getGet()Lio/ktor/http/HttpMethod;
    .locals 1

    .line 14
    invoke-static {}, Lio/ktor/http/HttpMethod;->access$getGet$cp()Lio/ktor/http/HttpMethod;

    move-result-object v0

    return-object v0
.end method

.method public final getHead()Lio/ktor/http/HttpMethod;
    .locals 1

    .line 21
    invoke-static {}, Lio/ktor/http/HttpMethod;->access$getHead$cp()Lio/ktor/http/HttpMethod;

    move-result-object v0

    return-object v0
.end method

.method public final getPost()Lio/ktor/http/HttpMethod;
    .locals 1

    .line 15
    invoke-static {}, Lio/ktor/http/HttpMethod;->access$getPost$cp()Lio/ktor/http/HttpMethod;

    move-result-object v0

    return-object v0
.end method
