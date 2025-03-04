.class public Lorg/fdroid/fdroid/nearby/TreeUriScannerIntentService;
.super Landroidx/core/app/JobIntentService;
.source "TreeUriScannerIntentService.java"


# static fields
.field private static final ACTION_SCAN_TREE_URI:Ljava/lang/String; = "org.fdroid.fdroid.nearby.action.SCAN_TREE_URI"

.field public static final EXTERNAL_STORAGE_PROVIDER_AUTHORITY:Ljava/lang/String; = "com.android.externalstorage.documents"

.field private static final JOB_ID:I = -0x1ed0734c

.field public static final TAG:Ljava/lang/String; = "TreeUriScannerIntentSer"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Landroidx/core/app/JobIntentService;-><init>()V

    return-void
.end method

.method static getSigningCertFromJar(Ljava/util/jar/JarEntry;)Ljava/security/cert/X509Certificate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fdroid/index/SigningException;
        }
    .end annotation

    .line 180
    invoke-virtual {p0}, Ljava/util/jar/JarEntry;->getCodeSigners()[Ljava/security/CodeSigner;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 181
    array-length v0, p0

    if-eqz v0, :cond_2

    .line 185
    array-length v0, p0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 188
    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/security/CodeSigner;->getSignerCertPath()Ljava/security/cert/CertPath;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object p0

    .line 189
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 192
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    return-object p0

    .line 190
    :cond_0
    new-instance p0, Lorg/fdroid/index/SigningException;

    const-string v0, "index.jar code signers must only have a single certificate!"

    invoke-direct {p0, v0}, Lorg/fdroid/index/SigningException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 186
    :cond_1
    new-instance p0, Lorg/fdroid/index/SigningException;

    const-string v0, "index.jar must be signed by a single code signer!"

    invoke-direct {p0, v0}, Lorg/fdroid/index/SigningException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 182
    :cond_2
    new-instance p0, Lorg/fdroid/index/SigningException;

    const-string v0, "No signature found in index"

    invoke-direct {p0, v0}, Lorg/fdroid/index/SigningException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onActivityResult(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x3

    .line 101
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    sget v0, Lorg/fdroid/fdroid/R$string;->swap_toast_using_path:I

    .line 102
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 104
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/nearby/TreeUriScannerIntentService;->scan(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method static registerRepo(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    .line 167
    invoke-static {p0}, Lorg/fdroid/fdroid/FDroidApp;->getRepoManager(Landroid/content/Context;)Lorg/fdroid/index/RepoManager;

    move-result-object v0

    .line 168
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/fdroid/index/RepoManager;->fetchRepositoryPreview(Ljava/lang/String;)V

    .line 169
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/fdroid/fdroid/views/repos/AddRepoActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 170
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 171
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private registerRepo(Landroidx/documentfile/provider/DocumentFile;)V
    .locals 0

    .line 162
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getParentFile()Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 163
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/fdroid/fdroid/nearby/TreeUriScannerIntentService;->registerRepo(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public static scan(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/fdroid/fdroid/nearby/TreeUriScannerIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "org.fdroid.fdroid.nearby.action.SCAN_TREE_URI"

    .line 83
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    sget p1, Lorg/fdroid/fdroid/nearby/TreeUriScannerIntentService;->JOB_ID:I

    .line 85
    invoke-static {p0, v1, p1, v0}, Landroidx/core/app/JobIntentService;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-void
.end method

.method private searchDirectory(Landroidx/documentfile/provider/DocumentFile;)V
    .locals 7

    .line 131
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 136
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v4, p1, v2

    .line 138
    invoke-virtual {v4}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 139
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-nez v3, :cond_2

    const-string v5, "index-v1.jar"

    .line 141
    invoke-virtual {v4}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 142
    invoke-direct {p0, v4}, Lorg/fdroid/fdroid/nearby/TreeUriScannerIntentService;->registerRepo(Landroidx/documentfile/provider/DocumentFile;)V

    const/4 v3, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/documentfile/provider/DocumentFile;

    .line 148
    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/nearby/TreeUriScannerIntentService;->searchDirectory(Landroidx/documentfile/provider/DocumentFile;)V

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method protected onHandleWork(Landroid/content/Intent;)V
    .locals 2

    .line 110
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.fdroid.fdroid.nearby.action.SCAN_TREE_URI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x13

    .line 117
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 118
    invoke-static {p0, p1}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    .line 119
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/TreeUriScannerIntentService;->searchDirectory(Landroidx/documentfile/provider/DocumentFile;)V

    return-void
.end method
