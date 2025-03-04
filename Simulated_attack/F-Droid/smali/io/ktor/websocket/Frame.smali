.class public abstract Lio/ktor/websocket/Frame;
.super Ljava/lang/Object;
.source "Frame.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/websocket/Frame$Binary;,
        Lio/ktor/websocket/Frame$Close;,
        Lio/ktor/websocket/Frame$Companion;,
        Lio/ktor/websocket/Frame$Text;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/websocket/Frame$Companion;

.field private static final Empty:[B


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private final data:[B

.field private final disposableHandle:Lkotlinx/coroutines/DisposableHandle;

.field private final fin:Z

.field private final frameType:Lio/ktor/websocket/FrameType;

.field private final rsv1:Z

.field private final rsv2:Z

.field private final rsv3:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lio/ktor/websocket/Frame$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/websocket/Frame$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/websocket/Frame;->Companion:Lio/ktor/websocket/Frame$Companion;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lio/ktor/websocket/Frame;->Empty:[B

    return-void
.end method

.method private constructor <init>(ZLio/ktor/websocket/FrameType;[BLkotlinx/coroutines/DisposableHandle;ZZZ)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/ktor/websocket/Frame;->fin:Z

    iput-object p2, p0, Lio/ktor/websocket/Frame;->frameType:Lio/ktor/websocket/FrameType;

    iput-object p3, p0, Lio/ktor/websocket/Frame;->data:[B

    iput-object p4, p0, Lio/ktor/websocket/Frame;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    iput-boolean p5, p0, Lio/ktor/websocket/Frame;->rsv1:Z

    iput-boolean p6, p0, Lio/ktor/websocket/Frame;->rsv2:Z

    iput-boolean p7, p0, Lio/ktor/websocket/Frame;->rsv3:Z

    .line 31
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    const-string p2, "wrap(data)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/ktor/websocket/Frame;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public synthetic constructor <init>(ZLio/ktor/websocket/FrameType;[BLkotlinx/coroutines/DisposableHandle;ZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lio/ktor/websocket/Frame;-><init>(ZLio/ktor/websocket/FrameType;[BLkotlinx/coroutines/DisposableHandle;ZZZ)V

    return-void
.end method


# virtual methods
.method public final getData()[B
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/websocket/Frame;->data:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Frame "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/ktor/websocket/Frame;->frameType:Lio/ktor/websocket/FrameType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (fin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/ktor/websocket/Frame;->fin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", buffer len = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/ktor/websocket/Frame;->data:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
