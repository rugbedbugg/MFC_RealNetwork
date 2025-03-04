.class final Lorg/fdroid/database/FDroidDatabaseHolder$FixtureCallback;
.super Landroidx/room/RoomDatabase$Callback;
.source "FDroidDatabaseHolder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/database/FDroidDatabaseHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FixtureCallback"
.end annotation


# instance fields
.field private final fixture:Lorg/fdroid/database/FDroidFixture;


# direct methods
.method public constructor <init>(Lorg/fdroid/database/FDroidFixture;)V
    .locals 1

    const-string v0, "fixture"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Landroidx/room/RoomDatabase$Callback;-><init>()V

    iput-object p1, p0, Lorg/fdroid/database/FDroidDatabaseHolder$FixtureCallback;->fixture:Lorg/fdroid/database/FDroidFixture;

    return-void
.end method

.method public static final synthetic access$getFixture$p(Lorg/fdroid/database/FDroidDatabaseHolder$FixtureCallback;)Lorg/fdroid/database/FDroidFixture;
    .locals 0

    .line 75
    iget-object p0, p0, Lorg/fdroid/database/FDroidDatabaseHolder$FixtureCallback;->fixture:Lorg/fdroid/database/FDroidFixture;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 7

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-super {p0, p1}, Landroidx/room/RoomDatabase$Callback;->onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 79
    sget-object v1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    sget-object p1, Lorg/fdroid/database/FDroidDatabaseHolder;->INSTANCE:Lorg/fdroid/database/FDroidDatabaseHolder;

    invoke-virtual {p1}, Lorg/fdroid/database/FDroidDatabaseHolder;->getDispatcher$database_release()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lorg/fdroid/database/FDroidDatabaseHolder$FixtureCallback$onCreate$1;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Lorg/fdroid/database/FDroidDatabaseHolder$FixtureCallback$onCreate$1;-><init>(Lorg/fdroid/database/FDroidDatabaseHolder$FixtureCallback;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public onDestructiveMigration(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, p1}, Lorg/fdroid/database/FDroidDatabaseHolder$FixtureCallback;->onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method
