.class public abstract Lcom/bumptech/glide/load/resource/SimpleResource;
.super Ljava/lang/Object;
.source "SimpleResource.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/Resource;


# instance fields
.field protected final data:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/SimpleResource;->data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/SimpleResource;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getResourceClass()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/SimpleResource;->data:Ljava/lang/Object;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public recycle()V
    .locals 0

    .line 0
    return-void
.end method
