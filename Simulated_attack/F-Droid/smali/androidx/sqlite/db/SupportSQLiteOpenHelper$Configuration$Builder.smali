.class public Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;
.super Ljava/lang/Object;
.source "SupportSQLiteOpenHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private allowDataLossOnRecovery:Z

.field private callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

.field private final context:Landroid/content/Context;

.field private name:Ljava/lang/String;

.field private useNoBackupDirectory:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public allowDataLossOnRecovery(Z)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;
    .locals 0

    .line 0
    iput-boolean p1, p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->allowDataLossOnRecovery:Z

    return-object p0
.end method

.method public build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;
    .locals 7

    iget-object v3, p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    if-eqz v3, :cond_2

    iget-boolean v0, p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->useNoBackupDirectory:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 341
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must set a non-null database name to a configuration that uses the no backup directory."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_1
    :goto_0
    new-instance v6, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    iget-object v1, p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->context:Landroid/content/Context;

    iget-object v2, p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name:Ljava/lang/String;

    iget-boolean v4, p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->useNoBackupDirectory:Z

    iget-boolean v5, p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->allowDataLossOnRecovery:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;ZZ)V

    return-object v6

    .line 338
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must set a callback to create the configuration."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;
    .locals 1

    .line 0
    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    return-object p0
.end method

.method public name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public noBackupDirectory(Z)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;
    .locals 0

    .line 0
    iput-boolean p1, p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->useNoBackupDirectory:Z

    return-object p0
.end method
