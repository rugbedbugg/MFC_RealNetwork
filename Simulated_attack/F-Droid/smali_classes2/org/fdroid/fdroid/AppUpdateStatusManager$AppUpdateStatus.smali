.class public Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;
.super Ljava/lang/Object;
.source "AppUpdateStatusManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/AppUpdateStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppUpdateStatus"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final apk:Lorg/fdroid/fdroid/data/Apk;

.field public final app:Lorg/fdroid/fdroid/data/App;

.field public errorText:Ljava/lang/String;

.field public intent:Landroid/app/PendingIntent;

.field public progressCurrent:J

.field public progressMax:J

.field public status:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 183
    new-instance v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus$1;

    invoke-direct {v0}, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus$1;-><init>()V

    sput-object v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/data/App;

    iput-object v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->app:Lorg/fdroid/fdroid/data/App;

    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/data/Apk;

    iput-object v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->apk:Lorg/fdroid/fdroid/data/Apk;

    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->intent:Landroid/app/PendingIntent;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    iput-object v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->status:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->progressCurrent:J

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->progressMax:J

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->errorText:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;Landroid/app/PendingIntent;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->app:Lorg/fdroid/fdroid/data/App;

    iput-object p2, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->apk:Lorg/fdroid/fdroid/data/Apk;

    iput-object p3, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->status:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    iput-object p4, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->intent:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public copy()Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;
    .locals 5

    .line 203
    new-instance v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    iget-object v1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->app:Lorg/fdroid/fdroid/data/App;

    iget-object v2, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->apk:Lorg/fdroid/fdroid/data/Apk;

    iget-object v3, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->status:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    iget-object v4, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->intent:Landroid/app/PendingIntent;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;-><init>(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->errorText:Ljava/lang/String;

    iput-object v1, v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->errorText:Ljava/lang/String;

    iget-wide v1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->progressCurrent:J

    iput-wide v1, v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->progressCurrent:J

    iget-wide v1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->progressMax:J

    iput-wide v1, v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->progressMax:J

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getCanonicalUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->apk:Lorg/fdroid/fdroid/data/Apk;

    .line 145
    invoke-virtual {v0}, Lorg/fdroid/fdroid/data/Apk;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->app:Lorg/fdroid/fdroid/data/App;

    iget-object v1, v1, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->status:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Progress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->progressCurrent:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->progressMax:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->app:Lorg/fdroid/fdroid/data/App;

    const/4 v0, 0x0

    .line 169
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->apk:Lorg/fdroid/fdroid/data/Apk;

    .line 170
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->intent:Landroid/app/PendingIntent;

    .line 171
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->status:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    .line 172
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-wide v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->progressCurrent:J

    .line 173
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->progressMax:J

    .line 174
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->errorText:Ljava/lang/String;

    .line 175
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
