.class public Lorg/fdroid/fdroid/installer/ObfInstallerService;
.super Landroid/app/IntentService;
.source "ObfInstallerService.java"


# static fields
.field private static final ACTION_INSTALL_OBF:Ljava/lang/String; = "org.fdroid.fdroid.installer.action.INSTALL_OBF"

.field private static final EXTRA_OBF_PATH:Ljava/lang/String; = "org.fdroid.fdroid.installer.extra.OBF_PATH"

.field private static final TAG:Ljava/lang/String; = "ObfInstallerService"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "ObfInstallerService"

    .line 39
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static install(Landroid/content/Context;Landroid/net/Uri;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Ljava/io/File;)V
    .locals 2

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/fdroid/fdroid/installer/ObfInstallerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "org.fdroid.fdroid.installer.action.INSTALL_OBF"

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "org.fdroid.fdroid.net.Downloader.extra.CANONICAL_URL"

    .line 45
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "org.fdroid.fdroid.installer.Installer.extra.APP"

    .line 46
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "org.fdroid.fdroid.installer.Installer.extra.APK"

    .line 47
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "org.fdroid.fdroid.installer.extra.OBF_PATH"

    .line 48
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private sendBroadcastInstall(Ljava/lang/String;Landroid/net/Uri;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 93
    invoke-static/range {v0 .. v6}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastInstall(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Landroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 10

    if-eqz p1, :cond_4

    const-string v0, "org.fdroid.fdroid.installer.action.INSTALL_OBF"

    .line 54
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v0, "org.fdroid.fdroid.net.Downloader.extra.CANONICAL_URL"

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "org.fdroid.fdroid.installer.Installer.extra.APP"

    .line 59
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lorg/fdroid/fdroid/data/App;

    const-string v1, "org.fdroid.fdroid.installer.Installer.extra.APK"

    .line 60
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lorg/fdroid/fdroid/data/Apk;

    const-string v1, "org.fdroid.fdroid.installer.extra.OBF_PATH"

    .line 61
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "obf"

    .line 63
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v7, v8, v1}, Lorg/fdroid/fdroid/installer/ObfInstallerService;->sendPostInstallAndCompleteIntents(Landroid/net/Uri;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Ljava/io/File;)V

    return-void

    :cond_1
    const-string v2, "zip"

    .line 67
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v2, "org.fdroid.fdroid.installer.Installer.action.INSTALL_INTERRUPTED"

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only .obf and .zip files are supported: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v3, v0

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lorg/fdroid/fdroid/installer/ObfInstallerService;->sendBroadcastInstall(Ljava/lang/String;Landroid/net/Uri;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Ljava/lang/String;)V

    return-void

    .line 73
    :cond_2
    :try_start_0
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    new-instance p1, Ljava/util/zip/ZipFile;

    invoke-direct {p1, v9}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 75
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    const-string v2, "org.fdroid.fdroid.installer.Installer.action.INSTALL_INTERRUPTED"

    const-string v6, "Corrupt or empty ZIP file!"

    move-object v1, p0

    move-object v3, v0

    move-object v4, v7

    move-object v5, v8

    .line 76
    invoke-direct/range {v1 .. v6}, Lorg/fdroid/fdroid/installer/ObfInstallerService;->sendBroadcastInstall(Ljava/lang/String;Landroid/net/Uri;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 79
    :cond_3
    :goto_0
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 80
    new-instance v2, Ljava/io/File;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 81
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1, v2}, Lorg/apache/commons/io/FileUtils;->copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V

    .line 84
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 85
    invoke-virtual {p0, v0, v7, v8, v2}, Lorg/fdroid/fdroid/installer/ObfInstallerService;->sendPostInstallAndCompleteIntents(Landroid/net/Uri;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 87
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, "org.fdroid.fdroid.installer.Installer.action.INSTALL_INTERRUPTED"

    .line 88
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v3, v0

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lorg/fdroid/fdroid/installer/ObfInstallerService;->sendBroadcastInstall(Ljava/lang/String;Landroid/net/Uri;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Ljava/lang/String;)V

    :goto_2
    return-void

    .line 55
    :cond_4
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "received invalid intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ObfInstallerService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method sendPostInstallAndCompleteIntents(Landroid/net/Uri;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Ljava/io/File;)V
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    :try_start_0
    const-class v0, Landroid/os/StrictMode;

    const-string v2, "disableDeathOnFileUriExposure"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 106
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 107
    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 113
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x14000000

    .line 114
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 115
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    const-string v3, "obf"

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "application/octet-stream"

    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v1, :cond_2

    .line 120
    invoke-static {p4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {v0, p4, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const-string v1, "org.fdroid.fdroid.installer"

    .line 122
    invoke-static {p0, v1, p4}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {v0, p4, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const/16 p4, 0x41

    .line 124
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    invoke-virtual {v0, p4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p4

    if-eqz p4, :cond_3

    .line 127
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v2, "org.fdroid.fdroid.installer.Installer.action.INSTALL_COMPLETE"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 128
    invoke-direct/range {v1 .. v6}, Lorg/fdroid/fdroid/installer/ObfInstallerService;->sendBroadcastInstall(Ljava/lang/String;Landroid/net/Uri;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Ljava/lang/String;)V

    goto :goto_2

    .line 130
    :cond_3
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No AppCompatActivity available to handle "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "ObfInstallerService"

    invoke-static {v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "org.fdroid.fdroid.installer.Installer.action.INSTALL_INTERRUPTED"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 131
    invoke-direct/range {v1 .. v6}, Lorg/fdroid/fdroid/installer/ObfInstallerService;->sendBroadcastInstall(Ljava/lang/String;Landroid/net/Uri;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
