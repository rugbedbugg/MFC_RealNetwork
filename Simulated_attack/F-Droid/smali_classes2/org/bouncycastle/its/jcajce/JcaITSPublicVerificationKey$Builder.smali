.class public Lorg/bouncycastle/its/jcajce/JcaITSPublicVerificationKey$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/its/jcajce/JcaITSPublicVerificationKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSPublicVerificationKey$Builder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-void
.end method


# virtual methods
.method public build(Ljava/security/PublicKey;)Lorg/bouncycastle/its/jcajce/JcaITSPublicVerificationKey;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/its/jcajce/JcaITSPublicVerificationKey;

    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSPublicVerificationKey$Builder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/its/jcajce/JcaITSPublicVerificationKey;-><init>(Ljava/security/PublicKey;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    return-object v0
.end method

.method public build(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;)Lorg/bouncycastle/its/jcajce/JcaITSPublicVerificationKey;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/its/jcajce/JcaITSPublicVerificationKey;

    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSPublicVerificationKey$Builder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/its/jcajce/JcaITSPublicVerificationKey;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    return-object v0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/its/jcajce/JcaITSPublicVerificationKey$Builder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSPublicVerificationKey$Builder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/its/jcajce/JcaITSPublicVerificationKey$Builder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSPublicVerificationKey$Builder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-object p0
.end method
