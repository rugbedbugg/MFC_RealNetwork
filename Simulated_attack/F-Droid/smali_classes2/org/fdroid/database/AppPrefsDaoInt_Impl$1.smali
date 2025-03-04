.class Lorg/fdroid/database/AppPrefsDaoInt_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "AppPrefsDaoInt_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/AppPrefsDaoInt_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/database/AppPrefsDaoInt_Impl;


# direct methods
.method constructor <init>(Lorg/fdroid/database/AppPrefsDaoInt_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/database/AppPrefsDaoInt_Impl$1;->this$0:Lorg/fdroid/database/AppPrefsDaoInt_Impl;

    .line 37
    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p2, Lorg/fdroid/database/AppPrefs;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/database/AppPrefsDaoInt_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/fdroid/database/AppPrefs;)V

    return-void
.end method

.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/fdroid/database/AppPrefs;)V
    .locals 4

    .line 47
    invoke-virtual {p2}, Lorg/fdroid/database/AppPrefs;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 48
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p2}, Lorg/fdroid/database/AppPrefs;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    .line 52
    invoke-virtual {p2}, Lorg/fdroid/database/AppPrefs;->getIgnoreVersionCodeUpdate()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 53
    invoke-virtual {p2}, Lorg/fdroid/database/AppPrefs;->getPreferredRepoId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 54
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {p2}, Lorg/fdroid/database/AppPrefs;->getPreferredRepoId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 58
    :goto_1
    sget-object v0, Lorg/fdroid/database/Converters;->INSTANCE:Lorg/fdroid/database/Converters;

    invoke-virtual {p2}, Lorg/fdroid/database/AppPrefs;->getAppPrefReleaseChannels$database_release()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/fdroid/database/Converters;->listStringToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x4

    if-nez p2, :cond_2

    .line 60
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 62
    :cond_2
    invoke-interface {p1, v0, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_2
    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "INSERT OR REPLACE INTO `AppPrefs` (`packageName`,`ignoreVersionCodeUpdate`,`preferredRepoId`,`appPrefReleaseChannels`) VALUES (?,?,?,?)"

    return-object v0
.end method
