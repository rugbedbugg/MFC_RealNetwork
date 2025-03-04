.class public abstract Lio/ktor/utils/io/jvm/javaio/PollersKt;
.super Ljava/lang/Object;
.source "Pollers.kt"


# static fields
.field private static final parkingImplLocal:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lio/ktor/utils/io/jvm/javaio/PollersKt;->parkingImplLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static final getParkingImpl()Lio/ktor/utils/io/jvm/javaio/Parking;
    .locals 1

    sget-object v0, Lio/ktor/utils/io/jvm/javaio/PollersKt;->parkingImplLocal:Ljava/lang/ThreadLocal;

    .line 18
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/utils/io/jvm/javaio/Parking;

    if-nez v0, :cond_0

    sget-object v0, Lio/ktor/utils/io/jvm/javaio/DefaultParking;->INSTANCE:Lio/ktor/utils/io/jvm/javaio/DefaultParking;

    :cond_0
    return-object v0
.end method

.method public static final isParkingAllowed()Z
    .locals 2

    .line 28
    invoke-static {}, Lio/ktor/utils/io/jvm/javaio/PollersKt;->getParkingImpl()Lio/ktor/utils/io/jvm/javaio/Parking;

    move-result-object v0

    sget-object v1, Lio/ktor/utils/io/jvm/javaio/ProhibitParking;->INSTANCE:Lio/ktor/utils/io/jvm/javaio/ProhibitParking;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
