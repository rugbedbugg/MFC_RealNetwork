.class Lorg/fdroid/fdroid/installer/SessionInstaller;
.super Lorg/fdroid/fdroid/installer/Installer;
.source "SessionInstaller.java"


# instance fields
.field private final sessionInstallManager:Lorg/fdroid/fdroid/installer/SessionInstallManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lorg/fdroid/fdroid/installer/Installer;-><init>(Landroid/content/Context;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V

    .line 15
    sget-object p1, Lorg/fdroid/fdroid/FDroidApp;->sessionInstallManager:Lorg/fdroid/fdroid/installer/SessionInstallManager;

    iput-object p1, p0, Lorg/fdroid/fdroid/installer/SessionInstaller;->sessionInstallManager:Lorg/fdroid/fdroid/installer/SessionInstallManager;

    return-void
.end method


# virtual methods
.method public getUninstallScreen()Landroid/content/Intent;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected installPackageInternal(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/installer/SessionInstaller;->sessionInstallManager:Lorg/fdroid/fdroid/installer/SessionInstallManager;

    iget-object v1, p0, Lorg/fdroid/fdroid/installer/Installer;->app:Lorg/fdroid/fdroid/data/App;

    iget-object v2, p0, Lorg/fdroid/fdroid/installer/Installer;->apk:Lorg/fdroid/fdroid/data/Apk;

    .line 23
    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/fdroid/fdroid/installer/SessionInstallManager;->install(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Landroid/net/Uri;Landroid/net/Uri;)V

    return-void
.end method

.method protected isUnattended()Z
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/installer/Installer;->context:Landroid/content/Context;

    .line 40
    invoke-static {v0}, Lorg/fdroid/fdroid/installer/SessionInstallManager;->canBeUsed(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected uninstallPackage()V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/installer/SessionInstaller;->sessionInstallManager:Lorg/fdroid/fdroid/installer/SessionInstallManager;

    iget-object v1, p0, Lorg/fdroid/fdroid/installer/Installer;->app:Lorg/fdroid/fdroid/data/App;

    .line 28
    iget-object v1, v1, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/fdroid/fdroid/installer/SessionInstallManager;->uninstall(Ljava/lang/String;)V

    return-void
.end method
