.class public interface abstract Lorg/fdroid/fdroid/privileged/IPrivilegedService;
.super Ljava/lang/Object;
.source "IPrivilegedService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/privileged/IPrivilegedService$_Parcel;,
        Lorg/fdroid/fdroid/privileged/IPrivilegedService$Stub;,
        Lorg/fdroid/fdroid/privileged/IPrivilegedService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "org.fdroid.fdroid.privileged.IPrivilegedService"


# virtual methods
.method public abstract deletePackage(Ljava/lang/String;ILorg/fdroid/fdroid/privileged/IPrivilegedCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInstalledPackages(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hasPrivilegedPermissions()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract installPackage(Landroid/net/Uri;ILjava/lang/String;Lorg/fdroid/fdroid/privileged/IPrivilegedCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
