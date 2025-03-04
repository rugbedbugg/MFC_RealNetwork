.class final Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;
.super Ljava/lang/Object;
.source "FrameworkSQLiteOpenHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DBRefHolder"
.end annotation


# instance fields
.field private db:Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;


# direct methods
.method public constructor <init>(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 0

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;->db:Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    return-void
.end method


# virtual methods
.method public final getDb()Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;->db:Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    return-object v0
.end method

.method public final setDb(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;->db:Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    return-void
.end method
