.class public Lorg/fdroid/fdroid/installer/SessionInstallManager;
.super Landroid/content/BroadcastReceiver;
.source "SessionInstallManager.java"


# static fields
.field private static final EXTRA_BUNDLE:Ljava/lang/String; = "org.fdroid.fdroid.installer.SessionInstallManager.bundle"

.field private static final INSTALLER_ACTION_INSTALL:Ljava/lang/String; = "org.fdroid.fdroid.installer.SessionInstallManager.install"

.field private static final INSTALLER_ACTION_UNINSTALL:Ljava/lang/String; = "org.fdroid.fdroid.installer.SessionInstallManager.uninstall"

.field private static final TAG:Ljava/lang/String; = "SessionInstallManager"

.field private static isStockXiaomi:Ljava/lang/Boolean;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$nYUypgc3jYKrmMPerHchSuhvoQ0(Landroid/content/pm/PackageInstaller;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/fdroid/fdroid/installer/SessionInstallManager;->lambda$new$0(Landroid/content/pm/PackageInstaller;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 55
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/installer/SessionInstallManager;->context:Landroid/content/Context;

    .line 57
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "org.fdroid.fdroid.installer.SessionInstallManager.install"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-static {p1, p0, v0, v1}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 59
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "org.fdroid.fdroid.installer.SessionInstallManager.uninstall"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0, v0, v1}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object p1

    .line 64
    new-instance v0, Lorg/fdroid/fdroid/installer/SessionInstallManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lorg/fdroid/fdroid/installer/SessionInstallManager$$ExternalSyntheticLambda3;-><init>(Landroid/content/pm/PackageInstaller;)V

    invoke-static {v0}, Lorg/fdroid/fdroid/Utils;->runOffUiThread(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public static canBeUsed(Landroid/content/Context;)Z
    .locals 3

    .line 244
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->forceOldInstaller()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-ge v0, v2, :cond_1

    return v1

    .line 253
    :cond_1
    invoke-static {p0}, Lorg/fdroid/fdroid/installer/SessionInstallManager;->isStockXiaomi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 257
    :cond_2
    invoke-static {p0}, Lorg/fdroid/fdroid/installer/PrivilegedInstaller;->isDefault(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private getInstallIntentSender(ILorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Landroid/net/Uri;)Landroid/content/IntentSender;
    .locals 3

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.fdroid.fdroid.installer.SessionInstallManager.install"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/fdroid/fdroid/installer/SessionInstallManager;->context:Landroid/content/Context;

    .line 133
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.content.pm.extra.SESSION_ID"

    .line 134
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "org.fdroid.fdroid.installer.Installer.extra.APP"

    .line 136
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "org.fdroid.fdroid.installer.Installer.extra.APK"

    .line 137
    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "org.fdroid.fdroid.installer.SessionInstallManager.bundle"

    .line 138
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p2, "org.fdroid.fdroid.net.Downloader.extra.CANONICAL_URL"

    .line 139
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 141
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1f

    if-lt p2, p3, :cond_0

    const/high16 p2, 0xa000000

    goto :goto_0

    :cond_0
    const/high16 p2, 0x8000000

    :goto_0
    iget-object p3, p0, Lorg/fdroid/fdroid/installer/SessionInstallManager;->context:Landroid/content/Context;

    .line 146
    invoke-static {p3, p1, v0, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    return-object p1
.end method

.method private static getSessionParams(Lorg/fdroid/fdroid/data/App;J)Landroid/content/pm/PackageInstaller$SessionParams;
    .locals 2

    .line 103
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 105
    iget-object p0, p0, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageInstaller$SessionParams;->setAppPackageName(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    const/4 p0, 0x0

    .line 107
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallLocation(I)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x1f

    const/4 p2, 0x2

    if-lt p0, p1, :cond_0

    .line 109
    invoke-static {v0, p2}, Lorg/fdroid/fdroid/installer/SessionInstallManager$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageInstaller$SessionParams;I)V

    :cond_0
    const/16 p1, 0x21

    if-lt p0, p1, :cond_1

    .line 112
    invoke-static {v0, p2}, Lorg/fdroid/fdroid/installer/SessionInstallManager$$ExternalSyntheticApiModelOutline1;->m(Landroid/content/pm/PackageInstaller$SessionParams;I)V

    :cond_1
    const/16 p1, 0x22

    if-lt p0, p1, :cond_2

    .line 120
    invoke-static {v0, v1}, Lorg/fdroid/fdroid/installer/SessionInstallManager$$ExternalSyntheticApiModelOutline2;->m(Landroid/content/pm/PackageInstaller$SessionParams;Z)V

    :cond_2
    return-object v0
.end method

.method private getUninstallIntentSender(Ljava/lang/String;)Landroid/content/IntentSender;
    .locals 3

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.fdroid.fdroid.installer.SessionInstallManager.uninstall"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/fdroid/fdroid/installer/SessionInstallManager;->context:Landroid/content/Context;

    .line 152
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.content.pm.extra.PACKAGE_NAME"

    .line 153
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 154
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_0

    const/high16 v1, 0xa000000

    goto :goto_0

    :cond_0
    const/high16 v1, 0x8000000

    :goto_0
    iget-object v2, p0, Lorg/fdroid/fdroid/installer/SessionInstallManager;->context:Landroid/content/Context;

    .line 160
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {v2, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 161
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    return-object p1
.end method

.method private static isStockXiaomi(Landroid/content/Context;)Z
    .locals 2

    sget-object v0, Lorg/fdroid/fdroid/installer/SessionInstallManager;->isStockXiaomi:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    .line 262
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "Xiaomi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Redmi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p0, Lorg/fdroid/fdroid/installer/SessionInstallManager;->isStockXiaomi:Ljava/lang/Boolean;

    goto :goto_2

    :cond_1
    :goto_0
    const-string v0, "com.miui.securitycenter"

    .line 267
    invoke-static {p0, v0}, Lorg/fdroid/fdroid/Utils;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object p0, Lorg/fdroid/fdroid/installer/SessionInstallManager;->isStockXiaomi:Ljava/lang/Boolean;

    goto :goto_2

    :cond_2
    const-string v0, "com.miui.packageinstaller"

    .line 270
    invoke-static {p0, v0}, Lorg/fdroid/fdroid/Utils;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lorg/fdroid/fdroid/installer/SessionInstallManager;->isStockXiaomi:Ljava/lang/Boolean;

    :cond_4
    :goto_2
    sget-object p0, Lorg/fdroid/fdroid/installer/SessionInstallManager;->isStockXiaomi:Ljava/lang/Boolean;

    .line 276
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isTargetSdkSupported(I)Z
    .locals 6

    .line 0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1f

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/16 v3, 0x1d

    const/4 v4, 0x1

    if-ne v0, v2, :cond_1

    if-lt p0, v3, :cond_1

    return v4

    :cond_1
    const/16 v5, 0x20

    if-ne v0, v5, :cond_2

    if-lt p0, v3, :cond_2

    return v4

    :cond_2
    const/16 v3, 0x21

    if-ne v0, v3, :cond_3

    const/16 v3, 0x1e

    if-lt p0, v3, :cond_3

    return v4

    :cond_3
    const/16 v3, 0x22

    if-lt v0, v3, :cond_4

    if-lt p0, v2, :cond_4

    move v1, v4

    :cond_4
    return v1
.end method

.method private static synthetic lambda$new$0(Landroid/content/pm/PackageInstaller;)V
    .locals 4

    .line 65
    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller;->getMySessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Abandon session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SessionInstallManager"

    invoke-static {v3, v2}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :try_start_0
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageInstaller;->abandonSession(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Error abandoning session: "

    .line 70
    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onInstallReceived(Landroid/content/Intent;)V
    .locals 12

    const-string v0, "android.content.pm.extra.SESSION_ID"

    const/4 v1, -0x1

    .line 176
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "android.intent.extra.INTENT"

    .line 177
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    const-string v3, "org.fdroid.fdroid.installer.SessionInstallManager.bundle"

    .line 179
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "org.fdroid.fdroid.installer.Installer.extra.APP"

    .line 180
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lorg/fdroid/fdroid/data/App;

    const-string v4, "org.fdroid.fdroid.installer.Installer.extra.APK"

    .line 181
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lorg/fdroid/fdroid/data/Apk;

    const-string v3, "org.fdroid.fdroid.net.Downloader.extra.CANONICAL_URL"

    .line 182
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/net/Uri;

    const-string v3, "android.content.pm.extra.STATUS"

    const/high16 v4, -0x80000000

    .line 184
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "android.content.pm.extra.STATUS_MESSAGE"

    .line 185
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 187
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received install broadcast for "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "SessionInstallManager"

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_0

    const-string v7, "org.fdroid.fdroid.installer.Installer.action.INSTALL_COMPLETE"

    iget-object v5, p0, Lorg/fdroid/fdroid/installer/SessionInstallManager;->context:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 191
    invoke-static/range {v5 .. v11}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastInstall(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Landroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-ne v3, v1, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt p1, v1, :cond_1

    const/high16 p1, 0xc000000

    goto :goto_0

    :cond_1
    const/high16 p1, 0x8000000

    :goto_0
    iget-object v1, p0, Lorg/fdroid/fdroid/installer/SessionInstallManager;->context:Landroid/content/Context;

    .line 196
    invoke-static {v1, v0, v2, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    const-string v7, "org.fdroid.fdroid.installer.Installer.action.INSTALL_USER_INTERACTION"

    iget-object v5, p0, Lorg/fdroid/fdroid/installer/SessionInstallManager;->context:Landroid/content/Context;

    const/4 v11, 0x0

    .line 198
    invoke-static/range {v5 .. v11}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastInstall(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Landroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v7, "org.fdroid.fdroid.installer.Installer.action.INSTALL_INTERRUPTED"

    iget-object v5, p0, Lorg/fdroid/fdroid/installer/SessionInstallManager;->context:Landroid/content/Context;

    const/4 v10, 0x0

    .line 201
    invoke-static/range {v5 .. v11}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastInstall(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Landroid/app/PendingIntent;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private onUninstallReceived(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "android.content.pm.extra.PACKAGE_NAME"

    .line 206
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.INTENT"

    .line 207
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    const-string v2, "android.content.pm.extra.STATUS"

    const/high16 v3, -0x80000000

    .line 208
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "android.content.pm.extra.STATUS_MESSAGE"

    .line 209
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received uninstall broadcast for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SessionInstallManager"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string p1, "org.fdroid.fdroid.installer.Installer.action.UNINSTALL_COMPLETE"

    .line 215
    invoke-direct {p0, v0, p1, v3, v3}, Lorg/fdroid/fdroid/installer/SessionInstallManager;->sendBroadcastUninstall(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt p1, v2, :cond_1

    const/high16 p1, 0xc000000

    goto :goto_0

    :cond_1
    const/high16 p1, 0x8000000

    :goto_0
    iget-object v2, p0, Lorg/fdroid/fdroid/installer/SessionInstallManager;->context:Landroid/content/Context;

    .line 221
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v2, v4, v1, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string v1, "org.fdroid.fdroid.installer.Installer.action.UNINSTALL_USER_INTERACTION"

    .line 223
    invoke-direct {p0, v0, v1, p1, v3}, Lorg/fdroid/fdroid/installer/SessionInstallManager;->sendBroadcastUninstall(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, "org.fdroid.fdroid.installer.Installer.action.UNINSTALL_INTERRUPTED"

    .line 226
    invoke-direct {p0, v0, v1, v3, p1}, Lorg/fdroid/fdroid/installer/SessionInstallManager;->sendBroadcastUninstall(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private sendBroadcastUninstall(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 6

    .line 232
    new-instance v1, Lorg/fdroid/fdroid/data/App;

    invoke-direct {v1}, Lorg/fdroid/fdroid/data/App;-><init>()V

    iput-object p1, v1, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    .line 234
    new-instance v2, Lorg/fdroid/fdroid/data/Apk;

    invoke-direct {v2}, Lorg/fdroid/fdroid/data/Apk;-><init>()V

    iput-object p1, v2, Lorg/fdroid/fdroid/data/Apk;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lorg/fdroid/fdroid/installer/SessionInstallManager;->context:Landroid/content/Context;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 236
    invoke-static/range {v0 .. v5}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastUninstall(Landroid/content/Context;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public install(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 9

    iget-object v0, p0, Lorg/fdroid/fdroid/installer/SessionInstallManager;->context:Landroid/content/Context;

    .line 78
    invoke-static {v0, p3}, Landroidx/documentfile/provider/DocumentFile;->fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/documentfile/provider/DocumentFile;

    .line 79
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->length()J

    move-result-wide v5

    .line 80
    invoke-static {p1, v5, v6}, Lorg/fdroid/fdroid/installer/SessionInstallManager;->getSessionParams(Lorg/fdroid/fdroid/data/App;J)Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/installer/SessionInstallManager;->context:Landroid/content/Context;

    .line 81
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v1

    .line 83
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v0

    iget-object v2, p0, Lorg/fdroid/fdroid/installer/SessionInstallManager;->context:Landroid/content/Context;

    .line 84
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 85
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :try_start_1
    invoke-virtual {v2, p3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 87
    :try_start_2
    iget-object v2, p1, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    const-wide/16 v3, 0x0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    :try_start_3
    invoke-static {p3, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 89
    invoke-virtual {v7, v1}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_0

    .line 90
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 91
    :try_start_5
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catchall_1
    move-exception p3

    goto :goto_5

    .line 92
    :cond_1
    :goto_1
    invoke-direct {p0, v0, p1, p2, p4}, Lorg/fdroid/fdroid/installer/SessionInstallManager;->getInstallIntentSender(ILorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Landroid/net/Uri;)Landroid/content/IntentSender;

    move-result-object p3

    invoke-virtual {v7, p3}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 93
    :try_start_6
    invoke-virtual {v7}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_8

    :catch_0
    move-exception p3

    goto :goto_7

    :catchall_2
    move-exception v0

    if-eqz v1, :cond_2

    .line 87
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_3
    if-eqz p3, :cond_3

    .line 86
    :try_start_9
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p3

    :try_start_a
    invoke-virtual {v0, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_5
    if-eqz v7, :cond_4

    .line 85
    :try_start_b
    invoke-virtual {v7}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    :try_start_c
    invoke-virtual {p3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_6
    throw p3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :goto_7
    const-string v0, "SessionInstallManager"

    const-string v1, "I/O Error during install session: "

    .line 95
    invoke-static {v0, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lorg/fdroid/fdroid/installer/SessionInstallManager;->context:Landroid/content/Context;

    const-string v4, "org.fdroid.fdroid.installer.Installer.action.INSTALL_INTERRUPTED"

    const/4 v7, 0x0

    .line 97
    invoke-virtual {p3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    move-object v3, p4

    move-object v5, p1

    move-object v6, p2

    .line 96
    invoke-static/range {v2 .. v8}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastInstall(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Landroid/app/PendingIntent;Ljava/lang/String;)V

    :goto_8
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 166
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "org.fdroid.fdroid.installer.SessionInstallManager.install"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 167
    invoke-direct {p0, p2}, Lorg/fdroid/fdroid/installer/SessionInstallManager;->onInstallReceived(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string p1, "org.fdroid.fdroid.installer.SessionInstallManager.uninstall"

    .line 168
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 169
    invoke-direct {p0, p2}, Lorg/fdroid/fdroid/installer/SessionInstallManager;->onUninstallReceived(Landroid/content/Intent;)V

    :goto_0
    return-void

    .line 171
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported broadcast action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public uninstall(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/installer/SessionInstallManager;->context:Landroid/content/Context;

    .line 127
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    .line 128
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/installer/SessionInstallManager;->getUninstallIntentSender(Ljava/lang/String;)Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageInstaller;->uninstall(Ljava/lang/String;Landroid/content/IntentSender;)V

    return-void
.end method
