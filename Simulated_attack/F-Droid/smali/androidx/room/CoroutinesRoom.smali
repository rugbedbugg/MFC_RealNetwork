.class public abstract Landroidx/room/CoroutinesRoom;
.super Ljava/lang/Object;
.source "CoroutinesRoom.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/CoroutinesRoom$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/room/CoroutinesRoom$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Landroidx/room/CoroutinesRoom$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/CoroutinesRoom$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/room/CoroutinesRoom;->Companion:Landroidx/room/CoroutinesRoom$Companion;

    return-void
.end method

.method public static final createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/Flow;
    .locals 1

    .line 0
    sget-object v0, Landroidx/room/CoroutinesRoom;->Companion:Landroidx/room/CoroutinesRoom$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/room/CoroutinesRoom$Companion;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method
