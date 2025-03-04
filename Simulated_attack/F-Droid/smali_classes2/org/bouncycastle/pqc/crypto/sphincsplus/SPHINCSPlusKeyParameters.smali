.class public Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# instance fields
.field final parameters:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;


# direct methods
.method protected constructor <init>(ZLorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusKeyParameters;->parameters:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusKeyParameters;->parameters:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    return-object v0
.end method
