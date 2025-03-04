.class public final Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;
.super Lio/ktor/utils/io/internal/ReadWriteBufferState;
.source "ReadWriteBufferState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/internal/ReadWriteBufferState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Terminated"
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;

    invoke-direct {v0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;-><init>()V

    sput-object v0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 98
    invoke-static {}, Lio/ktor/utils/io/internal/ReadWriteBufferStateKt;->getEmptyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Lio/ktor/utils/io/internal/ReadWriteBufferStateKt;->getEmptyCapacity()Lio/ktor/utils/io/internal/RingBufferCapacity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lio/ktor/utils/io/internal/ReadWriteBufferState;-><init>(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/RingBufferCapacity;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "Terminated"

    return-object v0
.end method
