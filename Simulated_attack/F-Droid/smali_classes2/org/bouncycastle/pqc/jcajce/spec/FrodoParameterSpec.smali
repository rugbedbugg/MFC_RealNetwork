.class public Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final frodokem19888r3:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

.field public static final frodokem19888shaker3:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

.field public static final frodokem31296r3:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

.field public static final frodokem31296shaker3:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

.field public static final frodokem43088r3:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

.field public static final frodokem43088shaker3:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

.field private static parameters:Ljava/util/Map;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem19888r3:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->frodokem19888r3:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem19888shaker3:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->frodokem19888shaker3:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem31296r3:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->frodokem31296r3:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem31296shaker3:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->frodokem31296shaker3:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem43088r3:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->frodokem43088r3:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem43088shaker3:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->frodokem43088shaker3:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->parameters:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->name:Ljava/lang/String;

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;
    .locals 1

    .line 0
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->parameters:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    return-object p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->name:Ljava/lang/String;

    return-object v0
.end method
