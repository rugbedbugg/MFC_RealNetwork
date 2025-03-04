.class public abstract synthetic Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher$$ExternalSyntheticApiModelOutline0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m()Z
    .locals 1

    .line 0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageLegacy()Z

    move-result v0

    return v0
.end method
