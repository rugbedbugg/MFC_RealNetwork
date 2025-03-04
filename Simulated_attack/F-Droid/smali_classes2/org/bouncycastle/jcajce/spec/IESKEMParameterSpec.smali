.class public Lorg/bouncycastle/jcajce/spec/IESKEMParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final recipientInfo:[B

.field private final usePointCompression:Z


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/spec/IESKEMParameterSpec;-><init>([BZ)V

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/IESKEMParameterSpec;->recipientInfo:[B

    iput-boolean p2, p0, Lorg/bouncycastle/jcajce/spec/IESKEMParameterSpec;->usePointCompression:Z

    return-void
.end method


# virtual methods
.method public getRecipientInfo()[B
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/IESKEMParameterSpec;->recipientInfo:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public hasUsePointCompression()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/spec/IESKEMParameterSpec;->usePointCompression:Z

    return v0
.end method
