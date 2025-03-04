.class public Lorg/bouncycastle/oer/DeferredElementSupplier;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/oer/ElementSupplier;


# instance fields
.field private buildProduct:Lorg/bouncycastle/oer/Element;

.field private final src:Lorg/bouncycastle/oer/OERDefinition$Builder;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/OERDefinition$Builder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/DeferredElementSupplier;->src:Lorg/bouncycastle/oer/OERDefinition$Builder;

    return-void
.end method


# virtual methods
.method public build()Lorg/bouncycastle/oer/Element;
    .locals 1

    .line 0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/oer/DeferredElementSupplier;->buildProduct:Lorg/bouncycastle/oer/Element;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/oer/DeferredElementSupplier;->src:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->build()Lorg/bouncycastle/oer/Element;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/DeferredElementSupplier;->buildProduct:Lorg/bouncycastle/oer/Element;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/oer/DeferredElementSupplier;->buildProduct:Lorg/bouncycastle/oer/Element;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
