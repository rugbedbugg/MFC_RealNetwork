.class public interface abstract Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;
.super Ljava/lang/Object;
.source "AppDetailsRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppDetailsRecyclerViewAdapterCallbacks"
.end annotation


# virtual methods
.method public abstract installApk(Lorg/fdroid/fdroid/data/Apk;)V
.end method

.method public abstract installCancel()V
.end method

.method public abstract isAppDownloading()Z
.end method

.method public abstract launchApk()V
.end method

.method public abstract onPreferredRepoChanged(J)V
.end method

.method public abstract onRepoChanged(J)V
.end method

.method public abstract openUrl(Ljava/lang/String;)V
.end method

.method public abstract uninstallApk()V
.end method
