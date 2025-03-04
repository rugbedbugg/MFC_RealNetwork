.class public Lorg/fdroid/fdroid/nearby/NewRepoConfig;
.super Ljava/lang/Object;
.source "NewRepoConfig.java"


# static fields
.field private static final FORCE_HTTPS_DOMAINS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "NewRepoConfig"


# instance fields
.field private bssid:Ljava/lang/String;

.field private errorMessage:Ljava/lang/String;

.field private fingerprint:Ljava/lang/String;

.field private fromSwap:Z

.field private host:Ljava/lang/String;

.field private isValidRepo:Z

.field private password:Ljava/lang/String;

.field private preventFurtherSwaps:Z

.field private ssid:Ljava/lang/String;

.field private uriString:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "amazonaws.com"

    const-string v1, "github.com"

    const-string v2, "githubusercontent.com"

    const-string v3, "github.io"

    const-string v4, "gitlab.com"

    const-string v5, "gitlab.io"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->FORCE_HTTPS_DOMAINS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->init(Landroid/content/Context;Landroid/net/Uri;)V

    const-string p1, "preventFurtherSwap"

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->preventFurtherSwaps:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 38
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->init(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public static hasDisallowInstallUnknownSources(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "user"

    .line 226
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const-string v2, "no_install_unknown_sources"

    if-ge v0, v1, :cond_0

    .line 228
    invoke-virtual {p0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 230
    :cond_0
    invoke-virtual {p0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "no_install_unknown_sources_globally"

    .line 231
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private init(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 11

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iput-boolean v0, p0, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->isValidRepo:Z

    return-void

    .line 54
    :cond_0
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->hasDisallowInstallUnknownSources(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    invoke-static {p1}, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;->getDisallowInstallUnknownSourcesErrorMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->errorMessage:Ljava/lang/String;

    iput-boolean v0, p0, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->isValidRepo:Z

    return-void

    .line 60
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing incoming intent looking for repo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NewRepoConfig"

    invoke-static {v2, v1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->host:Ljava/lang/String;

    .line 65
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_9

    iget-object v3, p0, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->host:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "file"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string p1, "FDROIDREPO"

    const-string v2, "FDROIDREPOS"

    filled-new-array {p1, v2}, [Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 79
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v2, "/FDROID/REPO"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 87
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 91
    :cond_4
    :goto_0
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->host:Ljava/lang/String;

    .line 92
    invoke-virtual {v2, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->host:Ljava/lang/String;

    .line 94
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string v5, "https"

    const-string v6, "http"

    const-string v7, "fdroidrepos"

    const-string v8, "fdroidrepo"

    const-string v9, "content"

    const-string v10, "file"

    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    .line 100
    :cond_5
    invoke-virtual {p2}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v1, ":"

    .line 102
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 103
    array-length v2, p1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_6

    .line 104
    aget-object v2, p1, v0

    iput-object v2, p0, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->username:Ljava/lang/String;

    .line 105
    aget-object v2, p1, v4

    iput-object v2, p0, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->password:Ljava/lang/String;

    .line 106
    :goto_1
    array-length v2, p1

    if-ge v3, v2, :cond_6

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->password:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->password:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    const-string p1, "fingerprint"

    .line 112
    invoke-virtual {p2, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->fingerprint:Ljava/lang/String;

    const-string p1, "bssid"

    .line 113
    invoke-virtual {p2, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->bssid:Ljava/lang/String;

    const-string p1, "ssid"

    .line 114
    invoke-virtual {p2, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->ssid:Ljava/lang/String;

    const-string p1, "swap"

    .line 115
    invoke-virtual {p2, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    move v0, v4

    :cond_7
    iput-boolean v0, p0, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->fromSwap:Z

    .line 116
    invoke-static {p2}, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->sanitizeRepoUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->uriString:Ljava/lang/String;

    iput-boolean v4, p0, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->isValidRepo:Z

    return-void

    :cond_8
    :goto_2
    iput-boolean v0, p0, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->isValidRepo:Z

    return-void

    :cond_9
    :goto_3
    sget v1, Lorg/fdroid/fdroid/R$string;->malformed_repo_uri:I

    .line 66
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->errorMessage:Ljava/lang/String;

    .line 67
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->isValidRepo:Z

    return-void
.end method

.method public static sanitizeRepoUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    .line 188
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 189
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 191
    invoke-virtual {v3, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-virtual {p0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http"

    .line 193
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->FORCE_HTTPS_DOMAINS:Ljava/util/List;

    .line 194
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 195
    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v0, "https"

    .line 202
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v6, "\\?.*$"

    const-string v7, ""

    .line 203
    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v6, "/*$"

    .line 204
    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "@"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 205
    invoke-virtual {p0, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 206
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 207
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "fdroidrepo"

    .line 208
    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/FDROID/REPO"

    const-string v1, "/fdroid/repo"

    .line 209
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getBssid()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->bssid:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getFingerprint()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->fingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getRepoUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->uriString:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 136
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getRepoUriString()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->uriString:Ljava/lang/String;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isFromSwap()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->fromSwap:Z

    return v0
.end method

.method public isValidRepo()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->isValidRepo:Z

    return v0
.end method

.method public preventFurtherSwaps()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->preventFurtherSwaps:Z

    return v0
.end method

.method public toPeer()Lorg/fdroid/fdroid/nearby/peers/WifiPeer;
    .locals 1

    .line 213
    new-instance v0, Lorg/fdroid/fdroid/nearby/peers/WifiPeer;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/nearby/peers/WifiPeer;-><init>(Lorg/fdroid/fdroid/nearby/NewRepoConfig;)V

    return-object v0
.end method
