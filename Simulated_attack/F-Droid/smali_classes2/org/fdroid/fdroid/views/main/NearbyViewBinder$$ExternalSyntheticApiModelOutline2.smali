.class public abstract synthetic Lorg/fdroid/fdroid/views/main/NearbyViewBinder$$ExternalSyntheticApiModelOutline2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Landroid/os/storage/StorageManager;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
