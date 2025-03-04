.class public abstract Linfo/guardianproject/panic/PanicUtils;
.super Ljava/lang/Object;
.source "PanicUtils.java"


# static fields
.field static final CONNECT_INTENT:Landroid/content/Intent;

.field static final TRIGGER_INTENT:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Landroid/content/Intent;

    const-string v1, "info.guardianproject.panic.action.TRIGGER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Linfo/guardianproject/panic/PanicUtils;->TRIGGER_INTENT:Landroid/content/Intent;

    .line 12
    new-instance v0, Landroid/content/Intent;

    const-string v1, "info.guardianproject.panic.action.CONNECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Linfo/guardianproject/panic/PanicUtils;->CONNECT_INTENT:Landroid/content/Intent;

    return-void
.end method

.method static checkForIntentWithAction(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 0

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 33
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static getCallingPackageName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 20
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Received blank Panic Intent! The Intent must be sent using startActivityForResult() and received without launchMode singleTask or singleInstance!"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method
