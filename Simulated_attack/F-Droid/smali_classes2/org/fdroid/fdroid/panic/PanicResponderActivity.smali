.class public Lorg/fdroid/fdroid/panic/PanicResponderActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PanicResponderActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PanicResponderActivity"


# direct methods
.method static bridge synthetic -$$Nest$mexitAndClear(Lorg/fdroid/fdroid/panic/PanicResponderActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/panic/PanicResponderActivity;->exitAndClear()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private exitAndClear()V
    .locals 0

    .line 142
    invoke-static {p0}, Lorg/fdroid/fdroid/panic/ExitActivity;->exitAndRemoveFromRecentApps(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 143
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method static resetRepos(Landroid/content/Context;)V
    .locals 0

    .line 138
    invoke-static {p0}, Lorg/fdroid/fdroid/data/DBHelper;->resetRepos(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 45
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 48
    invoke-static {p1}, Linfo/guardianproject/panic/Panic;->isTriggerIntent(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    sget-object p1, Lorg/fdroid/fdroid/panic/PanicResponderActivity;->TAG:Ljava/lang/String;

    const-string v0, "Received Panic Trigger..."

    .line 54
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    .line 58
    invoke-static {p0}, Linfo/guardianproject/panic/PanicResponder;->receivedTriggerFromConnectedApp(Landroid/app/Activity;)Z

    move-result v1

    .line 59
    invoke-static {p0}, Lorg/fdroid/fdroid/installer/PrivilegedInstaller;->isDefault(Landroid/content/Context;)Z

    move-result v8

    .line 61
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->getPanicWipeSet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/fdroid/fdroid/Preferences;->setPanicWipeSet(Ljava/util/Set;)V

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/fdroid/fdroid/Preferences;->setPanicTmpSelectedSet(Ljava/util/Set;)V

    if-eqz v1, :cond_3

    if-eqz v8, :cond_3

    .line 65
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_1
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 p1, 0x1

    invoke-direct {v3, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 75
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v4

    .line 76
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 77
    new-instance v5, Lorg/fdroid/fdroid/panic/PanicResponderActivity$1;

    invoke-direct {v5, p0, v3}, Lorg/fdroid/fdroid/panic/PanicResponderActivity$1;-><init>(Lorg/fdroid/fdroid/panic/PanicResponderActivity;Ljava/util/concurrent/CountDownLatch;)V

    .line 88
    invoke-static {p1}, Lorg/fdroid/fdroid/installer/Installer;->getUninstallIntentFilter(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p1

    invoke-virtual {v4, v5, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 90
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 91
    new-instance v2, Lorg/fdroid/fdroid/data/App;

    invoke-direct {v2}, Lorg/fdroid/fdroid/data/App;-><init>()V

    .line 92
    new-instance v6, Lorg/fdroid/fdroid/data/Apk;

    invoke-direct {v6}, Lorg/fdroid/fdroid/data/Apk;-><init>()V

    iput-object v1, v2, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    iput-object v1, v6, Lorg/fdroid/fdroid/data/Apk;->packageName:Ljava/lang/String;

    .line 95
    invoke-static {p0, v2, v6}, Lorg/fdroid/fdroid/installer/InstallerService;->uninstall(Landroid/content/Context;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V

    goto :goto_0

    .line 99
    :cond_2
    new-instance p1, Lorg/fdroid/fdroid/panic/PanicResponderActivity$2;

    move-object v1, p1

    move-object v2, p0

    move-object v6, v0

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lorg/fdroid/fdroid/panic/PanicResponderActivity$2;-><init>(Lorg/fdroid/fdroid/panic/PanicResponderActivity;Ljava/util/concurrent/CountDownLatch;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Landroid/content/BroadcastReceiver;Lorg/fdroid/fdroid/Preferences;Landroid/content/Context;)V

    .line 118
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_5

    .line 120
    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->panicResetRepos()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 121
    invoke-static {p0}, Lorg/fdroid/fdroid/panic/PanicResponderActivity;->resetRepos(Landroid/content/Context;)V

    .line 124
    :cond_4
    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->panicHide()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Hiding app..."

    .line 125
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {p0}, Lorg/fdroid/fdroid/panic/HidingManager;->hide(Landroid/content/Context;)V

    :cond_5
    :goto_1
    if-nez v8, :cond_6

    .line 131
    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->panicExit()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 132
    invoke-direct {p0}, Lorg/fdroid/fdroid/panic/PanicResponderActivity;->exitAndClear()V

    .line 134
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
