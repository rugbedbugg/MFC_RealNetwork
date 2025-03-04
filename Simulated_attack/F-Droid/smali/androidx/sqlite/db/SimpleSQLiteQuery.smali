.class public final Landroidx/sqlite/db/SimpleSQLiteQuery;
.super Ljava/lang/Object;
.source "SimpleSQLiteQuery.kt"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteQuery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/sqlite/db/SimpleSQLiteQuery$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/sqlite/db/SimpleSQLiteQuery$Companion;


# instance fields
.field private final bindArgs:[Ljava/lang/Object;

.field private final query:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Landroidx/sqlite/db/SimpleSQLiteQuery$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/sqlite/db/SimpleSQLiteQuery;->Companion:Landroidx/sqlite/db/SimpleSQLiteQuery$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/String;

    iput-object p2, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bindTo(Landroidx/sqlite/db/SupportSQLiteProgram;)V
    .locals 2

    const-string v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/sqlite/db/SimpleSQLiteQuery;->Companion:Landroidx/sqlite/db/SimpleSQLiteQuery$Companion;

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:[Ljava/lang/Object;

    .line 49
    invoke-virtual {v0, p1, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery$Companion;->bind(Landroidx/sqlite/db/SupportSQLiteProgram;[Ljava/lang/Object;)V

    return-void
.end method

.method public getSql()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/String;

    return-object v0
.end method
