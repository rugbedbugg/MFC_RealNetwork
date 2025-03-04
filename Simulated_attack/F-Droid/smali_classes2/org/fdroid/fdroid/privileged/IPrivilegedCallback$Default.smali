.class public Lorg/fdroid/fdroid/privileged/IPrivilegedCallback$Default;
.super Ljava/lang/Object;
.source "IPrivilegedCallback.java"

# interfaces
.implements Lorg/fdroid/fdroid/privileged/IPrivilegedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/privileged/IPrivilegedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleResult(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method
