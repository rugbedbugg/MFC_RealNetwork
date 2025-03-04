.class public Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor$Builder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-void
.end method


# virtual methods
.method public build()Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor$Builder;->random:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor$Builder;->random:Ljava/security/SecureRandom;

    :cond_0
    new-instance v0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;

    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor$Builder;->random:Ljava/security/SecureRandom;

    iget-object v2, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor$Builder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor$1;)V

    return-object v0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor$Builder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor$Builder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor$Builder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor$Builder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-object p0
.end method

.method public setRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor$Builder;->random:Ljava/security/SecureRandom;

    return-object p0
.end method
