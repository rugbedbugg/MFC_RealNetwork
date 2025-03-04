.class public interface abstract Lorg/fdroid/fdroid/privileged/IPrivilegedCallback;
.super Ljava/lang/Object;
.source "IPrivilegedCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/privileged/IPrivilegedCallback$Stub;,
        Lorg/fdroid/fdroid/privileged/IPrivilegedCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "org.fdroid.fdroid.privileged.IPrivilegedCallback"


# virtual methods
.method public abstract handleResult(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
