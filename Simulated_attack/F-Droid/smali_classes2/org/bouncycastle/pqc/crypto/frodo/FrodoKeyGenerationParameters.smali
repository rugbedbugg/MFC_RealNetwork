.class public Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;


# instance fields
.field private params:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;)V
    .locals 1

    .line 0
    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyGenerationParameters;->params:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyGenerationParameters;->params:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    return-object v0
.end method
