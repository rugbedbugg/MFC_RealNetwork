.class public Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private final recipientHash:[B

.field private final recipientKey:Ljava/security/interfaces/ECPublicKey;


# direct methods
.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;[B)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper$Builder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    iput-object p1, p0, Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper$Builder;->recipientKey:Ljava/security/interfaces/ECPublicKey;

    iput-object p2, p0, Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper$Builder;->recipientHash:[B

    return-void
.end method


# virtual methods
.method public build()Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper;
    .locals 5

    .line 0
    new-instance v0, Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper;

    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper$Builder;->recipientKey:Ljava/security/interfaces/ECPublicKey;

    iget-object v2, p0, Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper$Builder;->recipientHash:[B

    iget-object v3, p0, Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper$Builder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper;-><init>(Ljava/security/interfaces/ECPublicKey;[BLorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper$1;)V

    return-object v0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper$Builder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper$Builder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper$Builder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper$Builder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-object p0
.end method
