.class final Lio/ktor/utils/io/jvm/javaio/DefaultParking;
.super Ljava/lang/Object;
.source "Pollers.kt"

# interfaces
.implements Lio/ktor/utils/io/jvm/javaio/Parking;


# static fields
.field public static final INSTANCE:Lio/ktor/utils/io/jvm/javaio/DefaultParking;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lio/ktor/utils/io/jvm/javaio/DefaultParking;

    invoke-direct {v0}, Lio/ktor/utils/io/jvm/javaio/DefaultParking;-><init>()V

    sput-object v0, Lio/ktor/utils/io/jvm/javaio/DefaultParking;->INSTANCE:Lio/ktor/utils/io/jvm/javaio/DefaultParking;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public park(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 44
    invoke-static {p1, p2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    return-void

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic unpark(Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p1, Ljava/lang/Thread;

    invoke-virtual {p0, p1}, Lio/ktor/utils/io/jvm/javaio/DefaultParking;->unpark(Ljava/lang/Thread;)V

    return-void
.end method

.method public unpark(Ljava/lang/Thread;)V
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    return-void
.end method
