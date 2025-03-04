.class public Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final keyAlgorithmName:Ljava/lang/String;

.field private final publicKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->publicKey:Ljava/security/PublicKey;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->keyAlgorithmName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKeyAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->keyAlgorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method
