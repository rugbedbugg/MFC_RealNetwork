.class public Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# instance fields
.field private params:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;


# direct methods
.method public constructor <init>(ZLorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    return-object v0
.end method
