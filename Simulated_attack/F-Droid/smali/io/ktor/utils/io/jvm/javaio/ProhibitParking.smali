.class final Lio/ktor/utils/io/jvm/javaio/ProhibitParking;
.super Ljava/lang/Object;
.source "Pollers.kt"

# interfaces
.implements Lio/ktor/utils/io/jvm/javaio/Parking;


# static fields
.field public static final INSTANCE:Lio/ktor/utils/io/jvm/javaio/ProhibitParking;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lio/ktor/utils/io/jvm/javaio/ProhibitParking;

    invoke-direct {v0}, Lio/ktor/utils/io/jvm/javaio/ProhibitParking;-><init>()V

    sput-object v0, Lio/ktor/utils/io/jvm/javaio/ProhibitParking;->INSTANCE:Lio/ktor/utils/io/jvm/javaio/ProhibitParking;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final fail()Ljava/lang/Void;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Parking is prohibited on this thread. Most likely you are using blocking operation on the wrong thread/dispatcher that doesn\'t allow blocking. Consider wrapping you blocking code withContext(Dispatchers.IO) {...}."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public park(J)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lio/ktor/utils/io/jvm/javaio/ProhibitParking;->fail()Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public bridge synthetic unpark(Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p1, Ljava/lang/Thread;

    invoke-virtual {p0, p1}, Lio/ktor/utils/io/jvm/javaio/ProhibitParking;->unpark(Ljava/lang/Thread;)V

    return-void
.end method

.method public unpark(Ljava/lang/Thread;)V
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sget-object v0, Lio/ktor/utils/io/jvm/javaio/DefaultParking;->INSTANCE:Lio/ktor/utils/io/jvm/javaio/DefaultParking;

    invoke-virtual {v0, p1}, Lio/ktor/utils/io/jvm/javaio/DefaultParking;->unpark(Ljava/lang/Thread;)V

    return-void
.end method
