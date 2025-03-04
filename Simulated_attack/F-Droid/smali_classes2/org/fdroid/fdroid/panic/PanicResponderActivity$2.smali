.class Lorg/fdroid/fdroid/panic/PanicResponderActivity$2;
.super Ljava/lang/Thread;
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

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field final synthetic val$preferences:Lorg/fdroid/fdroid/Preferences;

.field final synthetic val$receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/panic/PanicResponderActivity;Ljava/util/concurrent/CountDownLatch;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Landroid/content/BroadcastReceiver;Lorg/fdroid/fdroid/Preferences;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/panic/PanicResponderActivity$2;->this$0:Lorg/fdroid/fdroid/panic/PanicResponderActivity;

    iput-object p2, p0, Lorg/fdroid/fdroid/panic/PanicResponderActivity$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lorg/fdroid/fdroid/panic/PanicResponderActivity$2;->val$lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iput-object p4, p0, Lorg/fdroid/fdroid/panic/PanicResponderActivity$2;->val$receiver:Landroid/content/BroadcastReceiver;

    iput-object p5, p0, Lorg/fdroid/fdroid/panic/PanicResponderActivity$2;->val$preferences:Lorg/fdroid/fdroid/Preferences;

    iput-object p6, p0, Lorg/fdroid/fdroid/panic/PanicResponderActivity$2;->val$context:Landroid/content/Context;

    .line 99
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/fdroid/fdroid/panic/PanicResponderActivity$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 103
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lorg/fdroid/fdroid/panic/PanicResponderActivity$2;->val$lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lorg/fdroid/fdroid/panic/PanicResponderActivity$2;->val$receiver:Landroid/content/BroadcastReceiver;

    .line 107
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/panic/PanicResponderActivity$2;->val$preferences:Lorg/fdroid/fdroid/Preferences;

    .line 108
    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->panicResetRepos()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/panic/PanicResponderActivity$2;->val$context:Landroid/content/Context;

    .line 109
    invoke-static {v0}, Lorg/fdroid/fdroid/panic/PanicResponderActivity;->resetRepos(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/panic/PanicResponderActivity$2;->val$preferences:Lorg/fdroid/fdroid/Preferences;

    .line 111
    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->panicHide()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/fdroid/fdroid/panic/PanicResponderActivity$2;->val$context:Landroid/content/Context;

    .line 112
    invoke-static {v0}, Lorg/fdroid/fdroid/panic/HidingManager;->hide(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lorg/fdroid/fdroid/panic/PanicResponderActivity$2;->val$preferences:Lorg/fdroid/fdroid/Preferences;

    .line 114
    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->panicExit()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/fdroid/fdroid/panic/PanicResponderActivity$2;->this$0:Lorg/fdroid/fdroid/panic/PanicResponderActivity;

    .line 115
    invoke-static {v0}, Lorg/fdroid/fdroid/panic/PanicResponderActivity;->-$$Nest$mexitAndClear(Lorg/fdroid/fdroid/panic/PanicResponderActivity;)V

    :cond_2
    return-void
.end method
