.class final Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore$KerplappKeyManager;
.super Ljava/lang/Object;
.source "LocalRepoKeyStore.java"

# interfaces
.implements Ljavax/net/ssl/X509KeyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KerplappKeyManager"
.end annotation


# instance fields
.field private final wrapped:Ljavax/net/ssl/X509KeyManager;


# direct methods
.method private constructor <init>(Ljavax/net/ssl/X509KeyManager;)V
    .locals 0

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore$KerplappKeyManager;->wrapped:Ljavax/net/ssl/X509KeyManager;

    return-void
.end method

.method synthetic constructor <init>(Ljavax/net/ssl/X509KeyManager;Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore$KerplappKeyManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore$KerplappKeyManager;-><init>(Ljavax/net/ssl/X509KeyManager;)V

    return-void
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore$KerplappKeyManager;->wrapped:Ljavax/net/ssl/X509KeyManager;

    .line 346
    invoke-interface {v0, p1, p2, p3}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 0

    .line 0
    const-string p1, "https"

    return-object p1
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore$KerplappKeyManager;->wrapped:Ljavax/net/ssl/X509KeyManager;

    .line 359
    invoke-interface {v0, p1}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore$KerplappKeyManager;->wrapped:Ljavax/net/ssl/X509KeyManager;

    .line 364
    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509KeyManager;->getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore$KerplappKeyManager;->wrapped:Ljavax/net/ssl/X509KeyManager;

    .line 369
    invoke-interface {v0, p1}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore$KerplappKeyManager;->wrapped:Ljavax/net/ssl/X509KeyManager;

    .line 374
    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509KeyManager;->getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
