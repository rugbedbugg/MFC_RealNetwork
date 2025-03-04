.class public Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# static fields
.field public static final firesaberkem128r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final firesaberkem192r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final firesaberkem256r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final lightsaberkem128r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final lightsaberkem192r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final lightsaberkem256r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final saberkem128r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final saberkem192r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final saberkem256r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;


# instance fields
.field private final defaultKeySize:I

.field private final engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

.field private final l:I

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const-string v1, "lightsaberkem128r3"

    const/4 v2, 0x2

    const/16 v3, 0x80

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->lightsaberkem128r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const-string v1, "saberkem128r3"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4, v3}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->saberkem128r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const-string v1, "firesaberkem128r3"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v5, v3}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->firesaberkem128r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const-string v1, "lightsaberkem192r3"

    const/16 v3, 0xc0

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->lightsaberkem192r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const-string v1, "saberkem192r3"

    invoke-direct {v0, v1, v4, v3}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->saberkem192r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const-string v1, "firesaberkem192r3"

    invoke-direct {v0, v1, v5, v3}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->firesaberkem192r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const-string v1, "lightsaberkem256r3"

    const/16 v3, 0x100

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->lightsaberkem256r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const-string v1, "saberkem256r3"

    invoke-direct {v0, v1, v4, v3}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->saberkem256r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const-string v1, "firesaberkem256r3"

    invoke-direct {v0, v1, v5, v3}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->firesaberkem256r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->name:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->l:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->defaultKeySize:I

    new-instance p1, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-direct {p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;-><init>(II)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    return-void
.end method


# virtual methods
.method public getDefaultKeySize()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->defaultKeySize:I

    return v0
.end method

.method public getEngine()Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    return-object v0
.end method

.method public getL()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->l:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->name:Ljava/lang/String;

    return-object v0
.end method
