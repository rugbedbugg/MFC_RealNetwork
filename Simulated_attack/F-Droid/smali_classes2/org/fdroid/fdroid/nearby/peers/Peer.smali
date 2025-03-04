.class public interface abstract Lorg/fdroid/fdroid/nearby/peers/Peer;
.super Ljava/lang/Object;
.source "Peer.java"

# interfaces
.implements Landroid/os/Parcelable;


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getFingerprint()Ljava/lang/String;
.end method

.method public abstract getIcon()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getRepoAddress()Ljava/lang/String;
.end method

.method public abstract shouldPromptForSwapBack()Z
.end method
