.class public final Lio/ktor/utils/io/internal/ClosedElement;
.super Ljava/lang/Object;
.source "ByteBufferChannelInternals.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/utils/io/internal/ClosedElement$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/utils/io/internal/ClosedElement$Companion;

.field private static final EmptyCause:Lio/ktor/utils/io/internal/ClosedElement;


# instance fields
.field private final cause:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/utils/io/internal/ClosedElement$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/utils/io/internal/ClosedElement$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/utils/io/internal/ClosedElement;->Companion:Lio/ktor/utils/io/internal/ClosedElement$Companion;

    .line 71
    new-instance v0, Lio/ktor/utils/io/internal/ClosedElement;

    invoke-direct {v0, v1}, Lio/ktor/utils/io/internal/ClosedElement;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Lio/ktor/utils/io/internal/ClosedElement;->EmptyCause:Lio/ktor/utils/io/internal/ClosedElement;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/utils/io/internal/ClosedElement;->cause:Ljava/lang/Throwable;

    return-void
.end method

.method public static final synthetic access$getEmptyCause$cp()Lio/ktor/utils/io/internal/ClosedElement;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/utils/io/internal/ClosedElement;->EmptyCause:Lio/ktor/utils/io/internal/ClosedElement;

    return-object v0
.end method


# virtual methods
.method public final getCause()Ljava/lang/Throwable;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/utils/io/internal/ClosedElement;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getSendException()Ljava/lang/Throwable;
    .locals 2

    iget-object v0, p0, Lio/ktor/utils/io/internal/ClosedElement;->cause:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lio/ktor/utils/io/ClosedWriteChannelException;

    const-string v1, "The channel was closed"

    invoke-direct {v0, v1}, Lio/ktor/utils/io/ClosedWriteChannelException;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Closed["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/ktor/utils/io/internal/ClosedElement;->getSendException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
