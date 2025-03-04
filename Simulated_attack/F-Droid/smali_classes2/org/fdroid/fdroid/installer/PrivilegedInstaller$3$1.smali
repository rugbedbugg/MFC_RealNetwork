.class Lorg/fdroid/fdroid/installer/PrivilegedInstaller$3$1;
.super Lorg/fdroid/fdroid/privileged/IPrivilegedCallback$Stub;
.source "PrivilegedInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/installer/PrivilegedInstaller$3;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/fdroid/fdroid/installer/PrivilegedInstaller$3;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/installer/PrivilegedInstaller$3;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/installer/PrivilegedInstaller$3$1;->this$1:Lorg/fdroid/fdroid/installer/PrivilegedInstaller$3;

    .line 357
    invoke-direct {p0}, Lorg/fdroid/fdroid/privileged/IPrivilegedCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResult(Ljava/lang/String;I)V
    .locals 2

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lorg/fdroid/fdroid/installer/PrivilegedInstaller$3$1;->this$1:Lorg/fdroid/fdroid/installer/PrivilegedInstaller$3;

    .line 361
    iget-object p1, p1, Lorg/fdroid/fdroid/installer/PrivilegedInstaller$3;->this$0:Lorg/fdroid/fdroid/installer/PrivilegedInstaller;

    const-string p2, "org.fdroid.fdroid.installer.Installer.action.UNINSTALL_COMPLETE"

    invoke-virtual {p1, p2}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastUninstall(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/fdroid/fdroid/installer/PrivilegedInstaller$3$1;->this$1:Lorg/fdroid/fdroid/installer/PrivilegedInstaller$3;

    .line 363
    iget-object p1, p1, Lorg/fdroid/fdroid/installer/PrivilegedInstaller$3;->this$0:Lorg/fdroid/fdroid/installer/PrivilegedInstaller;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/fdroid/fdroid/installer/PrivilegedInstaller;->-$$Nest$sfgetUNINSTALL_RETURN_CODES()Ljava/util/HashMap;

    move-result-object v1

    .line 365
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "org.fdroid.fdroid.installer.Installer.action.UNINSTALL_INTERRUPTED"

    .line 363
    invoke-virtual {p1, v0, p2}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastUninstall(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
