.class Lorg/fdroid/database/VersionDaoInt_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "VersionDaoInt_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/VersionDaoInt_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/database/VersionDaoInt_Impl;


# direct methods
.method constructor <init>(Lorg/fdroid/database/VersionDaoInt_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/database/VersionDaoInt_Impl$1;->this$0:Lorg/fdroid/database/VersionDaoInt_Impl;

    .line 66
    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 66
    check-cast p2, Lorg/fdroid/database/Version;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/database/VersionDaoInt_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/fdroid/database/Version;)V

    return-void
.end method

.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/fdroid/database/Version;)V
    .locals 7

    .line 76
    invoke-virtual {p2}, Lorg/fdroid/database/Version;->getRepoId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 77
    invoke-virtual {p2}, Lorg/fdroid/database/Version;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 78
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p2}, Lorg/fdroid/database/Version;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 82
    :goto_0
    invoke-virtual {p2}, Lorg/fdroid/database/Version;->getVersionId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 83
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 85
    :cond_1
    invoke-virtual {p2}, Lorg/fdroid/database/Version;->getVersionId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x4

    .line 87
    invoke-virtual {p2}, Lorg/fdroid/database/Version;->getAdded()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 88
    sget-object v0, Lorg/fdroid/database/Converters;->INSTANCE:Lorg/fdroid/database/Converters;

    invoke-virtual {p2}, Lorg/fdroid/database/Version;->getReleaseChannels()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fdroid/database/Converters;->listStringToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    if-nez v1, :cond_2

    .line 90
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 92
    :cond_2
    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 94
    :goto_2
    invoke-virtual {p2}, Lorg/fdroid/database/Version;->getAntiFeatures()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fdroid/database/Converters;->mapOfLocalizedTextV2toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    if-nez v1, :cond_3

    .line 96
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    .line 98
    :cond_3
    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 100
    :goto_3
    invoke-virtual {p2}, Lorg/fdroid/database/Version;->getWhatsNew()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fdroid/database/Converters;->localizedTextV2toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    if-nez v1, :cond_4

    .line 102
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_4

    .line 104
    :cond_4
    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 106
    :goto_4
    invoke-virtual {p2}, Lorg/fdroid/database/Version;->isCompatible()Z

    move-result v1

    const/16 v2, 0x8

    int-to-long v3, v1

    .line 107
    invoke-interface {p1, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 108
    invoke-virtual {p2}, Lorg/fdroid/database/Version;->getFile()Lorg/fdroid/index/v2/FileV1;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV1;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    if-nez v2, :cond_5

    .line 110
    invoke-interface {p1, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_5

    .line 112
    :cond_5
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV1;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 114
    :goto_5
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV1;->getSha256()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    if-nez v2, :cond_6

    .line 115
    invoke-interface {p1, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_6

    .line 117
    :cond_6
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV1;->getSha256()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 119
    :goto_6
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV1;->getSize()Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0xb

    if-nez v2, :cond_7

    .line 120
    invoke-interface {p1, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_7

    .line 122
    :cond_7
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV1;->getSize()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {p1, v3, v4, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 124
    :goto_7
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV1;->getIpfsCidV1()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    if-nez v2, :cond_8

    .line 125
    invoke-interface {p1, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_8

    .line 127
    :cond_8
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV1;->getIpfsCidV1()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 129
    :goto_8
    invoke-virtual {p2}, Lorg/fdroid/database/Version;->getSrc()Lorg/fdroid/index/v2/FileV2;

    move-result-object v1

    const/16 v2, 0x10

    const/16 v3, 0xf

    const/16 v4, 0xe

    const/16 v5, 0xd

    if-eqz v1, :cond_d

    .line 131
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV2;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_9

    .line 132
    invoke-interface {p1, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_9

    .line 134
    :cond_9
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV2;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 136
    :goto_9
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV2;->getSha256()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_a

    .line 137
    invoke-interface {p1, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_a

    .line 139
    :cond_a
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV2;->getSha256()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 141
    :goto_a
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV2;->getSize()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_b

    .line 142
    invoke-interface {p1, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_b

    .line 144
    :cond_b
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV2;->getSize()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {p1, v3, v4, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 146
    :goto_b
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV2;->getIpfsCidV1()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    .line 147
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_c

    .line 149
    :cond_c
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV2;->getIpfsCidV1()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    goto :goto_c

    .line 152
    :cond_d
    invoke-interface {p1, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    .line 153
    invoke-interface {p1, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    .line 154
    invoke-interface {p1, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    .line 155
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    .line 157
    :goto_c
    invoke-virtual {p2}, Lorg/fdroid/database/Version;->getManifest()Lorg/fdroid/database/AppManifest;

    move-result-object p2

    .line 158
    invoke-virtual {p2}, Lorg/fdroid/database/AppManifest;->getVersionName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    if-nez v1, :cond_e

    .line 159
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_d

    .line 161
    :cond_e
    invoke-virtual {p2}, Lorg/fdroid/database/AppManifest;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_d
    const/16 v1, 0x12

    .line 163
    invoke-virtual {p2}, Lorg/fdroid/database/AppManifest;->getVersionCode()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 164
    invoke-virtual {p2}, Lorg/fdroid/database/AppManifest;->getMaxSdkVersion()Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    if-nez v1, :cond_f

    .line 165
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_e

    .line 167
    :cond_f
    invoke-virtual {p2}, Lorg/fdroid/database/AppManifest;->getMaxSdkVersion()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v3, v1

    invoke-interface {p1, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 169
    :goto_e
    invoke-virtual {p2}, Lorg/fdroid/database/AppManifest;->getNativecode()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fdroid/database/Converters;->listStringToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    if-nez v1, :cond_10

    .line 171
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_f

    .line 173
    :cond_10
    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 175
    :goto_f
    invoke-virtual {p2}, Lorg/fdroid/database/AppManifest;->getFeatures()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fdroid/database/Converters;->listStringToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    if-nez v1, :cond_11

    .line 177
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_10

    .line 179
    :cond_11
    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 181
    :goto_10
    invoke-virtual {p2}, Lorg/fdroid/database/AppManifest;->getUsesSdk()Lorg/fdroid/index/v2/UsesSdkV2;

    move-result-object v1

    const/16 v2, 0x17

    const/16 v3, 0x16

    if-eqz v1, :cond_12

    .line 183
    invoke-virtual {v1}, Lorg/fdroid/index/v2/UsesSdkV2;->getMinSdkVersion()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {p1, v3, v4, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 184
    invoke-virtual {v1}, Lorg/fdroid/index/v2/UsesSdkV2;->getTargetSdkVersion()I

    move-result v1

    int-to-long v3, v1

    invoke-interface {p1, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    goto :goto_11

    .line 186
    :cond_12
    invoke-interface {p1, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    .line 187
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    .line 189
    :goto_11
    invoke-virtual {p2}, Lorg/fdroid/database/AppManifest;->getSigner()Lorg/fdroid/index/v2/SignerV2;

    move-result-object p2

    const/16 v1, 0x19

    const/16 v2, 0x18

    if-eqz p2, :cond_14

    .line 191
    invoke-virtual {p2}, Lorg/fdroid/index/v2/SignerV2;->getSha256()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/fdroid/database/Converters;->listStringToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    .line 193
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_12

    .line 195
    :cond_13
    invoke-interface {p1, v2, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 197
    :goto_12
    invoke-virtual {p2}, Lorg/fdroid/index/v2/SignerV2;->getHasMultipleSigners()Z

    move-result p2

    int-to-long v2, p2

    .line 198
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    goto :goto_13

    .line 200
    :cond_14
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    .line 201
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    :goto_13
    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "INSERT OR REPLACE INTO `Version` (`repoId`,`packageName`,`versionId`,`added`,`releaseChannels`,`antiFeatures`,`whatsNew`,`isCompatible`,`file_name`,`file_sha256`,`file_size`,`file_ipfsCidV1`,`src_name`,`src_sha256`,`src_size`,`src_ipfsCidV1`,`manifest_versionName`,`manifest_versionCode`,`manifest_maxSdkVersion`,`manifest_nativecode`,`manifest_features`,`manifest_usesSdk_minSdkVersion`,`manifest_usesSdk_targetSdkVersion`,`manifest_signer_sha256`,`manifest_signer_hasMultipleSigners`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
