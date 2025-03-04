.class Lorg/fdroid/fdroid/installer/PrivilegedInstaller$2$1;
.super Lorg/fdroid/fdroid/privileged/IPrivilegedCallback$Stub;
.source "PrivilegedInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/installer/PrivilegedInstaller$2;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/fdroid/fdroid/installer/PrivilegedInstaller$2;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/installer/PrivilegedInstaller$2;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/installer/PrivilegedInstaller$2$1;->this$1:Lorg/fdroid/fdroid/installer/PrivilegedInstaller$2;

    .line 311
    invoke-direct {p0}, Lorg/fdroid/fdroid/privileged/IPrivilegedCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResult(Ljava/lang/String;I)V
    .locals 3

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lorg/fdroid/fdroid/installer/PrivilegedInstaller$2$1;->this$1:Lorg/fdroid/fdroid/installer/PrivilegedInstaller$2;

    .line 315
    iget-object p2, p1, Lorg/fdroid/fdroid/installer/PrivilegedInstaller$2;->this$0:Lorg/fdroid/fdroid/installer/PrivilegedInstaller;

    iget-object p1, p1, Lorg/fdroid/fdroid/installer/PrivilegedInstaller$2;->val$canonicalUri:Landroid/net/Uri;

    const-string v0, "org.fdroid.fdroid.installer.Installer.action.INSTALL_COMPLETE"

    invoke-virtual {p2, p1, v0}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastInstall(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/fdroid/fdroid/installer/PrivilegedInstaller$2$1;->this$1:Lorg/fdroid/fdroid/installer/PrivilegedInstaller$2;

    .line 317
    iget-object v0, p1, Lorg/fdroid/fdroid/installer/PrivilegedInstaller$2;->this$0:Lorg/fdroid/fdroid/installer/PrivilegedInstaller;

    iget-object p1, p1, Lorg/fdroid/fdroid/installer/PrivilegedInstaller$2;->val$canonicalUri:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/fdroid/fdroid/installer/PrivilegedInstaller;->-$$Nest$sfgetINSTALL_RETURN_CODES()Ljava/util/HashMap;

    move-result-object v2

    .line 319
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "org.fdroid.fdroid.installer.Installer.action.INSTALL_INTERRUPTED"

    .line 317
    invoke-virtual {v0, p1, v1, p2}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastInstall(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
