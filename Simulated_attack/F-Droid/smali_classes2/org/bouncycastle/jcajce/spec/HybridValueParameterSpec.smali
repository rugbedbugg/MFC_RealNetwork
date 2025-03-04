.class public Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;
.implements Ljavax/security/auth/Destroyable;


# instance fields
.field private volatile baseSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile t:[B


# direct methods
.method public constructor <init>([BLjava/security/spec/AlgorithmParameterSpec;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->t:[B

    iput-object p2, p0, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->baseSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-void
.end method

.method private checkDestroyed()V
    .locals 2

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "spec has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->t:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->t:[B

    iput-object v0, p0, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->baseSpec:Ljava/security/spec/AlgorithmParameterSpec;

    :cond_0
    return-void
.end method

.method public getBaseParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->checkDestroyed()V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->baseSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public getT()[B
    .locals 1

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->checkDestroyed()V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->t:[B

    return-object v0
.end method

.method public isDestroyed()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
