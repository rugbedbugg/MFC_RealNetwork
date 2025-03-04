.class public interface abstract Lio/ktor/utils/io/pool/ObjectPool;
.super Ljava/lang/Object;
.source "Pool.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/utils/io/pool/ObjectPool$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract borrow()Ljava/lang/Object;
.end method

.method public abstract dispose()V
.end method

.method public abstract recycle(Ljava/lang/Object;)V
.end method
