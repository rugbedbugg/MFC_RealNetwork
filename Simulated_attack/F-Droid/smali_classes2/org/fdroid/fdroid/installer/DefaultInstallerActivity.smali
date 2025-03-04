.class public Lorg/fdroid/fdroid/installer/DefaultInstallerActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "DefaultInstallerActivity.java"


# static fields
.field static final ACTION_INSTALL_PACKAGE:Ljava/lang/String; = "org.fdroid.fdroid.installer.DefaultInstaller.action.INSTALL_PACKAGE"

.field static final ACTION_UNINSTALL_PACKAGE:Ljava/lang/String; = "org.fdroid.fdroid.installer.DefaultInstaller.action.UNINSTALL_PACKAGE"

.field private static final REQUEST_CODE_INSTALL:I = 0x0

.field private static final REQUEST_CODE_UNINSTALL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DefaultInstallerActivit"


# instance fields
.field private canonicalUri:Landroid/net/Uri;

.field private installer:Lorg/fdroid/fdroid/installer/DefaultInstaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private installPackage(Landroid/net/Uri;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    if-eqz p1, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    const-string v2, "file"

    .line 90
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "PackageInstaller < Android N only supports file scheme!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-lt v0, v1, :cond_3

    const-string v2, "content"

    .line 94
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 95
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "PackageInstaller >= Android N only supports content scheme!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_3
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.extra.NOT_UNKNOWN_SOURCE"

    const-string v4, "android.intent.extra.RETURN_RESULT"

    const-string v5, "android.intent.action.INSTALL_PACKAGE"

    const/4 v6, 0x1

    if-ge v0, v1, :cond_4

    .line 105
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 107
    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2

    .line 110
    :cond_4
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 113
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 114
    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_2
    const/4 p1, 0x0

    .line 119
    :try_start_0
    invoke-virtual {p0, v2, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const-string v0, "DefaultInstallerActivit"

    const-string v1, "ActivityNotFoundException"

    .line 121
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lorg/fdroid/fdroid/installer/DefaultInstallerActivity;->installer:Lorg/fdroid/fdroid/installer/DefaultInstaller;

    iget-object v0, p0, Lorg/fdroid/fdroid/installer/DefaultInstallerActivity;->canonicalUri:Landroid/net/Uri;

    const-string v1, "org.fdroid.fdroid.installer.Installer.action.INSTALL_INTERRUPTED"

    const-string v2, "This Android rom does not support ACTION_INSTALL_PACKAGE!"

    .line 122
    invoke-virtual {p1, v0, v1, v2}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastInstall(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_3
    return-void

    .line 86
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Set the data uri to point to an apk location!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private uninstallPackage(Ljava/lang/String;)V
    .locals 4

    const-string v0, "org.fdroid.fdroid.installer.Installer.action.UNINSTALL_INTERRUPTED"

    const-string v1, "DefaultInstallerActivit"

    .line 131
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v2, "package"

    const/4 v3, 0x0

    .line 140
    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 141
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 142
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "android.intent.action.UNINSTALL_PACKAGE"

    .line 144
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.RETURN_RESULT"

    const/4 v3, 0x1

    .line 145
    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 148
    :try_start_1
    invoke-virtual {p0, v2, v3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "ActivityNotFoundException"

    .line 150
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lorg/fdroid/fdroid/installer/DefaultInstallerActivity;->installer:Lorg/fdroid/fdroid/installer/DefaultInstaller;

    const-string v1, "This Android rom does not support ACTION_UNINSTALL_PACKAGE!"

    .line 151
    invoke-virtual {p1, v0, v1}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastUninstall(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :catch_1
    move-exception p1

    const-string v2, "NameNotFoundException"

    .line 133
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lorg/fdroid/fdroid/installer/DefaultInstallerActivity;->installer:Lorg/fdroid/fdroid/installer/DefaultInstaller;

    const-string v1, "Package that is scheduled for uninstall is not installed!"

    .line 134
    invoke-virtual {p1, v0, v1}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastUninstall(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 159
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    if-eq p2, p3, :cond_1

    const-string p1, "org.fdroid.fdroid.installer.Installer.action.UNINSTALL_INTERRUPTED"

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/fdroid/fdroid/installer/DefaultInstallerActivity;->installer:Lorg/fdroid/fdroid/installer/DefaultInstaller;

    sget p3, Lorg/fdroid/fdroid/R$string;->uninstall_error_unknown:I

    .line 193
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 192
    invoke-virtual {p2, p1, p3}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastUninstall(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/fdroid/fdroid/installer/DefaultInstallerActivity;->installer:Lorg/fdroid/fdroid/installer/DefaultInstaller;

    .line 187
    invoke-virtual {p2, p1}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastUninstall(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/fdroid/fdroid/installer/DefaultInstallerActivity;->installer:Lorg/fdroid/fdroid/installer/DefaultInstaller;

    const-string p2, "org.fdroid.fdroid.installer.Installer.action.UNINSTALL_COMPLETE"

    .line 184
    invoke-virtual {p1, p2}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastUninstall(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid request code!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-eq p2, p3, :cond_5

    const-string p1, "org.fdroid.fdroid.installer.Installer.action.INSTALL_INTERRUPTED"

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/fdroid/fdroid/installer/DefaultInstallerActivity;->installer:Lorg/fdroid/fdroid/installer/DefaultInstaller;

    iget-object p3, p0, Lorg/fdroid/fdroid/installer/DefaultInstallerActivity;->canonicalUri:Landroid/net/Uri;

    sget v0, Lorg/fdroid/fdroid/R$string;->install_error_unknown:I

    .line 176
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-virtual {p2, p3, p1, v0}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastInstall(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lorg/fdroid/fdroid/installer/DefaultInstallerActivity;->installer:Lorg/fdroid/fdroid/installer/DefaultInstaller;

    iget-object p3, p0, Lorg/fdroid/fdroid/installer/DefaultInstallerActivity;->canonicalUri:Landroid/net/Uri;

    .line 168
    invoke-virtual {p2, p3, p1}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastInstall(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lorg/fdroid/fdroid/installer/DefaultInstallerActivity;->installer:Lorg/fdroid/fdroid/installer/DefaultInstaller;

    iget-object p2, p0, Lorg/fdroid/fdroid/installer/DefaultInstallerActivity;->canonicalUri:Landroid/net/Uri;

    const-string p3, "org.fdroid.fdroid.installer.Installer.action.INSTALL_COMPLETE"

    .line 164
    invoke-virtual {p1, p2, p3}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastInstall(Landroid/net/Uri;Ljava/lang/String;)V

    .line 203
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 65
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.fdroid.fdroid.installer.Installer.extra.APP"

    .line 69
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lorg/fdroid/fdroid/data/App;

    const-string v2, "org.fdroid.fdroid.installer.Installer.extra.APK"

    .line 70
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lorg/fdroid/fdroid/data/Apk;

    .line 71
    new-instance v3, Lorg/fdroid/fdroid/installer/DefaultInstaller;

    invoke-direct {v3, p0, v1, v2}, Lorg/fdroid/fdroid/installer/DefaultInstaller;-><init>(Landroid/content/Context;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V

    iput-object v3, p0, Lorg/fdroid/fdroid/installer/DefaultInstallerActivity;->installer:Lorg/fdroid/fdroid/installer/DefaultInstaller;

    const-string v1, "org.fdroid.fdroid.installer.DefaultInstaller.action.INSTALL_PACKAGE"

    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "org.fdroid.fdroid.net.Downloader.extra.CANONICAL_URL"

    .line 74
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/installer/DefaultInstallerActivity;->canonicalUri:Landroid/net/Uri;

    .line 75
    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/installer/DefaultInstallerActivity;->installPackage(Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    const-string p1, "org.fdroid.fdroid.installer.DefaultInstaller.action.UNINSTALL_PACKAGE"

    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 77
    iget-object p1, v2, Lorg/fdroid/fdroid/data/Apk;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/installer/DefaultInstallerActivity;->uninstallPackage(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 79
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Intent action not specified!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
