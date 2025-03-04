.class public Lorg/fdroid/fdroid/installer/FileInstallerActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "FileInstallerActivity.java"


# static fields
.field static final ACTION_INSTALL_FILE:Ljava/lang/String; = "org.fdroid.fdroid.installer.FileInstaller.action.INSTALL_PACKAGE"

.field static final ACTION_UNINSTALL_FILE:Ljava/lang/String; = "org.fdroid.fdroid.installer.FileInstaller.action.UNINSTALL_PACKAGE"

.field private static final MY_PERMISSIONS_REQUEST_STORAGE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FileInstallerActivity"


# instance fields
.field private act:I

.field private activity:Lorg/fdroid/fdroid/installer/FileInstallerActivity;

.field private apk:Lorg/fdroid/fdroid/data/Apk;

.field private app:Lorg/fdroid/fdroid/data/App;

.field private canonicalUri:Landroid/net/Uri;

.field private installer:Lorg/fdroid/fdroid/installer/FileInstaller;

.field private localApkUri:Landroid/net/Uri;


# direct methods
.method public static synthetic $r8$lambda$S29-B-3XwrJjXXBs6cTl63Hsbvs(Lorg/fdroid/fdroid/installer/FileInstallerActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->lambda$showDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yLFaplipW1HCWHd4aKGkCO_gOz8(Lorg/fdroid/fdroid/installer/FileInstallerActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->lambda$showDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->act:I

    return-void
.end method

.method private hasStoragePermission()Z
    .locals 1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 84
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private installPackage(Landroid/net/Uri;Landroid/net/Uri;Lorg/fdroid/fdroid/data/Apk;)V
    .locals 6

    const-string v0, "org.fdroid.fdroid.installer.Installer.action.INSTALL_INTERRUPTED"

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Installing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FileInstallerActivity"

    invoke-static {v2, v1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->activity:Lorg/fdroid/fdroid/installer/FileInstallerActivity;

    .line 146
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/fdroid/fdroid/data/Apk;->getInstalledMediaFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 147
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 149
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v1}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to copy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->installer:Lorg/fdroid/fdroid/installer/FileInstaller;

    .line 152
    invoke-virtual {v3, p2, v0}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastInstall(Landroid/net/Uri;Ljava/lang/String;)V

    :goto_0
    iget-object v3, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->activity:Lorg/fdroid/fdroid/installer/FileInstallerActivity;

    .line 154
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p3, v3}, Lorg/fdroid/fdroid/data/Apk;->isMediaInstalled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Copying worked: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-direct {p0, p2, p3, v1}, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->postInstall(Landroid/net/Uri;Lorg/fdroid/fdroid/data/Apk;Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_1

    sget p1, Lorg/fdroid/fdroid/R$string;->app_installed_media:I

    .line 157
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    new-array v0, p3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 158
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->installer:Lorg/fdroid/fdroid/installer/FileInstaller;

    const-string p3, "org.fdroid.fdroid.installer.Installer.action.INSTALL_COMPLETE"

    .line 159
    invoke-virtual {p1, p2, p3}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastInstall(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->installer:Lorg/fdroid/fdroid/installer/FileInstaller;

    .line 162
    invoke-virtual {p1, p2, v0}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastInstall(Landroid/net/Uri;Ljava/lang/String;)V

    .line 164
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$showDialog$0(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->activity:Lorg/fdroid/fdroid/installer/FileInstallerActivity;

    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    .line 107
    invoke-static {p1, p2, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$showDialog$1(Landroid/content/DialogInterface;I)V
    .locals 1

    iget p1, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->act:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->installer:Lorg/fdroid/fdroid/installer/FileInstaller;

    iget-object p2, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->canonicalUri:Landroid/net/Uri;

    const-string v0, "org.fdroid.fdroid.installer.Installer.action.INSTALL_INTERRUPTED"

    .line 112
    invoke-virtual {p1, p2, v0}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastInstall(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->installer:Lorg/fdroid/fdroid/installer/FileInstaller;

    const-string p2, "org.fdroid.fdroid.installer.Installer.action.UNINSTALL_INTERRUPTED"

    .line 114
    invoke-virtual {p1, p2}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastUninstall(Ljava/lang/String;)V

    .line 116
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private postInstall(Landroid/net/Uri;Lorg/fdroid/fdroid/data/Apk;Ljava/io/File;)Z
    .locals 2

    .line 174
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".obf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".obf.zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->app:Lorg/fdroid/fdroid/data/App;

    .line 175
    invoke-static {p0, p1, v0, p2, p3}, Lorg/fdroid/fdroid/installer/ObfInstallerService;->install(Landroid/content/Context;Landroid/net/Uri;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Ljava/io/File;)V

    const/4 p1, 0x1

    return p1
.end method

.method private requestPermission()V
    .locals 2

    .line 90
    invoke-direct {p0}, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->hasStoragePermission()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 91
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-direct {p0}, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->showDialog()V

    goto :goto_0

    :cond_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 95
    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showDialog()V
    .locals 3

    .line 105
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lorg/fdroid/fdroid/R$style;->Theme_App:I

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v1, Lorg/fdroid/fdroid/R$string;->app_permission_storage:I

    .line 106
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$string;->ok:I

    new-instance v2, Lorg/fdroid/fdroid/installer/FileInstallerActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/fdroid/fdroid/installer/FileInstallerActivity$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/installer/FileInstallerActivity;)V

    .line 107
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$string;->cancel:I

    new-instance v2, Lorg/fdroid/fdroid/installer/FileInstallerActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/fdroid/fdroid/installer/FileInstallerActivity$$ExternalSyntheticLambda1;-><init>(Lorg/fdroid/fdroid/installer/FileInstallerActivity;)V

    .line 110
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private uninstallPackage(Lorg/fdroid/fdroid/data/Apk;)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->activity:Lorg/fdroid/fdroid/installer/FileInstallerActivity;

    .line 182
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/fdroid/fdroid/data/Apk;->isMediaInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->activity:Lorg/fdroid/fdroid/installer/FileInstallerActivity;

    .line 183
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/fdroid/fdroid/data/Apk;->getInstalledMediaFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    .line 184
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->installer:Lorg/fdroid/fdroid/installer/FileInstaller;

    const-string v0, "org.fdroid.fdroid.installer.Installer.action.UNINSTALL_INTERRUPTED"

    .line 185
    invoke-virtual {p1, v0}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastUninstall(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->installer:Lorg/fdroid/fdroid/installer/FileInstaller;

    const-string v0, "org.fdroid.fdroid.installer.Installer.action.UNINSTALL_COMPLETE"

    .line 189
    invoke-virtual {p1, v0}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastUninstall(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 54
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->activity:Lorg/fdroid/fdroid/installer/FileInstallerActivity;

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->localApkUri:Landroid/net/Uri;

    const-string v1, "org.fdroid.fdroid.installer.Installer.extra.APP"

    .line 59
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lorg/fdroid/fdroid/data/App;

    iput-object v1, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->app:Lorg/fdroid/fdroid/data/App;

    const-string v1, "org.fdroid.fdroid.installer.Installer.extra.APK"

    .line 60
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lorg/fdroid/fdroid/data/Apk;

    iput-object v1, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->apk:Lorg/fdroid/fdroid/data/Apk;

    .line 61
    new-instance v2, Lorg/fdroid/fdroid/installer/FileInstaller;

    iget-object v3, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->app:Lorg/fdroid/fdroid/data/App;

    invoke-direct {v2, p0, v3, v1}, Lorg/fdroid/fdroid/installer/FileInstaller;-><init>(Landroid/content/Context;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V

    iput-object v2, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->installer:Lorg/fdroid/fdroid/installer/FileInstaller;

    const-string v1, "org.fdroid.fdroid.installer.FileInstaller.action.INSTALL_PACKAGE"

    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "org.fdroid.fdroid.net.Downloader.extra.CANONICAL_URL"

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->canonicalUri:Landroid/net/Uri;

    .line 64
    invoke-direct {p0}, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->hasStoragePermission()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->localApkUri:Landroid/net/Uri;

    iget-object v0, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->canonicalUri:Landroid/net/Uri;

    iget-object v1, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->apk:Lorg/fdroid/fdroid/data/Apk;

    .line 65
    invoke-direct {p0, p1, v0, v1}, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->installPackage(Landroid/net/Uri;Landroid/net/Uri;Lorg/fdroid/fdroid/data/Apk;)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-direct {p0}, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->requestPermission()V

    const/4 p1, 0x1

    iput p1, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->act:I

    goto :goto_0

    :cond_1
    const-string p1, "org.fdroid.fdroid.installer.FileInstaller.action.UNINSTALL_PACKAGE"

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->canonicalUri:Landroid/net/Uri;

    .line 72
    invoke-direct {p0}, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->hasStoragePermission()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->apk:Lorg/fdroid/fdroid/data/Apk;

    .line 73
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->uninstallPackage(Lorg/fdroid/fdroid/data/Apk;)V

    goto :goto_0

    .line 75
    :cond_2
    invoke-direct {p0}, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->requestPermission()V

    const/4 p1, 0x2

    iput p1, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->act:I

    :goto_0
    return-void

    .line 79
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Intent action not specified!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 124
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    .line 126
    array-length p1, p3

    const/4 v0, 0x2

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_1

    iget p1, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->act:I

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->localApkUri:Landroid/net/Uri;

    iget-object p2, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->canonicalUri:Landroid/net/Uri;

    iget-object p3, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->apk:Lorg/fdroid/fdroid/data/Apk;

    .line 129
    invoke-direct {p0, p1, p2, p3}, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->installPackage(Landroid/net/Uri;Landroid/net/Uri;Lorg/fdroid/fdroid/data/Apk;)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->apk:Lorg/fdroid/fdroid/data/Apk;

    .line 131
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->uninstallPackage(Lorg/fdroid/fdroid/data/Apk;)V

    goto :goto_0

    :cond_1
    iget p1, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->act:I

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->installer:Lorg/fdroid/fdroid/installer/FileInstaller;

    iget-object p2, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->canonicalUri:Landroid/net/Uri;

    const-string p3, "org.fdroid.fdroid.installer.Installer.action.INSTALL_INTERRUPTED"

    .line 135
    invoke-virtual {p1, p2, p3}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastInstall(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lorg/fdroid/fdroid/installer/FileInstallerActivity;->installer:Lorg/fdroid/fdroid/installer/FileInstaller;

    const-string p2, "org.fdroid.fdroid.installer.Installer.action.UNINSTALL_INTERRUPTED"

    .line 137
    invoke-virtual {p1, p2}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastUninstall(Ljava/lang/String;)V

    .line 140
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_4
    return-void
.end method
