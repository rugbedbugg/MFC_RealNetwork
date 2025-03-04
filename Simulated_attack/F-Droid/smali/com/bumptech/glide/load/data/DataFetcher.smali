.class public interface abstract Lcom/bumptech/glide/load/data/DataFetcher;
.super Ljava/lang/Object;
.source "DataFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract cleanup()V
.end method

.method public abstract getDataClass()Ljava/lang/Class;
.end method

.method public abstract getDataSource()Lcom/bumptech/glide/load/DataSource;
.end method

.method public abstract loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
.end method
