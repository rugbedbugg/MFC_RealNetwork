.class final Lorg/bouncycastle/pqc/jcajce/provider/util/SpecUtil$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/pqc/jcajce/provider/util/SpecUtil;->getNameFrom(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$paramSpec:Ljava/security/spec/AlgorithmParameterSpec;


# direct methods
.method constructor <init>(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/util/SpecUtil$1;->val$paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 3

    .line 0
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/util/SpecUtil$1;->val$paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getName"

    invoke-static {}, Lorg/bouncycastle/pqc/jcajce/provider/util/SpecUtil;->access$000()[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/util/SpecUtil$1;->val$paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-static {}, Lorg/bouncycastle/pqc/jcajce/provider/util/SpecUtil;->access$100()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
