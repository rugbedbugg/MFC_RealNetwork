.class public Lorg/fdroid/fdroid/privileged/views/UninstallDialogActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "UninstallDialogActivity.java"


# direct methods
.method public static synthetic $r8$lambda$3iAWS9B7r6BgFvvYEiGE_8LUxKQ(Lorg/fdroid/fdroid/privileged/views/UninstallDialogActivity;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Landroid/content/Intent;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/fdroid/fdroid/privileged/views/UninstallDialogActivity;->lambda$onCreate$0(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Landroid/content/Intent;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ENr9niw356KvRqyK0mG1lL3uCrc(Lorg/fdroid/fdroid/privileged/views/UninstallDialogActivity;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/privileged/views/UninstallDialogActivity;->lambda$onCreate$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wl-WctUWSl3-CTOf4-RORJ9SGJU(Lorg/fdroid/fdroid/privileged/views/UninstallDialogActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/privileged/views/UninstallDialogActivity;->lambda$onCreate$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Landroid/content/Intent;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 89
    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4}, Landroid/content/Intent;-><init>()V

    const-string p5, "org.fdroid.fdroid.installer.Installer.extra.APP"

    .line 90
    invoke-virtual {p4, p5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "org.fdroid.fdroid.installer.Installer.extra.APK"

    .line 91
    invoke-virtual {p4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 92
    invoke-virtual {p0, p1, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 96
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$onCreate$2(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 100
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 49
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "org.fdroid.fdroid.installer.Installer.extra.APP"

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/data/App;

    const-string v1, "org.fdroid.fdroid.installer.Installer.extra.APK"

    .line 53
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lorg/fdroid/fdroid/data/Apk;

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 60
    :try_start_0
    iget-object v3, v1, Lorg/fdroid/fdroid/data/Apk;->packageName:Ljava/lang/String;

    const/16 v4, 0x2000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1

    move v6, v7

    :cond_1
    if-eqz v5, :cond_3

    if-eqz v6, :cond_2

    goto :goto_1

    .line 74
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Cannot remove system apps unless we\'re uninstalling updates"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    sget v4, Lorg/fdroid/fdroid/R$string;->uninstall_update_confirm:I

    goto :goto_2

    :cond_4
    sget v4, Lorg/fdroid/fdroid/R$string;->uninstall_confirm:I

    .line 85
    :goto_2
    new-instance v5, Landroidx/appcompat/app/AlertDialog$Builder;

    sget v6, Lorg/fdroid/fdroid/R$style;->Theme_App:I

    invoke-direct {v5, p0, v6}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 86
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 87
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 88
    new-instance v2, Lorg/fdroid/fdroid/privileged/views/UninstallDialogActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, v1, p1}, Lorg/fdroid/fdroid/privileged/views/UninstallDialogActivity$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/privileged/views/UninstallDialogActivity;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Landroid/content/Intent;)V

    const p1, 0x104000a

    invoke-virtual {v5, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 95
    new-instance p1, Lorg/fdroid/fdroid/privileged/views/UninstallDialogActivity$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/fdroid/fdroid/privileged/views/UninstallDialogActivity$$ExternalSyntheticLambda1;-><init>(Lorg/fdroid/fdroid/privileged/views/UninstallDialogActivity;)V

    const/high16 v0, 0x1040000

    invoke-virtual {v5, v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 99
    new-instance p1, Lorg/fdroid/fdroid/privileged/views/UninstallDialogActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/fdroid/fdroid/privileged/views/UninstallDialogActivity$$ExternalSyntheticLambda2;-><init>(Lorg/fdroid/fdroid/privileged/views/UninstallDialogActivity;)V

    invoke-virtual {v5, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 103
    invoke-virtual {v5, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 104
    invoke-virtual {v5}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    :catch_0
    move-exception p1

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package to uninstall not found: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lorg/fdroid/fdroid/data/Apk;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UninstallDialogActivity"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
