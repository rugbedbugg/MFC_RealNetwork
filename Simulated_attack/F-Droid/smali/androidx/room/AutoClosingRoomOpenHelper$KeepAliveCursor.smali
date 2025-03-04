.class final Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;
.super Ljava/lang/Object;
.source "AutoClosingRoomOpenHelper.kt"

# interfaces
.implements Landroid/database/Cursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/AutoClosingRoomOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeepAliveCursor"
.end annotation


# instance fields
.field private final autoCloser:Landroidx/room/AutoCloser;

.field private final delegate:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Landroidx/room/AutoCloser;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "autoCloser"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    iput-object p2, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->autoCloser:Landroidx/room/AutoCloser;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    .line 419
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->autoCloser:Landroidx/room/AutoCloser;

    .line 420
    invoke-virtual {v0}, Landroidx/room/AutoCloser;->decrementCountAndScheduleClose()V

    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public deactivate()V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    return-void
.end method

.method public getBlob(I)[B
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    return-object p1
.end method

.method public getColumnCount()I
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(I)F
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result p1

    return p1
.end method

.method public getInt(I)I
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNotificationUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    .line 433
    invoke-static {v0}, Landroidx/sqlite/db/SupportSQLiteCompat$Api19Impl;->getNotificationUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationUris()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    .line 438
    invoke-static {v0}, Landroidx/sqlite/db/SupportSQLiteCompat$Api29Impl;->getNotificationUris(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    return v0
.end method

.method public getShort(I)S
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result p1

    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getType(I)I
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result p1

    return p1
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getWantsAllOnMoveCalls()Z

    move-result v0

    return v0
.end method

.method public isAfterLast()Z
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    return v0
.end method

.method public isBeforeFirst()Z
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isFirst()Z
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isFirst()Z

    move-result v0

    return v0
.end method

.method public isLast()Z
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    return p1
.end method

.method public move(I)Z
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->move(I)Z

    move-result p1

    return p1
.end method

.method public moveToFirst()Z
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    return p1
.end method

.method public moveToPrevious()Z
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public requery()Z
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "extras"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    .line 443
    invoke-static {v0, p1}, Landroidx/sqlite/db/SupportSQLiteCompat$Api23Impl;->setExtras(Landroid/database/Cursor;Landroid/os/Bundle;)V

    return-void
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-void
.end method

.method public setNotificationUris(Landroid/content/ContentResolver;Ljava/util/List;)V
    .locals 1

    const-string v0, "cr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uris"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    .line 428
    invoke-static {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteCompat$Api29Impl;->setNotificationUris(Landroid/database/Cursor;Landroid/content/ContentResolver;Ljava/util/List;)V

    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method
