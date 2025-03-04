.class public final Lio/ktor/websocket/CloseReason;
.super Ljava/lang/Object;
.source "CloseReason.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/websocket/CloseReason$Codes;
    }
.end annotation


# instance fields
.field private final code:S

.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/ktor/websocket/CloseReason$Codes;Ljava/lang/String;)V
    .locals 1

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lio/ktor/websocket/CloseReason$Codes;->getCode()S

    move-result p1

    invoke-direct {p0, p1, p2}, Lio/ktor/websocket/CloseReason;-><init>(SLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(SLjava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lio/ktor/websocket/CloseReason;->code:S

    iput-object p2, p0, Lio/ktor/websocket/CloseReason;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/ktor/websocket/CloseReason;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/ktor/websocket/CloseReason;

    iget-short v1, p0, Lio/ktor/websocket/CloseReason;->code:S

    iget-short v3, p1, Lio/ktor/websocket/CloseReason;->code:S

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lio/ktor/websocket/CloseReason;->message:Ljava/lang/String;

    iget-object p1, p1, Lio/ktor/websocket/CloseReason;->message:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCode()S
    .locals 1

    .line 0
    iget-short v0, p0, Lio/ktor/websocket/CloseReason;->code:S

    return v0
.end method

.method public final getKnownReason()Lio/ktor/websocket/CloseReason$Codes;
    .locals 2

    .line 22
    sget-object v0, Lio/ktor/websocket/CloseReason$Codes;->Companion:Lio/ktor/websocket/CloseReason$Codes$Companion;

    iget-short v1, p0, Lio/ktor/websocket/CloseReason;->code:S

    invoke-virtual {v0, v1}, Lio/ktor/websocket/CloseReason$Codes$Companion;->byCode(S)Lio/ktor/websocket/CloseReason$Codes;

    move-result-object v0

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/websocket/CloseReason;->message:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget-short v0, p0, Lio/ktor/websocket/CloseReason;->code:S

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/ktor/websocket/CloseReason;->message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CloseReason(reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/ktor/websocket/CloseReason;->getKnownReason()Lio/ktor/websocket/CloseReason$Codes;

    move-result-object v1

    if-nez v1, :cond_0

    iget-short v1, p0, Lio/ktor/websocket/CloseReason;->code:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/ktor/websocket/CloseReason;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
