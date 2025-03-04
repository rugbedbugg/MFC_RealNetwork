.class public final Lio/ktor/http/URLProtocol$Companion;
.super Ljava/lang/Object;
.source "URLProtocol.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/URLProtocol;
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
    invoke-direct {p0}, Lio/ktor/http/URLProtocol$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createOrDefault(Ljava/lang/String;)Lio/ktor/http/URLProtocol;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-static {p1}, Lio/ktor/util/TextKt;->toLowerCasePreservingASCIIRules(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 55
    sget-object v0, Lio/ktor/http/URLProtocol;->Companion:Lio/ktor/http/URLProtocol$Companion;

    invoke-virtual {v0}, Lio/ktor/http/URLProtocol$Companion;->getByName()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/http/URLProtocol;

    if-nez v0, :cond_0

    new-instance v0, Lio/ktor/http/URLProtocol;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/ktor/http/URLProtocol;-><init>(Ljava/lang/String;I)V

    :cond_0
    return-object v0
.end method

.method public final getByName()Ljava/util/Map;
    .locals 1

    .line 49
    invoke-static {}, Lio/ktor/http/URLProtocol;->access$getByName$cp()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getHTTP()Lio/ktor/http/URLProtocol;
    .locals 1

    .line 24
    invoke-static {}, Lio/ktor/http/URLProtocol;->access$getHTTP$cp()Lio/ktor/http/URLProtocol;

    move-result-object v0

    return-object v0
.end method
