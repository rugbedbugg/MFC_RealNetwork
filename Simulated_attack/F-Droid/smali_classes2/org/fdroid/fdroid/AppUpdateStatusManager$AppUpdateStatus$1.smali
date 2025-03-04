.class Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus$1;
.super Ljava/lang/Object;
.source "AppUpdateStatusManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 183
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus$1;->createFromParcel(Landroid/os/Parcel;)Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;
    .locals 1

    .line 186
    new-instance v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    invoke-direct {v0, p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 183
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus$1;->newArray(I)[Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;
    .locals 0

    .line 191
    new-array p1, p1, [Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    return-object p1
.end method
