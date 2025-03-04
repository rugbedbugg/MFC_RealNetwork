.class abstract Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;,
        Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;
    }
.end annotation


# instance fields
.field n:I

.field q:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;->n:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;->q:I

    return-void
.end method


# virtual methods
.method abstract genMatrix([B)[S
.end method
