.class public final Lio/ktor/websocket/CloseReason$Codes$Companion;
.super Ljava/lang/Object;
.source "CloseReason.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/websocket/CloseReason$Codes;
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
    invoke-direct {p0}, Lio/ktor/websocket/CloseReason$Codes$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final byCode(S)Lio/ktor/websocket/CloseReason$Codes;
    .locals 1

    .line 69
    invoke-static {}, Lio/ktor/websocket/CloseReason$Codes;->access$getByCodeMap$cp()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/ktor/websocket/CloseReason$Codes;

    return-object p1
.end method
