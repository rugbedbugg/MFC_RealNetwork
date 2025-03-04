.class public Lorg/fdroid/fdroid/panic/HidingManager;
.super Ljava/lang/Object;
.source "HidingManager.java"


# static fields
.field private static final CALCULATOR_NAME:Landroid/content/ComponentName;

.field private static final LAUNCHER_NAME:Landroid/content/ComponentName;


# direct methods
.method public static synthetic $r8$lambda$5OPolZGdSkn64lo_mmRXMTOCYMs(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/panic/HidingManager;->lambda$showHideDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$y7QfWaDmd7lQnfxykUSfLvC3f1U(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/fdroid/fdroid/panic/HidingManager;->lambda$showHideDialog$0(Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lorg/fdroid/fdroid/views/main/MainActivity;

    .line 27
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.fdroid.fdroid"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/fdroid/fdroid/panic/HidingManager;->LAUNCHER_NAME:Landroid/content/ComponentName;

    .line 29
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lorg/fdroid/fdroid/panic/CalculatorActivity;

    .line 30
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/fdroid/fdroid/panic/HidingManager;->CALCULATOR_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUnhidePin(Landroid/content/Context;)I
    .locals 1

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lorg/fdroid/fdroid/R$integer;->unhidePin:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public static hide(Landroid/content/Context;)V
    .locals 3

    .line 56
    invoke-static {p0}, Lorg/fdroid/fdroid/panic/HidingManager;->stopServices(Landroid/content/Context;)V

    .line 57
    invoke-static {p0}, Lorg/fdroid/fdroid/panic/HidingManager;->removeNotifications(Landroid/content/Context;)V

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    sget-object v0, Lorg/fdroid/fdroid/panic/HidingManager;->LAUNCHER_NAME:Landroid/content/ComponentName;

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 61
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    sget-object v0, Lorg/fdroid/fdroid/panic/HidingManager;->CALCULATOR_NAME:Landroid/content/ComponentName;

    const/4 v1, 0x0

    .line 65
    invoke-virtual {p0, v0, v2, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method

.method public static isHidden(Landroid/content/Context;)Z
    .locals 1

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    sget-object v0, Lorg/fdroid/fdroid/panic/HidingManager;->LAUNCHER_NAME:Landroid/content/ComponentName;

    .line 38
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$showHideDialog$0(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 49
    invoke-static {p0}, Lorg/fdroid/fdroid/panic/HidingManager;->hide(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$showHideDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 50
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method private static removeNotifications(Landroid/content/Context;)V
    .locals 0

    .line 83
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p0

    .line 84
    invoke-virtual {p0}, Landroidx/core/app/NotificationManagerCompat;->cancelAll()V

    return-void
.end method

.method public static show(Landroid/content/Context;)V
    .locals 3

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    sget-object v0, Lorg/fdroid/fdroid/panic/HidingManager;->LAUNCHER_NAME:Landroid/content/ComponentName;

    const/4 v1, 0x1

    .line 73
    invoke-virtual {p0, v0, v1, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    sget-object v0, Lorg/fdroid/fdroid/panic/HidingManager;->CALCULATOR_NAME:Landroid/content/ComponentName;

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 77
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method

.method public static showHideDialog(Landroid/content/Context;)V
    .locals 8

    sget v0, Lorg/fdroid/fdroid/R$string;->app_name:I

    .line 43
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 44
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lorg/fdroid/fdroid/R$string;->hiding_dialog_title:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 45
    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v2, Lorg/fdroid/fdroid/R$string;->hiding_dialog_message:I

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    .line 47
    invoke-static {p0}, Lorg/fdroid/fdroid/panic/HidingManager;->getUnhidePin(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    sget v6, Lorg/fdroid/fdroid/R$string;->hiding_calculator:I

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v4, v7

    .line 46
    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v2, Lorg/fdroid/fdroid/R$string;->panic_hide_title:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    .line 48
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/fdroid/fdroid/panic/HidingManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/fdroid/fdroid/panic/HidingManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p0, Lorg/fdroid/fdroid/R$string;->cancel:I

    .line 50
    new-instance v0, Lorg/fdroid/fdroid/panic/HidingManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/fdroid/fdroid/panic/HidingManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p0, Lorg/fdroid/fdroid/R$layout;->dialog_app_hiding:I

    .line 51
    invoke-virtual {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 52
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static stopServices(Landroid/content/Context;)V
    .locals 6

    .line 92
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 94
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 95
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 96
    new-instance v5, Landroid/content/ComponentName;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 100
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method
