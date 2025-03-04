.class public abstract Lorg/fdroid/fdroid/installer/Installer;
.super Ljava/lang/Object;
.source "Installer.java"


# static fields
.field public static final ACTION_INSTALL_COMPLETE:Ljava/lang/String; = "org.fdroid.fdroid.installer.Installer.action.INSTALL_COMPLETE"

.field public static final ACTION_INSTALL_INTERRUPTED:Ljava/lang/String; = "org.fdroid.fdroid.installer.Installer.action.INSTALL_INTERRUPTED"

.field public static final ACTION_INSTALL_STARTED:Ljava/lang/String; = "org.fdroid.fdroid.installer.Installer.action.INSTALL_STARTED"

.field public static final ACTION_INSTALL_USER_INTERACTION:Ljava/lang/String; = "org.fdroid.fdroid.installer.Installer.action.INSTALL_USER_INTERACTION"

.field public static final ACTION_UNINSTALL_COMPLETE:Ljava/lang/String; = "org.fdroid.fdroid.installer.Installer.action.UNINSTALL_COMPLETE"

.field public static final ACTION_UNINSTALL_INTERRUPTED:Ljava/lang/String; = "org.fdroid.fdroid.installer.Installer.action.UNINSTALL_INTERRUPTED"

.field public static final ACTION_UNINSTALL_STARTED:Ljava/lang/String; = "org.fdroid.fdroid.installer.Installer.action.UNINSTALL_STARTED"

.field public static final ACTION_UNINSTALL_USER_INTERACTION:Ljava/lang/String; = "org.fdroid.fdroid.installer.Installer.action.UNINSTALL_USER_INTERACTION"

.field public static final AUTHORITY:Ljava/lang/String; = "org.fdroid.fdroid.installer"

.field public static final EXTRA_APK:Ljava/lang/String; = "org.fdroid.fdroid.installer.Installer.extra.APK"

.field public static final EXTRA_APP:Ljava/lang/String; = "org.fdroid.fdroid.installer.Installer.extra.APP"

.field public static final EXTRA_ERROR_MESSAGE:Ljava/lang/String; = "org.fdroid.fdroid.net.installer.Installer.extra.ERROR_MESSAGE"

.field public static final EXTRA_USER_INTERACTION_PI:Ljava/lang/String; = "org.fdroid.fdroid.installer.Installer.extra.USER_INTERACTION_PI"

.field private static final TAG:Ljava/lang/String; = "Installer"


# instance fields
.field final apk:Lorg/fdroid/fdroid/data/Apk;

.field final app:Lorg/fdroid/fdroid/data/App;

.field final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/installer/Installer;->context:Landroid/content/Context;

    iput-object p2, p0, Lorg/fdroid/fdroid/installer/Installer;->app:Lorg/fdroid/fdroid/data/App;

    iput-object p3, p0, Lorg/fdroid/fdroid/installer/Installer;->apk:Lorg/fdroid/fdroid/data/Apk;

    return-void
.end method

.method static getInstallIntentFilter(Landroid/net/Uri;)Landroid/content/IntentFilter;
    .locals 1

    .line 241
    invoke-static {p0}, Lorg/fdroid/fdroid/installer/Installer;->getInstallInteractionIntentFilter(Landroid/net/Uri;)Landroid/content/IntentFilter;

    move-result-object p0

    const-string v0, "org.fdroid.fdroid.installer.Installer.action.INSTALL_STARTED"

    .line 242
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "org.fdroid.fdroid.installer.Installer.action.INSTALL_COMPLETE"

    .line 243
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "org.fdroid.fdroid.installer.Installer.action.INSTALL_INTERRUPTED"

    .line 244
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0
.end method

.method public static getInstallIntentFilter(Ljava/lang/String;)Landroid/content/IntentFilter;
    .locals 0

    .line 272
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lorg/fdroid/fdroid/installer/Installer;->getInstallIntentFilter(Landroid/net/Uri;)Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public static getInstallInteractionIntentFilter(Landroid/net/Uri;)Landroid/content/IntentFilter;
    .locals 3

    .line 256
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "org.fdroid.fdroid.installer.Installer.action.INSTALL_USER_INTERACTION"

    .line 257
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static getUninstallIntentFilter(Ljava/lang/String;)Landroid/content/IntentFilter;
    .locals 2

    .line 276
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "org.fdroid.fdroid.installer.Installer.action.UNINSTALL_STARTED"

    .line 277
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "org.fdroid.fdroid.installer.Installer.action.UNINSTALL_COMPLETE"

    .line 278
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "org.fdroid.fdroid.installer.Installer.action.UNINSTALL_INTERRUPTED"

    .line 279
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "org.fdroid.fdroid.installer.Installer.action.UNINSTALL_USER_INTERACTION"

    .line 280
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 281
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 282
    invoke-virtual {v0, p0, v1}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    return-object v0
.end method

.method private newPermissionCount()I
    .locals 4

    iget-object v0, p0, Lorg/fdroid/fdroid/installer/Installer;->apk:Lorg/fdroid/fdroid/data/Apk;

    .line 119
    iget v1, v0, Lorg/fdroid/fdroid/data/Apk;->targetSdkVersion:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 124
    :cond_0
    new-instance v1, Lorg/fdroid/fdroid/privileged/views/AppDiff;

    iget-object v2, p0, Lorg/fdroid/fdroid/installer/Installer;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lorg/fdroid/fdroid/privileged/views/AppDiff;-><init>(Landroid/content/Context;Lorg/fdroid/fdroid/data/Apk;)V

    .line 125
    new-instance v0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;

    iget-object v2, p0, Lorg/fdroid/fdroid/installer/Installer;->context:Landroid/content/Context;

    iget-object v3, v1, Lorg/fdroid/fdroid/privileged/views/AppDiff;->apkPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {v0, v2, v3}, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V

    iget-object v1, v1, Lorg/fdroid/fdroid/privileged/views/AppDiff;->installedApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    .line 128
    invoke-virtual {v0, v1}, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->getPermissionCount(I)I

    move-result v0

    return v0

    :cond_1
    const v1, 0xffff

    .line 131
    invoke-virtual {v0, v1}, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->getPermissionCount(I)I

    move-result v0

    return v0
.end method

.method static sendBroadcastInstall(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 1

    .line 187
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "org.fdroid.fdroid.installer.Installer.extra.USER_INTERACTION_PI"

    .line 189
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "org.fdroid.fdroid.installer.Installer.extra.APP"

    .line 190
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "org.fdroid.fdroid.installer.Installer.extra.APK"

    .line 191
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 192
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "org.fdroid.fdroid.net.installer.Installer.extra.ERROR_MESSAGE"

    .line 193
    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    :cond_0
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method static sendBroadcastUninstall(Landroid/content/Context;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 215
    invoke-static/range {v0 .. v5}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastUninstall(Landroid/content/Context;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method static sendBroadcastUninstall(Landroid/content/Context;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 3

    .line 220
    iget-object v0, p2, Lorg/fdroid/fdroid/data/Apk;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 222
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p3, "org.fdroid.fdroid.installer.Installer.extra.APP"

    .line 224
    invoke-virtual {v1, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "org.fdroid.fdroid.installer.Installer.extra.APK"

    .line 225
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "org.fdroid.fdroid.installer.Installer.extra.USER_INTERACTION_PI"

    .line 226
    invoke-virtual {v1, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 227
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "org.fdroid.fdroid.net.installer.Installer.extra.ERROR_MESSAGE"

    .line 228
    invoke-virtual {v1, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    :cond_0
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private sendBroadcastUninstall(Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lorg/fdroid/fdroid/installer/Installer;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/fdroid/fdroid/installer/Installer;->app:Lorg/fdroid/fdroid/data/App;

    iget-object v2, p0, Lorg/fdroid/fdroid/installer/Installer;->apk:Lorg/fdroid/fdroid/data/Apk;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 211
    invoke-static/range {v0 .. v5}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastUninstall(Landroid/content/Context;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getPermissionScreen()Landroid/content/Intent;
    .locals 3

    .line 94
    invoke-virtual {p0}, Lorg/fdroid/fdroid/installer/Installer;->isUnattended()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 98
    :cond_0
    invoke-direct {p0}, Lorg/fdroid/fdroid/installer/Installer;->newPermissionCount()I

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 103
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/fdroid/fdroid/installer/Installer;->context:Landroid/content/Context;

    const-class v2, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "org.fdroid.fdroid.installer.Installer.extra.APP"

    iget-object v2, p0, Lorg/fdroid/fdroid/installer/Installer;->app:Lorg/fdroid/fdroid/data/App;

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "org.fdroid.fdroid.installer.Installer.extra.APK"

    iget-object v2, p0, Lorg/fdroid/fdroid/installer/Installer;->apk:Lorg/fdroid/fdroid/data/Apk;

    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public getUninstallScreen()Landroid/content/Intent;
    .locals 6

    const-string v0, "Installer"

    .line 143
    invoke-virtual {p0}, Lorg/fdroid/fdroid/installer/Installer;->isUnattended()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lorg/fdroid/fdroid/installer/Installer;->context:Landroid/content/Context;

    .line 147
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    iget-object v3, p0, Lorg/fdroid/fdroid/installer/Installer;->apk:Lorg/fdroid/fdroid/data/Apk;

    .line 150
    iget-object v3, v3, Lorg/fdroid/fdroid/data/Apk;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App not installed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/fdroid/fdroid/installer/Installer;->apk:Lorg/fdroid/fdroid/data/Apk;

    iget-object v4, v4, Lorg/fdroid/fdroid/data/Apk;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    const-string v4, "org.fdroid.fdroid.installer.Installer.extra.APK"

    const-string v5, "org.fdroid.fdroid.installer.Installer.extra.APP"

    if-lt v1, v3, :cond_2

    const-string v1, "com.android.packageinstaller"

    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.google.android.packageinstaller"

    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "Falling back to default installer for uninstall"

    .line 157
    invoke-static {v0, v1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/fdroid/fdroid/installer/Installer;->context:Landroid/content/Context;

    const-class v2, Lorg/fdroid/fdroid/installer/DefaultInstallerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "org.fdroid.fdroid.installer.DefaultInstaller.action.UNINSTALL_PACKAGE"

    .line 159
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/fdroid/fdroid/installer/Installer;->app:Lorg/fdroid/fdroid/data/App;

    .line 160
    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/fdroid/fdroid/installer/Installer;->apk:Lorg/fdroid/fdroid/data/Apk;

    .line 161
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0

    .line 165
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/fdroid/fdroid/installer/Installer;->context:Landroid/content/Context;

    const-class v2, Lorg/fdroid/fdroid/privileged/views/UninstallDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lorg/fdroid/fdroid/installer/Installer;->app:Lorg/fdroid/fdroid/data/App;

    .line 166
    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/fdroid/fdroid/installer/Installer;->apk:Lorg/fdroid/fdroid/data/Apk;

    .line 167
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public installPackage(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 6

    const-string v0, "org.fdroid.fdroid.installer.Installer.action.INSTALL_INTERRUPTED"

    const-string v1, "Installer"

    :try_start_0
    iget-object v2, p0, Lorg/fdroid/fdroid/installer/Installer;->context:Landroid/content/Context;

    iget-object v3, p0, Lorg/fdroid/fdroid/installer/Installer;->apk:Lorg/fdroid/fdroid/data/Apk;

    .line 307
    invoke-static {v2, p1, v3}, Lorg/fdroid/fdroid/installer/ApkFileProvider;->getSafeUri(Landroid/content/Context;Landroid/net/Uri;Lorg/fdroid/fdroid/data/Apk;)Landroid/net/Uri;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 316
    :try_start_1
    new-instance v3, Lorg/fdroid/fdroid/installer/ApkVerifier;

    iget-object v4, p0, Lorg/fdroid/fdroid/installer/Installer;->context:Landroid/content/Context;

    iget-object v5, p0, Lorg/fdroid/fdroid/installer/Installer;->apk:Lorg/fdroid/fdroid/data/Apk;

    invoke-direct {v3, v4, p1, v5}, Lorg/fdroid/fdroid/installer/ApkVerifier;-><init>(Landroid/content/Context;Landroid/net/Uri;Lorg/fdroid/fdroid/data/Apk;)V

    .line 317
    invoke-virtual {v3}, Lorg/fdroid/fdroid/installer/ApkVerifier;->verifyApk()V
    :try_end_1
    .catch Lorg/fdroid/fdroid/installer/ApkVerifier$ApkVerificationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/fdroid/fdroid/installer/ApkVerifier$ApkPermissionUnequalException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 327
    :catch_1
    :goto_0
    invoke-virtual {p0, v2, p2}, Lorg/fdroid/fdroid/installer/Installer;->installPackageInternal(Landroid/net/Uri;Landroid/net/Uri;)V

    return-void

    .line 319
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 320
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, v0, p1}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastInstall(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_2
    move-exception p1

    .line 309
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 310
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, v0, p1}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastInstall(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract installPackageInternal(Landroid/net/Uri;Landroid/net/Uri;)V
.end method

.method protected abstract isUnattended()Z
.end method

.method sendBroadcastInstall(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lorg/fdroid/fdroid/installer/Installer;->context:Landroid/content/Context;

    iget-object v3, p0, Lorg/fdroid/fdroid/installer/Installer;->app:Lorg/fdroid/fdroid/data/App;

    iget-object v4, p0, Lorg/fdroid/fdroid/installer/Installer;->apk:Lorg/fdroid/fdroid/data/Apk;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    .line 177
    invoke-static/range {v0 .. v6}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastInstall(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Landroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method sendBroadcastInstall(Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 7

    iget-object v0, p0, Lorg/fdroid/fdroid/installer/Installer;->context:Landroid/content/Context;

    iget-object v3, p0, Lorg/fdroid/fdroid/installer/Installer;->app:Lorg/fdroid/fdroid/data/App;

    iget-object v4, p0, Lorg/fdroid/fdroid/installer/Installer;->apk:Lorg/fdroid/fdroid/data/Apk;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 173
    invoke-static/range {v0 .. v6}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastInstall(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Landroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method sendBroadcastInstall(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lorg/fdroid/fdroid/installer/Installer;->context:Landroid/content/Context;

    iget-object v3, p0, Lorg/fdroid/fdroid/installer/Installer;->app:Lorg/fdroid/fdroid/data/App;

    iget-object v4, p0, Lorg/fdroid/fdroid/installer/Installer;->apk:Lorg/fdroid/fdroid/data/Apk;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    .line 181
    invoke-static/range {v0 .. v6}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastInstall(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Landroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method sendBroadcastUninstall(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 203
    invoke-direct {p0, p1, v0, v0}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastUninstall(Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method sendBroadcastUninstall(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 1

    const/4 v0, 0x0

    .line 207
    invoke-direct {p0, p1, p2, v0}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastUninstall(Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method sendBroadcastUninstall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 199
    invoke-direct {p0, p1, v0, p2}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastUninstall(Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract uninstallPackage()V
.end method
