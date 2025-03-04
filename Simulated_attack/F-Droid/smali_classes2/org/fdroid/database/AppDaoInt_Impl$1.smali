.class Lorg/fdroid/database/AppDaoInt_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "AppDaoInt_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/AppDaoInt_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/database/AppDaoInt_Impl;


# direct methods
.method constructor <init>(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl$1;->this$0:Lorg/fdroid/database/AppDaoInt_Impl;

    .line 73
    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 73
    check-cast p2, Lorg/fdroid/database/AppMetadata;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/database/AppDaoInt_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/fdroid/database/AppMetadata;)V

    return-void
.end method

.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/fdroid/database/AppMetadata;)V
    .locals 3

    .line 83
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getRepoId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 84
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 85
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x3

    .line 89
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getAdded()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 v0, 0x4

    .line 90
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getLastUpdated()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 91
    sget-object v0, Lorg/fdroid/database/Converters;->INSTANCE:Lorg/fdroid/database/Converters;

    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getName()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fdroid/database/Converters;->localizedTextV2toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    if-nez v1, :cond_1

    .line 93
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 95
    :cond_1
    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 97
    :goto_1
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getSummary()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fdroid/database/Converters;->localizedTextV2toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    if-nez v1, :cond_2

    .line 99
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 101
    :cond_2
    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 103
    :goto_2
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getDescription()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fdroid/database/Converters;->localizedTextV2toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    if-nez v1, :cond_3

    .line 105
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    .line 107
    :cond_3
    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 109
    :goto_3
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getLocalizedName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    if-nez v1, :cond_4

    .line 110
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_4

    .line 112
    :cond_4
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getLocalizedName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 114
    :goto_4
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getLocalizedSummary()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    if-nez v1, :cond_5

    .line 115
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_5

    .line 117
    :cond_5
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getLocalizedSummary()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 119
    :goto_5
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getWebSite()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    if-nez v1, :cond_6

    .line 120
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_6

    .line 122
    :cond_6
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getWebSite()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 124
    :goto_6
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getChangelog()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    if-nez v1, :cond_7

    .line 125
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_7

    .line 127
    :cond_7
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getChangelog()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 129
    :goto_7
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getLicense()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    if-nez v1, :cond_8

    .line 130
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_8

    .line 132
    :cond_8
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getLicense()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 134
    :goto_8
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getSourceCode()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    if-nez v1, :cond_9

    .line 135
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_9

    .line 137
    :cond_9
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getSourceCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 139
    :goto_9
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getIssueTracker()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    if-nez v1, :cond_a

    .line 140
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_a

    .line 142
    :cond_a
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getIssueTracker()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 144
    :goto_a
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getTranslation()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    if-nez v1, :cond_b

    .line 145
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_b

    .line 147
    :cond_b
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getTranslation()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 149
    :goto_b
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getPreferredSigner()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    if-nez v1, :cond_c

    .line 150
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_c

    .line 152
    :cond_c
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getPreferredSigner()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 154
    :goto_c
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getVideo()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fdroid/database/Converters;->localizedTextV2toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    if-nez v1, :cond_d

    .line 156
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_d

    .line 158
    :cond_d
    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 160
    :goto_d
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getAuthorName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    if-nez v1, :cond_e

    .line 161
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_e

    .line 163
    :cond_e
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getAuthorName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 165
    :goto_e
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getAuthorEmail()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    if-nez v1, :cond_f

    .line 166
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_f

    .line 168
    :cond_f
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getAuthorEmail()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 170
    :goto_f
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getAuthorWebSite()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    if-nez v1, :cond_10

    .line 171
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_10

    .line 173
    :cond_10
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getAuthorWebSite()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 175
    :goto_10
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getAuthorPhone()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    if-nez v1, :cond_11

    .line 176
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_11

    .line 178
    :cond_11
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getAuthorPhone()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 180
    :goto_11
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getDonate()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fdroid/database/Converters;->listStringToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    if-nez v1, :cond_12

    .line 182
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_12

    .line 184
    :cond_12
    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 186
    :goto_12
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getLiberapayID()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    if-nez v1, :cond_13

    .line 187
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_13

    .line 189
    :cond_13
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getLiberapayID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 191
    :goto_13
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getLiberapay()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    if-nez v1, :cond_14

    .line 192
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_14

    .line 194
    :cond_14
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getLiberapay()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 196
    :goto_14
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getOpenCollective()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    if-nez v1, :cond_15

    .line 197
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_15

    .line 199
    :cond_15
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getOpenCollective()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 201
    :goto_15
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getBitcoin()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_16

    const/16 v1, 0x1a

    .line 202
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_16

    :cond_16
    const/16 v1, 0x1a

    .line 204
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getBitcoin()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 206
    :goto_16
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getLitecoin()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    const/16 v1, 0x1b

    .line 207
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_17

    :cond_17
    const/16 v1, 0x1b

    .line 209
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getLitecoin()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 211
    :goto_17
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getFlattrID()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_18

    const/16 v1, 0x1c

    .line 212
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_18

    :cond_18
    const/16 v1, 0x1c

    .line 214
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getFlattrID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 216
    :goto_18
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->getCategories()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fdroid/database/Converters;->listStringToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    const/16 v0, 0x1d

    .line 218
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_19

    :cond_19
    const/16 v1, 0x1d

    .line 220
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 222
    :goto_19
    invoke-virtual {p2}, Lorg/fdroid/database/AppMetadata;->isCompatible()Z

    move-result p2

    const/16 v0, 0x1e

    int-to-long v1, p2

    .line 223
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "INSERT OR REPLACE INTO `AppMetadata` (`repoId`,`packageName`,`added`,`lastUpdated`,`name`,`summary`,`description`,`localizedName`,`localizedSummary`,`webSite`,`changelog`,`license`,`sourceCode`,`issueTracker`,`translation`,`preferredSigner`,`video`,`authorName`,`authorEmail`,`authorWebSite`,`authorPhone`,`donate`,`liberapayID`,`liberapay`,`openCollective`,`bitcoin`,`litecoin`,`flattrID`,`categories`,`isCompatible`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
