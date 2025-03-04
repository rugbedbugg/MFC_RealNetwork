.class public Lorg/bouncycastle/util/BigIntegers$Cache;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/util/BigIntegers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cache"
.end annotation


# instance fields
.field private final preserve:[Ljava/math/BigInteger;

.field private preserveCounter:I

.field private final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/math/BigInteger;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/util/BigIntegers$Cache;->values:Ljava/util/Map;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/bouncycastle/util/BigIntegers$Cache;->preserve:[Ljava/math/BigInteger;

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/util/BigIntegers$Cache;->preserveCounter:I

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/math/BigInteger;)V
    .locals 2

    .line 0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/util/BigIntegers$Cache;->values:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/util/BigIntegers$Cache;->preserve:[Ljava/math/BigInteger;

    iget v1, p0, Lorg/bouncycastle/util/BigIntegers$Cache;->preserveCounter:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    array-length p1, v0

    rem-int/2addr v1, p1

    iput v1, p0, Lorg/bouncycastle/util/BigIntegers$Cache;->preserveCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 3

    .line 0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/util/BigIntegers$Cache;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/util/BigIntegers$Cache;->preserve:[Ljava/math/BigInteger;

    array-length v2, v1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x0

    aput-object v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized contains(Ljava/math/BigInteger;)Z
    .locals 1

    .line 0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/util/BigIntegers$Cache;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()I
    .locals 1

    .line 0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/util/BigIntegers$Cache;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
