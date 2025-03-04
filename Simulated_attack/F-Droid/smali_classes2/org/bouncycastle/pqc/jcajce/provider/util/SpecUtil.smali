.class public Lorg/bouncycastle/pqc/jcajce/provider/util/SpecUtil;
.super Ljava/lang/Object;


# static fields
.field private static NO_ARGS:[Ljava/lang/Object;

.field private static NO_PARAMS:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    sput-object v1, Lorg/bouncycastle/pqc/jcajce/provider/util/SpecUtil;->NO_PARAMS:[Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/provider/util/SpecUtil;->NO_ARGS:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .line 0
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/provider/util/SpecUtil;->NO_PARAMS:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/Object;
    .locals 1

    .line 0
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/provider/util/SpecUtil;->NO_ARGS:[Ljava/lang/Object;

    return-object v0
.end method

.method public static getNameFrom(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/provider/util/SpecUtil$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/jcajce/provider/util/SpecUtil$1;-><init>(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
