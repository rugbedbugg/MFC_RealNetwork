.class Lorg/fdroid/database/RepositoryDaoInt_Impl$2;
.super Landroidx/room/EntityInsertionAdapter;
.source "RepositoryDaoInt_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/RepositoryDaoInt_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/database/RepositoryDaoInt_Impl;


# direct methods
.method constructor <init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl$2;->this$0:Lorg/fdroid/database/RepositoryDaoInt_Impl;

    .line 150
    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 150
    check-cast p2, Lorg/fdroid/database/CoreRepository;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/database/RepositoryDaoInt_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/fdroid/database/CoreRepository;)V

    return-void
.end method

.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/fdroid/database/CoreRepository;)V
    .locals 5

    .line 160
    invoke-virtual {p2}, Lorg/fdroid/database/CoreRepository;->getRepoId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 161
    sget-object v0, Lorg/fdroid/database/Converters;->INSTANCE:Lorg/fdroid/database/Converters;

    invoke-virtual {p2}, Lorg/fdroid/database/CoreRepository;->getName()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fdroid/database/Converters;->localizedTextV2toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    if-nez v1, :cond_0

    .line 163
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 165
    :cond_0
    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 167
    :goto_0
    invoke-virtual {p2}, Lorg/fdroid/database/CoreRepository;->getIcon()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fdroid/database/Converters;->localizedFileV2toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    if-nez v1, :cond_1

    .line 169
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 171
    :cond_1
    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 173
    :goto_1
    invoke-virtual {p2}, Lorg/fdroid/database/CoreRepository;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    if-nez v1, :cond_2

    .line 174
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 176
    :cond_2
    invoke-virtual {p2}, Lorg/fdroid/database/CoreRepository;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 178
    :goto_2
    invoke-virtual {p2}, Lorg/fdroid/database/CoreRepository;->getWebBaseUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    if-nez v1, :cond_3

    .line 179
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    .line 181
    :cond_3
    invoke-virtual {p2}, Lorg/fdroid/database/CoreRepository;->getWebBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_3
    const/4 v1, 0x6

    .line 183
    invoke-virtual {p2}, Lorg/fdroid/database/CoreRepository;->getTimestamp()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 184
    invoke-virtual {p2}, Lorg/fdroid/database/CoreRepository;->getVersion()Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    if-nez v1, :cond_4

    .line 185
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_4

    .line 187
    :cond_4
    invoke-virtual {p2}, Lorg/fdroid/database/CoreRepository;->getVersion()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {p1, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 189
    :goto_4
    invoke-virtual {p2}, Lorg/fdroid/database/CoreRepository;->getFormatVersion()Lorg/fdroid/index/IndexFormatVersion;

    move-result-object v1

    const/16 v2, 0x8

    if-nez v1, :cond_5

    .line 190
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_5

    :cond_5
    iget-object v1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl$2;->this$0:Lorg/fdroid/database/RepositoryDaoInt_Impl;

    .line 192
    invoke-virtual {p2}, Lorg/fdroid/database/CoreRepository;->getFormatVersion()Lorg/fdroid/index/IndexFormatVersion;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->-$$Nest$m__IndexFormatVersion_enumToString(Lorg/fdroid/database/RepositoryDaoInt_Impl;Lorg/fdroid/index/IndexFormatVersion;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 194
    :goto_5
    invoke-virtual {p2}, Lorg/fdroid/database/CoreRepository;->getMaxAge()Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    if-nez v1, :cond_6

    .line 195
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_6

    .line 197
    :cond_6
    invoke-virtual {p2}, Lorg/fdroid/database/CoreRepository;->getMaxAge()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v3, v1

    invoke-interface {p1, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 199
    :goto_6
    invoke-virtual {p2}, Lorg/fdroid/database/CoreRepository;->getDescription()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fdroid/database/Converters;->localizedTextV2toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_7

    .line 201
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_7

    .line 203
    :cond_7
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 205
    :goto_7
    invoke-virtual {p2}, Lorg/fdroid/database/CoreRepository;->getCertificate()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    if-nez v0, :cond_8

    .line 206
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_8

    .line 208
    :cond_8
    invoke-virtual {p2}, Lorg/fdroid/database/CoreRepository;->getCertificate()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_8
    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "INSERT OR REPLACE INTO `CoreRepository` (`repoId`,`name`,`icon`,`address`,`webBaseUrl`,`timestamp`,`version`,`formatVersion`,`maxAge`,`description`,`certificate`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
