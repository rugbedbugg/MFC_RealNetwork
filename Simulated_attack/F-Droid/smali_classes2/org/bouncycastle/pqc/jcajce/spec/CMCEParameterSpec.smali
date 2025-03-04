.class public Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final mceliece348864:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

.field public static final mceliece348864f:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

.field public static final mceliece460896:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

.field public static final mceliece460896f:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

.field public static final mceliece6688128:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

.field public static final mceliece6688128f:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

.field public static final mceliece6960119:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

.field public static final mceliece6960119f:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

.field public static final mceliece8192128:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

.field public static final mceliece8192128f:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

.field private static parameters:Ljava/util/Map;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece348864r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->mceliece348864:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece348864fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->mceliece348864f:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece460896r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->mceliece460896:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece460896fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->mceliece460896f:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece6688128r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->mceliece6688128:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece6688128fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->mceliece6688128f:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece6960119r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->mceliece6960119:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece6960119fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->mceliece6960119f:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece8192128r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->mceliece8192128:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece8192128fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->mceliece8192128f:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->parameters:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->name:Ljava/lang/String;

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;
    .locals 1

    .line 0
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->parameters:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    return-object p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->name:Ljava/lang/String;

    return-object v0
.end method
