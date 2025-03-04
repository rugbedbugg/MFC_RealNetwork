.class public abstract Lorg/fdroid/fdroid/privileged/IPrivilegedService$Stub;
.super Landroid/os/Binder;
.source "IPrivilegedService.java"

# interfaces
.implements Lorg/fdroid/fdroid/privileged/IPrivilegedService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/privileged/IPrivilegedService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/privileged/IPrivilegedService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_deletePackage:I = 0x3

.field static final TRANSACTION_getInstalledPackages:I = 0x4

.field static final TRANSACTION_hasPrivilegedPermissions:I = 0x1

.field static final TRANSACTION_installPackage:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "org.fdroid.fdroid.privileged.IPrivilegedService"

    .line 67
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/fdroid/fdroid/privileged/IPrivilegedService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "org.fdroid.fdroid.privileged.IPrivilegedService"

    .line 78
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79
    instance-of v1, v0, Lorg/fdroid/fdroid/privileged/IPrivilegedService;

    if-eqz v1, :cond_1

    .line 80
    check-cast v0, Lorg/fdroid/fdroid/privileged/IPrivilegedService;

    return-object v0

    .line 82
    :cond_1
    new-instance v0, Lorg/fdroid/fdroid/privileged/IPrivilegedService$Stub$Proxy;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/privileged/IPrivilegedService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "org.fdroid.fdroid.privileged.IPrivilegedService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 92
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 138
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 139
    invoke-interface {p0, p1}, Lorg/fdroid/fdroid/privileged/IPrivilegedService;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p1

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-static {p3, p1, v1}, Lorg/fdroid/fdroid/privileged/IPrivilegedService$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lorg/fdroid/fdroid/privileged/IPrivilegedCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/fdroid/fdroid/privileged/IPrivilegedCallback;

    move-result-object p2

    .line 132
    invoke-interface {p0, p1, p3, p2}, Lorg/fdroid/fdroid/privileged/IPrivilegedService;->deletePackage(Ljava/lang/String;ILorg/fdroid/fdroid/privileged/IPrivilegedCallback;)V

    goto :goto_0

    .line 114
    :cond_3
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lorg/fdroid/fdroid/privileged/IPrivilegedService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lorg/fdroid/fdroid/privileged/IPrivilegedCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/fdroid/fdroid/privileged/IPrivilegedCallback;

    move-result-object p2

    .line 121
    invoke-interface {p0, p1, p3, p4, p2}, Lorg/fdroid/fdroid/privileged/IPrivilegedService;->installPackage(Landroid/net/Uri;ILjava/lang/String;Lorg/fdroid/fdroid/privileged/IPrivilegedCallback;)V

    goto :goto_0

    .line 106
    :cond_4
    invoke-interface {p0}, Lorg/fdroid/fdroid/privileged/IPrivilegedService;->hasPrivilegedPermissions()Z

    move-result p1

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 98
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
