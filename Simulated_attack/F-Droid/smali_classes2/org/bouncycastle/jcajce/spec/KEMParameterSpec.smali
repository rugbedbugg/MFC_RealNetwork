.class public Lorg/bouncycastle/jcajce/spec/KEMParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final keyAlgorithmName:Ljava/lang/String;

.field private final keySizeInBits:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 0
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/spec/KEMParameterSpec;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/KEMParameterSpec;->keyAlgorithmName:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/jcajce/spec/KEMParameterSpec;->keySizeInBits:I

    return-void
.end method


# virtual methods
.method public getKeyAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/KEMParameterSpec;->keyAlgorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getKeySizeInBits()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/jcajce/spec/KEMParameterSpec;->keySizeInBits:I

    return v0
.end method
