.class public Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# static fields
.field private static final cdf_table1344:[S

.field private static final cdf_table640:[S

.field private static final cdf_table976:[S

.field public static final frodokem19888r3:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

.field public static final frodokem19888shaker3:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

.field public static final frodokem31296r3:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

.field public static final frodokem31296shaker3:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

.field public static final frodokem43088r3:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

.field public static final frodokem43088shaker3:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;


# instance fields
.field private final B:I

.field private final D:I

.field private final cdf_table:[S

.field private final defaultKeySize:I

.field private final digest:Lorg/bouncycastle/crypto/Xof;

.field private final engine:Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;

.field private final mGen:Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;

.field private final n:I

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 0
    const/16 v0, 0xd

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->cdf_table640:[S

    const/16 v1, 0xb

    new-array v11, v1, [S

    fill-array-data v11, :array_1

    sput-object v11, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->cdf_table976:[S

    const/4 v1, 0x7

    new-array v12, v1, [S

    fill-array-data v12, :array_2

    sput-object v12, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->cdf_table1344:[S

    new-instance v10, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    const-string v2, "frodokem19888"

    const/16 v3, 0x280

    const/16 v4, 0xf

    const/4 v5, 0x2

    new-instance v7, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v13, 0x80

    invoke-direct {v7, v13}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    new-instance v8, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;

    const/16 v14, 0x280

    const v15, 0x8000

    invoke-direct {v8, v14, v15}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;-><init>(II)V

    const/16 v9, 0x40

    move-object v1, v10

    move-object v6, v0

    invoke-direct/range {v1 .. v9}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;-><init>(Ljava/lang/String;III[SLorg/bouncycastle/crypto/Xof;Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;I)V

    sput-object v10, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem19888r3:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    new-instance v10, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    const-string v2, "frodokem19888shake"

    new-instance v7, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {v7, v13}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    new-instance v8, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;

    invoke-direct {v8, v14, v15}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;-><init>(II)V

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;-><init>(Ljava/lang/String;III[SLorg/bouncycastle/crypto/Xof;Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;I)V

    sput-object v10, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem19888shaker3:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    const-string v3, "frodokem31296"

    const/16 v4, 0x3d0

    const/16 v5, 0x10

    const/4 v6, 0x3

    new-instance v8, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x100

    invoke-direct {v8, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    new-instance v9, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;

    const/16 v13, 0x3d0

    const/high16 v14, 0x10000

    invoke-direct {v9, v13, v14}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;-><init>(II)V

    const/16 v10, 0x60

    move-object v2, v0

    move-object v7, v11

    invoke-direct/range {v2 .. v10}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;-><init>(Ljava/lang/String;III[SLorg/bouncycastle/crypto/Xof;Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem31296r3:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    const-string v3, "frodokem31296shake"

    new-instance v8, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {v8, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    new-instance v9, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;

    invoke-direct {v9, v13, v14}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;-><init>(II)V

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;-><init>(Ljava/lang/String;III[SLorg/bouncycastle/crypto/Xof;Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem31296shaker3:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    const-string v3, "frodokem43088"

    const/16 v4, 0x540

    const/4 v6, 0x4

    new-instance v8, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {v8, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    new-instance v9, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;

    const/16 v11, 0x540

    invoke-direct {v9, v11, v14}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;-><init>(II)V

    const/16 v10, 0x80

    move-object v2, v0

    move-object v7, v12

    invoke-direct/range {v2 .. v10}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;-><init>(Ljava/lang/String;III[SLorg/bouncycastle/crypto/Xof;Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem43088r3:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    const-string v3, "frodokem43088shake"

    new-instance v8, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {v8, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    new-instance v9, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;

    invoke-direct {v9, v11, v14}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;-><init>(II)V

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;-><init>(Ljava/lang/String;III[SLorg/bouncycastle/crypto/Xof;Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem43088shaker3:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    return-void

    :array_0
    .array-data 2
        0x1223s
        0x3433s
        0x5063s
        0x64f3s
        0x722bs
        0x79a9s
        0x7d67s
        0x7f0ds
        0x7fb1s
        0x7fe9s
        0x7ffas
        0x7ffes
        0x7fffs
    .end array-data

    nop

    :array_1
    .array-data 2
        0x1606s
        0x3e2bs
        0x5c89s
        0x6f9bs
        0x798cs
        0x7dd9s
        0x7f65s
        0x7fdbs
        0x7ff8s
        0x7ffes
        0x7fffs
    .end array-data

    nop

    :array_2
    .array-data 2
        0x23b6s
        0x5ba6s
        0x7682s
        0x7e69s
        0x7fd5s
        0x7ffds
        0x7fffs
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;III[SLorg/bouncycastle/crypto/Xof;Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;I)V
    .locals 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->name:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->n:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->D:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->B:I

    iput-object p5, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->cdf_table:[S

    iput-object p6, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->digest:Lorg/bouncycastle/crypto/Xof;

    iput-object p7, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->mGen:Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;

    iput p8, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->defaultKeySize:I

    new-instance p1, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;-><init>(III[SLorg/bouncycastle/crypto/Xof;Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->engine:Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;

    return-void
.end method


# virtual methods
.method public getB()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->B:I

    return v0
.end method

.method public getCdf_table()[S
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->cdf_table:[S

    return-object v0
.end method

.method public getD()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->D:I

    return v0
.end method

.method public getDefaultKeySize()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->defaultKeySize:I

    return v0
.end method

.method public getDigest()Lorg/bouncycastle/crypto/Xof;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->digest:Lorg/bouncycastle/crypto/Xof;

    return-object v0
.end method

.method getEngine()Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->engine:Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;

    return-object v0
.end method

.method public getN()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->n:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getmGen()Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->mGen:Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;

    return-object v0
.end method
