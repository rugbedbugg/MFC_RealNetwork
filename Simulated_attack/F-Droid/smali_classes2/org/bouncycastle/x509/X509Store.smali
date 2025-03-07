.class public Lorg/bouncycastle/x509/X509Store;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/util/Store;


# instance fields
.field private _provider:Ljava/security/Provider;

.field private _spi:Lorg/bouncycastle/x509/X509StoreSpi;


# direct methods
.method private constructor <init>(Ljava/security/Provider;Lorg/bouncycastle/x509/X509StoreSpi;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/x509/X509Store;->_provider:Ljava/security/Provider;

    iput-object p2, p0, Lorg/bouncycastle/x509/X509Store;->_spi:Lorg/bouncycastle/x509/X509StoreSpi;

    return-void
.end method

.method private static createStore(Lorg/bouncycastle/x509/X509Util$Implementation;Lorg/bouncycastle/x509/X509StoreParameters;)Lorg/bouncycastle/x509/X509Store;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/x509/X509Util$Implementation;->getEngine()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/x509/X509StoreSpi;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/x509/X509StoreSpi;->engineInit(Lorg/bouncycastle/x509/X509StoreParameters;)V

    new-instance p1, Lorg/bouncycastle/x509/X509Store;

    invoke-virtual {p0}, Lorg/bouncycastle/x509/X509Util$Implementation;->getProvider()Ljava/security/Provider;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lorg/bouncycastle/x509/X509Store;-><init>(Ljava/security/Provider;Lorg/bouncycastle/x509/X509StoreSpi;)V

    return-object p1
.end method

.method public static getInstance(Ljava/lang/String;Lorg/bouncycastle/x509/X509StoreParameters;)Lorg/bouncycastle/x509/X509Store;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/NoSuchStoreException;
        }
    .end annotation

    .line 0
    :try_start_0
    const-string v0, "X509Store"

    invoke-static {v0, p0}, Lorg/bouncycastle/x509/X509Util;->getImplementation(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/x509/X509Util$Implementation;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/bouncycastle/x509/X509Store;->createStore(Lorg/bouncycastle/x509/X509Util$Implementation;Lorg/bouncycastle/x509/X509StoreParameters;)Lorg/bouncycastle/x509/X509Store;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/x509/NoSuchStoreException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/bouncycastle/x509/NoSuchStoreException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance(Ljava/lang/String;Lorg/bouncycastle/x509/X509StoreParameters;Ljava/lang/String;)Lorg/bouncycastle/x509/X509Store;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/NoSuchStoreException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 0
    invoke-static {p2}, Lorg/bouncycastle/x509/X509Util;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/x509/X509Store;->getInstance(Ljava/lang/String;Lorg/bouncycastle/x509/X509StoreParameters;Ljava/security/Provider;)Lorg/bouncycastle/x509/X509Store;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;Lorg/bouncycastle/x509/X509StoreParameters;Ljava/security/Provider;)Lorg/bouncycastle/x509/X509Store;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/NoSuchStoreException;
        }
    .end annotation

    .line 0
    :try_start_0
    const-string v0, "X509Store"

    invoke-static {v0, p0, p2}, Lorg/bouncycastle/x509/X509Util;->getImplementation(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)Lorg/bouncycastle/x509/X509Util$Implementation;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/bouncycastle/x509/X509Store;->createStore(Lorg/bouncycastle/x509/X509Util$Implementation;Lorg/bouncycastle/x509/X509StoreParameters;)Lorg/bouncycastle/x509/X509Store;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/x509/NoSuchStoreException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/bouncycastle/x509/NoSuchStoreException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/x509/X509Store;->_spi:Lorg/bouncycastle/x509/X509StoreSpi;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/x509/X509StoreSpi;->engineGetMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getProvider()Ljava/security/Provider;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/x509/X509Store;->_provider:Ljava/security/Provider;

    return-object v0
.end method
