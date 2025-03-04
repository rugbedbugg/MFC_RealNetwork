.class abstract Lcom/bumptech/glide/load/engine/executor/RuntimeCompat;
.super Ljava/lang/Object;
.source "RuntimeCompat.java"


# direct methods
.method static availableProcessors()I
    .locals 1

    .line 23
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    return v0
.end method
