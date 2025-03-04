.class Lorg/bouncycastle/its/jcajce/ClassUtil;
.super Ljava/lang/Object;


# static fields
.field private static final gcmSpecClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    const-class v0, Lorg/bouncycastle/its/jcajce/ClassUtil;

    const-string v1, "javax.crypto.spec.GCMParameterSpec"

    invoke-static {v0, v1}, Lorg/bouncycastle/its/jcajce/ClassUtil;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/its/jcajce/ClassUtil;->gcmSpecClass:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    .line 0
    sget-object v0, Lorg/bouncycastle/its/jcajce/ClassUtil;->gcmSpecClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getGCMSpec([BI)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    .line 0
    sget-object v0, Lorg/bouncycastle/its/jcajce/ClassUtil;->gcmSpecClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/bouncycastle/its/jcajce/ClassUtil$1;

    invoke-direct {v0, p1, p0}, Lorg/bouncycastle/its/jcajce/ClassUtil$1;-><init>(I[B)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    new-instance v0, Lorg/bouncycastle/jcajce/spec/AEADParameterSpec;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/jcajce/spec/AEADParameterSpec;-><init>([BI)V

    return-object v0
.end method

.method static loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    .line 0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/its/jcajce/ClassUtil$2;

    invoke-direct {p0, p1}, Lorg/bouncycastle/its/jcajce/ClassUtil$2;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
