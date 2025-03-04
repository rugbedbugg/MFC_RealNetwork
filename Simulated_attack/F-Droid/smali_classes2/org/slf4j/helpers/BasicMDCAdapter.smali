.class public Lorg/slf4j/helpers/BasicMDCAdapter;
.super Ljava/lang/Object;
.source "BasicMDCAdapter.java"

# interfaces
.implements Lorg/slf4j/spi/MDCAdapter;


# instance fields
.field private final inheritableThreadLocalMap:Ljava/lang/InheritableThreadLocal;

.field private final threadLocalMapOfDeques:Lorg/slf4j/helpers/ThreadLocalMapOfStacks;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lorg/slf4j/helpers/ThreadLocalMapOfStacks;

    invoke-direct {v0}, Lorg/slf4j/helpers/ThreadLocalMapOfStacks;-><init>()V

    iput-object v0, p0, Lorg/slf4j/helpers/BasicMDCAdapter;->threadLocalMapOfDeques:Lorg/slf4j/helpers/ThreadLocalMapOfStacks;

    .line 48
    new-instance v0, Lorg/slf4j/helpers/BasicMDCAdapter$1;

    invoke-direct {v0, p0}, Lorg/slf4j/helpers/BasicMDCAdapter$1;-><init>(Lorg/slf4j/helpers/BasicMDCAdapter;)V

    iput-object v0, p0, Lorg/slf4j/helpers/BasicMDCAdapter;->inheritableThreadLocalMap:Ljava/lang/InheritableThreadLocal;

    return-void
.end method


# virtual methods
.method public getCopyOfContextMap()Ljava/util/Map;
    .locals 2

    iget-object v0, p0, Lorg/slf4j/helpers/BasicMDCAdapter;->inheritableThreadLocalMap:Ljava/lang/InheritableThreadLocal;

    .line 136
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 138
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
