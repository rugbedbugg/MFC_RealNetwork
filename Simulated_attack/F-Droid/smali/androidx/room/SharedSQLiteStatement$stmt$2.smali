.class final Landroidx/room/SharedSQLiteStatement$stmt$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SharedSQLiteStatement.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method constructor <init>(Landroidx/room/SharedSQLiteStatement;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/room/SharedSQLiteStatement$stmt$2;->this$0:Landroidx/room/SharedSQLiteStatement;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/sqlite/db/SupportSQLiteStatement;
    .locals 1

    iget-object v0, p0, Landroidx/room/SharedSQLiteStatement$stmt$2;->this$0:Landroidx/room/SharedSQLiteStatement;

    .line 40
    invoke-static {v0}, Landroidx/room/SharedSQLiteStatement;->access$createNewStatement(Landroidx/room/SharedSQLiteStatement;)Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 39
    invoke-virtual {p0}, Landroidx/room/SharedSQLiteStatement$stmt$2;->invoke()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    return-object v0
.end method
