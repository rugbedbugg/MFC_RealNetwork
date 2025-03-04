.class public final Landroidx/work/impl/Migration_8_9;
.super Landroidx/room/migration/Migration;
.source "WorkDatabaseMigrations.kt"


# static fields
.field public static final INSTANCE:Landroidx/work/impl/Migration_8_9;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/work/impl/Migration_8_9;

    invoke-direct {v0}, Landroidx/work/impl/Migration_8_9;-><init>()V

    sput-object v0, Landroidx/work/impl/Migration_8_9;->INSTANCE:Landroidx/work/impl/Migration_8_9;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/16 v0, 0x8

    const/16 v1, 0x9

    .line 197
    invoke-direct {p0, v0, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ALTER TABLE workspec ADD COLUMN `run_in_foreground` INTEGER NOT NULL DEFAULT 0"

    .line 199
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
