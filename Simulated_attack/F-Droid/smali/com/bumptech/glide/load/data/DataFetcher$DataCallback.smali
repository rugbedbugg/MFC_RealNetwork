.class public interface abstract Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;
.super Ljava/lang/Object;
.source "DataFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/data/DataFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataCallback"
.end annotation


# virtual methods
.method public abstract onDataReady(Ljava/lang/Object;)V
.end method

.method public abstract onLoadFailed(Ljava/lang/Exception;)V
.end method
