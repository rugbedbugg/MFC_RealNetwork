.class public final Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;
.super Ljava/lang/Object;
.source "ParcelFileDescriptorRewinder.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataRewinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;,
        Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$Factory;
    }
.end annotation


# instance fields
.field private final rewinder:Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;->rewinder:Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;

    return-void
.end method

.method public static isSupported()Z
    .locals 2

    const-string v0, "robolectric"

    .line 22
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .line 0
    return-void
.end method

.method public rewindAndGet()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;->rewinder:Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;

    .line 35
    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;->rewind()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rewindAndGet()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;->rewindAndGet()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method
