.class public interface abstract Lkotlinx/coroutines/sync/Mutex;
.super Ljava/lang/Object;
.source "Mutex.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/sync/Mutex$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract tryLock(Ljava/lang/Object;)Z
.end method

.method public abstract unlock(Ljava/lang/Object;)V
.end method
