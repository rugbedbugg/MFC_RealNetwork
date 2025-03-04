.class public final Lorg/fdroid/database/FDroidDatabaseHolder;
.super Ljava/lang/Object;
.source "FDroidDatabaseHolder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/database/FDroidDatabaseHolder$FixtureCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0017B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00072\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0007R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0004\n\u0002\u0008\u0005R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u000b8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lorg/fdroid/database/FDroidDatabaseHolder;",
        "",
        "()V",
        "INSTANCE",
        "Lorg/fdroid/database/FDroidDatabaseInt;",
        "INSTANCE$1",
        "TAG",
        "",
        "getTAG$database_release",
        "()Ljava/lang/String;",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "getDispatcher$database_release",
        "()Lkotlinx/coroutines/CoroutineDispatcher;",
        "lock",
        "Ljava/lang/Object;",
        "getDb",
        "Lorg/fdroid/database/FDroidDatabase;",
        "context",
        "Landroid/content/Context;",
        "name",
        "fixture",
        "Lorg/fdroid/database/FDroidFixture;",
        "FixtureCallback",
        "database_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lorg/fdroid/database/FDroidDatabaseHolder;

.field private static volatile INSTANCE$1:Lorg/fdroid/database/FDroidDatabaseInt;

.field private static final TAG:Ljava/lang/String;

.field private static final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/fdroid/database/FDroidDatabaseHolder;

    invoke-direct {v0}, Lorg/fdroid/database/FDroidDatabaseHolder;-><init>()V

    sput-object v0, Lorg/fdroid/database/FDroidDatabaseHolder;->INSTANCE:Lorg/fdroid/database/FDroidDatabaseHolder;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/fdroid/database/FDroidDatabaseHolder;->lock:Ljava/lang/Object;

    const-class v0, Lorg/fdroid/database/FDroidDatabase;

    .line 38
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/fdroid/database/FDroidDatabaseHolder;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$p()Lorg/fdroid/database/FDroidDatabaseInt;
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/database/FDroidDatabaseHolder;->INSTANCE$1:Lorg/fdroid/database/FDroidDatabaseInt;

    return-object v0
.end method

.method public static final synthetic access$getLock$p()Ljava/lang/Object;
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/database/FDroidDatabaseHolder;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method public static final getDb(Landroid/content/Context;)Lorg/fdroid/database/FDroidDatabase;
    .locals 2

    .line 0
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p0, v0, v0, v1, v0}, Lorg/fdroid/database/FDroidDatabaseHolder;->getDb$default(Landroid/content/Context;Ljava/lang/String;Lorg/fdroid/database/FDroidFixture;ILjava/lang/Object;)Lorg/fdroid/database/FDroidDatabase;

    move-result-object p0

    return-object p0
.end method

.method public static final getDb(Landroid/content/Context;Ljava/lang/String;)Lorg/fdroid/database/FDroidDatabase;
    .locals 2

    .line 0
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1, v0}, Lorg/fdroid/database/FDroidDatabaseHolder;->getDb$default(Landroid/content/Context;Ljava/lang/String;Lorg/fdroid/database/FDroidFixture;ILjava/lang/Object;)Lorg/fdroid/database/FDroidDatabase;

    move-result-object p0

    return-object p0
.end method

.method public static final getDb(Landroid/content/Context;Ljava/lang/String;Lorg/fdroid/database/FDroidFixture;)Lorg/fdroid/database/FDroidDatabase;
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lorg/fdroid/database/FDroidDatabaseHolder;->INSTANCE$1:Lorg/fdroid/database/FDroidDatabaseInt;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/fdroid/database/FDroidDatabaseHolder;->lock:Ljava/lang/Object;

    .line 55
    monitor-enter v0

    .line 57
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "getApplicationContext(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lorg/fdroid/database/FDroidDatabaseInt;

    .line 56
    invoke-static {p0, v1, p1}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [Landroidx/room/migration/Migration;

    .line 61
    invoke-static {}, Lorg/fdroid/database/MigrationsKt;->getMIGRATION_2_3()Landroidx/room/migration/Migration;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p1, v2

    invoke-static {}, Lorg/fdroid/database/MigrationsKt;->getMIGRATION_5_6()Landroidx/room/migration/Migration;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, p1, v2

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    .line 64
    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    if-eqz p2, :cond_1

    .line 66
    new-instance p1, Lorg/fdroid/database/FDroidDatabaseHolder$FixtureCallback;

    invoke-direct {p1, p2}, Lorg/fdroid/database/FDroidDatabaseHolder$FixtureCallback;-><init>(Lorg/fdroid/database/FDroidFixture;)V

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase$Builder;->addCallback(Landroidx/room/RoomDatabase$Callback;)Landroidx/room/RoomDatabase$Builder;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 68
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p0

    check-cast p0, Lorg/fdroid/database/FDroidDatabaseInt;

    sput-object p0, Lorg/fdroid/database/FDroidDatabaseHolder;->INSTANCE$1:Lorg/fdroid/database/FDroidDatabaseInt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit v0

    move-object v0, p0

    :goto_1
    return-object v0

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public static synthetic getDb$default(Landroid/content/Context;Ljava/lang/String;Lorg/fdroid/database/FDroidFixture;ILjava/lang/Object;)Lorg/fdroid/database/FDroidDatabase;
    .locals 0

    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_0

    const-string p1, "fdroid_db"

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 48
    :cond_1
    invoke-static {p0, p1, p2}, Lorg/fdroid/database/FDroidDatabaseHolder;->getDb(Landroid/content/Context;Ljava/lang/String;Lorg/fdroid/database/FDroidFixture;)Lorg/fdroid/database/FDroidDatabase;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getDispatcher$database_release()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1

    .line 39
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public final getTAG$database_release()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/database/FDroidDatabaseHolder;->TAG:Ljava/lang/String;

    return-object v0
.end method
