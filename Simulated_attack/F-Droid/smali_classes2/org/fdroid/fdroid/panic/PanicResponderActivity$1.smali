.class Lorg/fdroid/fdroid/panic/PanicResponderActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "PanicResponderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/panic/PanicResponderActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/panic/PanicResponderActivity;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/panic/PanicResponderActivity;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/panic/PanicResponderActivity$1;->this$0:Lorg/fdroid/fdroid/panic/PanicResponderActivity;

    iput-object p2, p0, Lorg/fdroid/fdroid/panic/PanicResponderActivity$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 77
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "org.fdroid.fdroid.installer.Installer.action.UNINSTALL_COMPLETE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "org.fdroid.fdroid.installer.Installer.action.UNINSTALL_INTERRUPTED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/fdroid/fdroid/panic/PanicResponderActivity$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 83
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_0
    return-void
.end method
