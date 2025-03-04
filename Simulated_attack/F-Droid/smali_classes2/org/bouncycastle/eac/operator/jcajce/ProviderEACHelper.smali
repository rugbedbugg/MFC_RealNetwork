.class Lorg/bouncycastle/eac/operator/jcajce/ProviderEACHelper;
.super Lorg/bouncycastle/eac/operator/jcajce/EACHelper;


# instance fields
.field private final provider:Ljava/security/Provider;


# direct methods
.method constructor <init>(Ljava/security/Provider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/eac/operator/jcajce/EACHelper;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/eac/operator/jcajce/ProviderEACHelper;->provider:Ljava/security/Provider;

    return-void
.end method


# virtual methods
.method protected createSignature(Ljava/lang/String;)Ljava/security/Signature;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/eac/operator/jcajce/ProviderEACHelper;->provider:Ljava/security/Provider;

    invoke-static {p1, v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object p1

    return-object p1
.end method
