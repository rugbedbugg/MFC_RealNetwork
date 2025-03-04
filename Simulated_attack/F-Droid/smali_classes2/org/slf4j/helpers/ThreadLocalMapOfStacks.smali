.class public Lorg/slf4j/helpers/ThreadLocalMapOfStacks;
.super Ljava/lang/Object;
.source "ThreadLocalMapOfStacks.java"


# instance fields
.field final tlMapOfStacks:Ljava/lang/ThreadLocal;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/slf4j/helpers/ThreadLocalMapOfStacks;->tlMapOfStacks:Ljava/lang/ThreadLocal;

    return-void
.end method
