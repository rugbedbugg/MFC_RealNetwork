.class public interface abstract Lcom/bumptech/glide/request/target/Target;
.super Ljava/lang/Object;
.source "Target.java"

# interfaces
.implements Lcom/bumptech/glide/manager/LifecycleListener;


# virtual methods
.method public abstract getRequest()Lcom/bumptech/glide/request/Request;
.end method

.method public abstract getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
.end method

.method public abstract onLoadCleared(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract onLoadFailed(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract onLoadStarted(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
.end method

.method public abstract removeCallback(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
.end method

.method public abstract setRequest(Lcom/bumptech/glide/request/Request;)V
.end method
