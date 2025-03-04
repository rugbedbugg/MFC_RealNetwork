.class public final Lcom/bumptech/glide/integration/ktx/Resource;
.super Lcom/bumptech/glide/integration/ktx/GlideFlowInstant;
.source "Flows.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/integration/ktx/Resource$WhenMappings;
    }
.end annotation


# instance fields
.field private final resource:Ljava/lang/Object;

.field private final status:Lcom/bumptech/glide/integration/ktx/Status;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/integration/ktx/Status;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 202
    invoke-direct {p0, v0}, Lcom/bumptech/glide/integration/ktx/GlideFlowInstant;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/bumptech/glide/integration/ktx/Resource;->status:Lcom/bumptech/glide/integration/ktx/Status;

    iput-object p2, p0, Lcom/bumptech/glide/integration/ktx/Resource;->resource:Ljava/lang/Object;

    .line 205
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/ktx/Resource;->getStatus()Lcom/bumptech/glide/integration/ktx/Status;

    move-result-object p1

    sget-object p2, Lcom/bumptech/glide/integration/ktx/Resource$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 204
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 212
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/bumptech/glide/integration/ktx/Resource;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/bumptech/glide/integration/ktx/Resource;

    invoke-virtual {p0}, Lcom/bumptech/glide/integration/ktx/Resource;->getStatus()Lcom/bumptech/glide/integration/ktx/Status;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bumptech/glide/integration/ktx/Resource;->getStatus()Lcom/bumptech/glide/integration/ktx/Status;

    move-result-object v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/integration/ktx/Resource;->resource:Ljava/lang/Object;

    iget-object p1, p1, Lcom/bumptech/glide/integration/ktx/Resource;->resource:Ljava/lang/Object;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getResource()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/bumptech/glide/integration/ktx/Resource;->resource:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatus()Lcom/bumptech/glide/integration/ktx/Status;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/bumptech/glide/integration/ktx/Resource;->status:Lcom/bumptech/glide/integration/ktx/Status;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/ktx/Resource;->getStatus()Lcom/bumptech/glide/integration/ktx/Status;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bumptech/glide/integration/ktx/Resource;->resource:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resource(status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bumptech/glide/integration/ktx/Resource;->getStatus()Lcom/bumptech/glide/integration/ktx/Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/integration/ktx/Resource;->resource:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
