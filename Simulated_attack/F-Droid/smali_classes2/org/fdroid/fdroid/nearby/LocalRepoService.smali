.class public Lorg/fdroid/fdroid/nearby/LocalRepoService;
.super Landroid/app/IntentService;
.source "LocalRepoService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/nearby/LocalRepoService$GenerateLocalRepoThread;
    }
.end annotation


# static fields
.field public static final ACTION_CREATE:Ljava/lang/String; = "org.fdroid.fdroid.nearby.action.CREATE"

.field public static final ACTION_STATUS:Ljava/lang/String; = "localRepoStatusAction"

.field public static final EXTRA_PACKAGE_NAMES:Ljava/lang/String; = "org.fdroid.fdroid.nearby.extra.PACKAGE_NAMES"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "localRepoStatusExtra"

.field public static final STATUS_ERROR:I = 0x2

.field public static final STATUS_PROGRESS:I = 0x1

.field public static final STATUS_STARTED:I = 0x0

.field public static final TAG:Ljava/lang/String; = "LocalRepoService"


# instance fields
.field private currentlyProcessedApps:[Ljava/lang/String;

.field private thread:Lorg/fdroid/fdroid/nearby/LocalRepoService$GenerateLocalRepoThread;


# direct methods
.method static bridge synthetic -$$Nest$fgetcurrentlyProcessedApps(Lorg/fdroid/fdroid/nearby/LocalRepoService;)[Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/nearby/LocalRepoService;->currentlyProcessedApps:[Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "LocalRepoService"

    .line 47
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/LocalRepoService;->currentlyProcessedApps:[Ljava/lang/String;

    return-void
.end method

.method static broadcast(Landroid/content/Context;II)V
    .locals 0

    .line 128
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/fdroid/fdroid/nearby/LocalRepoService;->broadcast(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method static broadcast(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "localRepoStatusAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "localRepoStatusExtra"

    .line 120
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string p1, "android.intent.extra.TEXT"

    .line 122
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    :cond_0
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public static create(Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/fdroid/fdroid/nearby/LocalRepoService;->create(Landroid/content/Context;Ljava/util/Set;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 61
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/fdroid/fdroid/nearby/LocalRepoService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "org.fdroid.fdroid.nearby.action.CREATE"

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 63
    invoke-interface {p1, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const-string v1, "org.fdroid.fdroid.nearby.extra.PACKAGE_NAMES"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static runProcess(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 3

    .line 102
    :try_start_0
    invoke-static {p0}, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->get(Landroid/content/Context;)Lorg/fdroid/fdroid/nearby/LocalRepoManager;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$string;->deleting_repo:I

    const/4 v2, 0x1

    .line 103
    invoke-static {p0, v2, v1}, Lorg/fdroid/fdroid/nearby/LocalRepoService;->broadcast(Landroid/content/Context;II)V

    .line 104
    invoke-virtual {v0}, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->deleteRepo()V

    sget v1, Lorg/fdroid/fdroid/R$string;->linking_apks:I

    .line 105
    invoke-static {p0, v2, v1}, Lorg/fdroid/fdroid/nearby/LocalRepoService;->broadcast(Landroid/content/Context;II)V

    .line 106
    sget-object v1, Lorg/fdroid/fdroid/FDroidApp;->repo:Lorg/fdroid/database/Repository;

    invoke-static {v1}, Lorg/fdroid/fdroid/Utils;->getSharingUri(Lorg/fdroid/database/Repository;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    sget-object v2, Lorg/fdroid/fdroid/FDroidApp;->repo:Lorg/fdroid/database/Repository;

    invoke-virtual {v2}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->generateIndex(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 108
    invoke-static {p0, p1, v0}, Lorg/fdroid/fdroid/nearby/LocalRepoService;->broadcast(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x2

    .line 110
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/fdroid/fdroid/nearby/LocalRepoService;->broadcast(Landroid/content/Context;ILjava/lang/String;)V

    const-string p0, "LocalRepoService"

    const-string v0, "Error creating repo"

    .line 111
    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    const/16 v0, 0x13

    .line 69
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const-string v0, "org.fdroid.fdroid.nearby.extra.PACKAGE_NAMES"

    .line 70
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocalRepoService"

    if-eqz p1, :cond_3

    .line 71
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/LocalRepoService;->currentlyProcessedApps:[Ljava/lang/String;

    .line 77
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "packageNames list unchanged, quitting"

    .line 78
    invoke-static {v0, p1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/LocalRepoService;->currentlyProcessedApps:[Ljava/lang/String;

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/LocalRepoService;->thread:Lorg/fdroid/fdroid/nearby/LocalRepoService$GenerateLocalRepoThread;

    if-eqz p1, :cond_2

    .line 84
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 86
    :cond_2
    new-instance p1, Lorg/fdroid/fdroid/nearby/LocalRepoService$GenerateLocalRepoThread;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/fdroid/fdroid/nearby/LocalRepoService$GenerateLocalRepoThread;-><init>(Lorg/fdroid/fdroid/nearby/LocalRepoService;Lorg/fdroid/fdroid/nearby/LocalRepoService$GenerateLocalRepoThread-IA;)V

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/LocalRepoService;->thread:Lorg/fdroid/fdroid/nearby/LocalRepoService$GenerateLocalRepoThread;

    .line 87
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_3
    :goto_0
    const-string p1, "no packageNames found, quitting"

    .line 72
    invoke-static {v0, p1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
