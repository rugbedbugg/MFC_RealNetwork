.class Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorProviderBuilder$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/operator/PBEMacCalculatorProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorProviderBuilder;->build()Lorg/bouncycastle/operator/PBEMacCalculatorProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorProviderBuilder;


# direct methods
.method constructor <init>(Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorProviderBuilder;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorProviderBuilder$1;->this$0:Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorProviderBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[C)Lorg/bouncycastle/operator/MacCalculator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 0
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBMAC1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/pkcs/PBMAC1Params;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PBMAC1Params;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;-><init>(Lorg/bouncycastle/asn1/pkcs/PBMAC1Params;)V

    iget-object p1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorProviderBuilder$1;->this$0:Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorProviderBuilder;

    invoke-static {p1}, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorProviderBuilder;->access$000(Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorProviderBuilder;)Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->setHelper(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->build([C)Lorg/bouncycastle/operator/MacCalculator;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lorg/bouncycastle/operator/OperatorCreationException;

    const-string p2, "protection algorithm not PB mac based"

    invoke-direct {p1, p2}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
