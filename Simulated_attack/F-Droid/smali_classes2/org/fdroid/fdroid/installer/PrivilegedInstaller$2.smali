.class Lorg/fdroid/fdroid/installer/PrivilegedInstaller$2;
.super Ljava/lang/Object;
.source "PrivilegedInstaller.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/installer/PrivilegedInstaller;->installPackageInternal(Landroid/net/Uri;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/installer/PrivilegedInstaller;

.field final synthetic val$canonicalUri:Landroid/net/Uri;

.field final synthetic val$localApkUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/installer/PrivilegedInstaller;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/fdroid/fdroid/installer/PrivilegedInstaller$2;->this$0:Lorg/fdroid/fdroid/installer/PrivilegedInstaller;

    iput-object p2, p0, Lorg/fdroid/fdroid/installer/PrivilegedInstaller$2;->val$canonicalUri:Landroid/net/Uri;

    iput-object p3, p0, Lorg/fdroid/fdroid/installer/PrivilegedInstaller$2;->val$localApkUri:Landroid/net/Uri;

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string p1, "org.fdroid.fdroid.installer.Installer.action.INSTALL_INTERRUPTED"

    .line 309
    invoke-static {p2}, Lorg/fdroid/fdroid/privileged/IPrivilegedService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/fdroid/fdroid/privileged/IPrivilegedService;

    move-result-object p2

    .line 311
    new-instance v0, Lorg/fdroid/fdroid/installer/PrivilegedInstaller$2$1;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/installer/PrivilegedInstaller$2$1;-><init>(Lorg/fdroid/fdroid/installer/PrivilegedInstaller$2;)V

    .line 325
    :try_start_0
    invoke-interface {p2}, Lorg/fdroid/fdroid/privileged/IPrivilegedService;->hasPrivilegedPermissions()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p2, p0, Lorg/fdroid/fdroid/installer/PrivilegedInstaller$2;->this$0:Lorg/fdroid/fdroid/installer/PrivilegedInstaller;

    iget-object v0, p0, Lorg/fdroid/fdroid/installer/PrivilegedInstaller$2;->val$canonicalUri:Landroid/net/Uri;

    .line 327
    iget-object v1, p2, Lorg/fdroid/fdroid/installer/Installer;->context:Landroid/content/Context;

    sget v2, Lorg/fdroid/fdroid/R$string;->system_install_denied_permissions:I

    .line 328
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 327
    invoke-virtual {p2, v0, p1, v1}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastInstall(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/fdroid/fdroid/installer/PrivilegedInstaller$2;->val$localApkUri:Landroid/net/Uri;

    const-string v2, "org.fdroid.fdroid.privileged"

    const/4 v3, 0x2

    .line 332
    invoke-interface {p2, v1, v3, v2, v0}, Lorg/fdroid/fdroid/privileged/IPrivilegedService;->installPackage(Landroid/net/Uri;ILjava/lang/String;Lorg/fdroid/fdroid/privileged/IPrivilegedCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string v0, "PrivilegedInstaller"

    const-string v1, "RemoteException"

    .line 335
    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p2, p0, Lorg/fdroid/fdroid/installer/PrivilegedInstaller$2;->this$0:Lorg/fdroid/fdroid/installer/PrivilegedInstaller;

    iget-object v0, p0, Lorg/fdroid/fdroid/installer/PrivilegedInstaller$2;->val$canonicalUri:Landroid/net/Uri;

    const-string v1, "connecting to privileged service failed"

    .line 336
    invoke-virtual {p2, v0, p1, v1}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastInstall(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 0
    return-void
.end method
