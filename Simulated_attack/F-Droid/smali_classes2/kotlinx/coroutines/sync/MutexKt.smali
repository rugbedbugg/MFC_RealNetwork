.class public abstract Lkotlinx/coroutines/sync/MutexKt;
.super Ljava/lang/Object;
.source "Mutex.kt"


# static fields
.field private static final NO_OWNER:Lkotlinx/coroutines/internal/Symbol;

.field private static final ON_LOCK_ALREADY_LOCKED_BY_OWNER:Lkotlinx/coroutines/internal/Symbol;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 294
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "NO_OWNER"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/sync/MutexKt;->NO_OWNER:Lkotlinx/coroutines/internal/Symbol;

    .line 295
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "ALREADY_LOCKED_BY_OWNER"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/sync/MutexKt;->ON_LOCK_ALREADY_LOCKED_BY_OWNER:Lkotlinx/coroutines/internal/Symbol;

    return-void
.end method

.method public static final Mutex(Z)Lkotlinx/coroutines/sync/Mutex;
    .locals 1

    .line 109
    new-instance v0, Lkotlinx/coroutines/sync/MutexImpl;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/sync/MutexImpl;-><init>(Z)V

    return-object v0
.end method

.method public static synthetic Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 108
    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/sync/MutexKt;->Mutex(Z)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getNO_OWNER$p()Lkotlinx/coroutines/internal/Symbol;
    .locals 1

    .line 0
    sget-object v0, Lkotlinx/coroutines/sync/MutexKt;->NO_OWNER:Lkotlinx/coroutines/internal/Symbol;

    return-object v0
.end method
