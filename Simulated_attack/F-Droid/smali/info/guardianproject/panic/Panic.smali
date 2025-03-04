.class public abstract Linfo/guardianproject/panic/Panic;
.super Ljava/lang/Object;
.source "Panic.java"


# direct methods
.method public static isTriggerIntent(Landroid/content/Intent;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "info.guardianproject.panic.action.TRIGGER"

    .line 22
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
