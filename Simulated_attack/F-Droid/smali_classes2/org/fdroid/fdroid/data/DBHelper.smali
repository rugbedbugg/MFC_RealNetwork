.class public Lorg/fdroid/fdroid/data/DBHelper;
.super Ljava/lang/Object;
.source "DBHelper.java"


# static fields
.field static final REPO_XML_ITEM_COUNT:I = 0x7

.field private static final TAG:Ljava/lang/String; = "DBHelper"


# direct methods
.method public static synthetic $r8$lambda$3miX3ZRPRM0aaU7bZaWi-ZOzGgY(Lorg/fdroid/database/FDroidDatabase;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/data/DBHelper;->lambda$resetRepos$3(Lorg/fdroid/database/FDroidDatabase;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UE0KAMTt9cp6jhxm1JWocLkBjLA(Landroid/content/Context;Lorg/fdroid/database/FDroidDatabase;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/data/DBHelper;->lambda$getDb$0(Landroid/content/Context;Lorg/fdroid/database/FDroidDatabase;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fAEXdNvFvTp5Im2yow_rSZl1cRc(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/fdroid/fdroid/data/DBHelper;->lambda$prePopulateDb$2(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r8sgXjPZWSRYtvjpqzxpZtMvSyo(Lorg/fdroid/database/FDroidDatabase;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/data/DBHelper;->lambda$resetRepos$4(Lorg/fdroid/database/FDroidDatabase;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vWKK3qaXnJSGu3WBNmf3y1R47hA(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/fdroid/fdroid/data/DBHelper;->lambda$prePopulateDb$1(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDb(Landroid/content/Context;)Lorg/fdroid/database/FDroidDatabase;
    .locals 2

    .line 67
    new-instance v0, Lorg/fdroid/fdroid/data/DBHelper$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/data/DBHelper$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    const-string v1, "fdroid_db"

    invoke-static {p0, v1, v0}, Lorg/fdroid/database/FDroidDatabaseHolder;->getDb(Landroid/content/Context;Ljava/lang/String;Lorg/fdroid/database/FDroidFixture;)Lorg/fdroid/database/FDroidDatabase;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultRepoAddresses(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 257
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lorg/fdroid/fdroid/R$array;->default_repos:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 258
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x7

    rem-int/2addr v0, v1

    if-nez v0, :cond_4

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 264
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    add-int/lit8 v3, v2, 0x4

    .line 265
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v2, 0x1

    .line 268
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "\\s+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 269
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 270
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_3
    return-object v0

    .line 259
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default_repos.xml has wrong item count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " % REPO_XML_ARG_COUNT("

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") != 0, FYI the priority item was removed in v1.16"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic lambda$getDb$0(Landroid/content/Context;Lorg/fdroid/database/FDroidDatabase;)V
    .locals 0

    .line 67
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/data/DBHelper;->prePopulateDb(Landroid/content/Context;Lorg/fdroid/database/FDroidDatabase;)V

    return-void
.end method

.method private static synthetic lambda$prePopulateDb$1(Landroid/content/Context;)V
    .locals 0

    .line 111
    invoke-static {p0}, Lorg/fdroid/fdroid/work/RepoUpdateWorker;->updateNow(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$prePopulateDb$2(Landroid/content/Context;)V
    .locals 0

    .line 114
    invoke-static {p0}, Lorg/fdroid/fdroid/work/RepoUpdateWorker;->updateNow(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$resetRepos$3(Lorg/fdroid/database/FDroidDatabase;Landroid/content/Context;)V
    .locals 1

    .line 132
    invoke-interface {p0}, Lorg/fdroid/database/FDroidDatabase;->getRepositoryDao()Lorg/fdroid/database/RepositoryDao;

    move-result-object v0

    invoke-interface {v0}, Lorg/fdroid/database/RepositoryDao;->clearAll()V

    .line 133
    invoke-static {p1, p0}, Lorg/fdroid/fdroid/data/DBHelper;->prePopulateDb(Landroid/content/Context;Lorg/fdroid/database/FDroidDatabase;)V

    return-void
.end method

.method private static synthetic lambda$resetRepos$4(Lorg/fdroid/database/FDroidDatabase;Landroid/content/Context;)V
    .locals 1

    .line 131
    new-instance v0, Lorg/fdroid/fdroid/data/DBHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/fdroid/data/DBHelper$$ExternalSyntheticLambda1;-><init>(Lorg/fdroid/database/FDroidDatabase;Landroid/content/Context;)V

    invoke-interface {p0, v0}, Lorg/fdroid/database/FDroidDatabase;->runInTransaction(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static loadAdditionalRepos(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const-string v1, "/odm"

    const-string v2, "/oem"

    const-string v3, "/system"

    const-string v4, "/product"

    const-string v5, "/vendor"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 194
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/etc/"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/additional_repos.xml"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    invoke-static {v3}, Lorg/fdroid/fdroid/data/DBHelper;->parseAdditionalReposXml(Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DBHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static loadInitialRepos(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {v0}, Lorg/fdroid/fdroid/data/DBHelper;->loadAdditionalRepos(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 155
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x7

    rem-int/2addr v1, v2

    const-string v3, " % REPO_XML_ARG_COUNT("

    if-nez v1, :cond_2

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lorg/fdroid/fdroid/R$array;->default_repos:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 162
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 170
    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 171
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p0, 0x2

    .line 174
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_0

    .line 175
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "\\s+"

    const-string v3, " "

    .line 176
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p0, p0, 0x7

    goto :goto_0

    :cond_0
    return-object v1

    .line 163
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default_repos.xml has wrong item count: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") != 0, FYI the priority item was removed in v1.16"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "additional_repos.xml has wrong item count: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") != 0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static parseAdditionalReposXml(Ljava/io/File;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 217
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 218
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 219
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    const/4 v3, 0x1

    .line 220
    invoke-virtual {v2, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 221
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    const-string v4, "UTF-8"

    .line 222
    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 224
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-eq v4, v3, :cond_4

    .line 227
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    if-eq v4, v8, :cond_2

    const/4 v7, 0x3

    if-eq v4, v7, :cond_1

    const/4 v7, 0x4

    if-eq v4, v7, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v6, :cond_3

    .line 239
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move v6, v5

    goto :goto_1

    :cond_2
    const-string v4, "item"

    .line 230
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v6, v3

    .line 243
    :cond_3
    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_0

    .line 245
    :cond_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 247
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x7

    if-nez v1, :cond_5

    return-object v0

    .line 251
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", wrong number of items: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " % "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x6

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " != 0"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DBHelper"

    .line 251
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-object p0
.end method

.method static prePopulateDb(Landroid/content/Context;Lorg/fdroid/database/FDroidDatabase;)V
    .locals 20

    move-object/from16 v1, p0

    .line 73
    invoke-static/range {p0 .. p0}, Lorg/fdroid/fdroid/data/DBHelper;->loadInitialRepos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 75
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const-string v6, "DBHelper"

    if-ge v4, v0, :cond_4

    add-int/lit8 v0, v4, 0x4

    .line 76
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 78
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v8, v4, 0x1

    .line 79
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "\\s+"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v10, v3

    :goto_1
    if-ge v10, v9, :cond_1

    aget-object v11, v8, v10

    .line 80
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 81
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 86
    :cond_1
    :try_start_0
    new-instance v14, Lorg/fdroid/database/InitialRepository;

    .line 87
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    .line 88
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Ljava/lang/String;

    .line 89
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v15, 0x1

    invoke-interface {v7, v15, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v11

    add-int/lit8 v8, v4, 0x2

    .line 90
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Ljava/lang/String;

    add-int/lit8 v8, v4, 0x6

    .line 91
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v13, v8

    check-cast v13, Ljava/lang/String;

    add-int/lit8 v8, v4, 0x3

    .line 92
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v17, v4

    int-to-long v3, v8

    move-object v8, v14

    move-object/from16 v18, v2

    move-object v2, v14

    move/from16 v19, v15

    move-wide v14, v3

    move/from16 v16, v0

    :try_start_1
    invoke-direct/range {v8 .. v16}, Lorg/fdroid/database/InitialRepository;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;JZ)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v5, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    move/from16 v5, v19

    .line 100
    :goto_3
    invoke-interface/range {p1 .. p1}, Lorg/fdroid/database/FDroidDatabase;->getRepositoryDao()Lorg/fdroid/database/RepositoryDao;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/fdroid/database/RepositoryDao;->insert(Lorg/fdroid/database/InitialRepository;)J

    const/4 v3, 0x0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v18, v2

    move/from16 v17, v4

    .line 96
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid repo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    add-int/lit8 v4, v17, 0x7

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 104
    :cond_4
    new-instance v0, Lorg/fdroid/fdroid/data/ContentProviderMigrator;

    invoke-direct {v0}, Lorg/fdroid/fdroid/data/ContentProviderMigrator;-><init>()V

    .line 105
    invoke-virtual {v0, v1}, Lorg/fdroid/fdroid/data/ContentProviderMigrator;->needsMigration(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "Migrating DB..."

    .line 106
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, p1

    .line 107
    invoke-virtual {v0, v1, v2}, Lorg/fdroid/fdroid/data/ContentProviderMigrator;->runMigrations(Landroid/content/Context;Lorg/fdroid/database/FDroidDatabase;)V

    .line 108
    invoke-virtual {v0, v1}, Lorg/fdroid/fdroid/data/ContentProviderMigrator;->removeOldDb(Landroid/content/Context;)V

    .line 110
    invoke-static/range {p0 .. p0}, Lorg/fdroid/fdroid/data/DBHelper;->resetTransient(Landroid/content/Context;)V

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lorg/fdroid/fdroid/data/DBHelper$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lorg/fdroid/fdroid/data/DBHelper$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_5
    if-eqz v5, :cond_6

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lorg/fdroid/fdroid/data/DBHelper$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lorg/fdroid/fdroid/data/DBHelper$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    :goto_6
    return-void
.end method

.method public static resetRepos(Landroid/content/Context;)V
    .locals 2

    .line 130
    invoke-static {p0}, Lorg/fdroid/fdroid/data/DBHelper;->getDb(Landroid/content/Context;)Lorg/fdroid/database/FDroidDatabase;

    move-result-object v0

    .line 131
    new-instance v1, Lorg/fdroid/fdroid/data/DBHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, p0}, Lorg/fdroid/fdroid/data/DBHelper$$ExternalSyntheticLambda3;-><init>(Lorg/fdroid/database/FDroidDatabase;Landroid/content/Context;)V

    invoke-static {v1}, Lorg/fdroid/fdroid/Utils;->runOffUiThread(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public static resetTransient(Landroid/content/Context;)V
    .locals 1

    .line 124
    invoke-static {p0}, Lorg/fdroid/fdroid/data/DBHelper;->getDb(Landroid/content/Context;)Lorg/fdroid/database/FDroidDatabase;

    move-result-object p0

    .line 125
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/fdroid/fdroid/data/DBHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/data/DBHelper$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/database/FDroidDatabase;)V

    invoke-static {v0}, Lorg/fdroid/fdroid/Utils;->runOffUiThread(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
