.class public Lorg/fdroid/fdroid/NotificationHelper;
.super Ljava/lang/Object;
.source "NotificationHelper.java"


# static fields
.field static final BROADCAST_NOTIFICATIONS_ALL_INSTALLED_CLEARED:Ljava/lang/String; = "org.fdroid.fdroid.installer.notifications.allinstalled.cleared"

.field static final BROADCAST_NOTIFICATIONS_ALL_UPDATES_CLEARED:Ljava/lang/String; = "org.fdroid.fdroid.installer.notifications.allupdates.cleared"

.field static final BROADCAST_NOTIFICATIONS_INSTALLED_CLEARED:Ljava/lang/String; = "org.fdroid.fdroid.installer.notifications.installed.cleared"

.field static final BROADCAST_NOTIFICATIONS_UPDATE_CLEARED:Ljava/lang/String; = "org.fdroid.fdroid.installer.notifications.update.cleared"

.field private static final CHANNEL_INSTALLS:Ljava/lang/String; = "install-channel"

.field public static final CHANNEL_SWAPS:Ljava/lang/String; = "swap-channel"

.field static final CHANNEL_UPDATES:Ljava/lang/String; = "update-channel"

.field private static final GROUP_INSTALLED:Ljava/lang/String; = "installed"

.field private static final GROUP_UPDATES:Ljava/lang/String; = "updates"

.field private static final MAX_INSTALLED_TO_SHOW:I = 0xa

.field private static final MAX_UPDATES_TO_SHOW:I = 0x5

.field private static final NOTIFY_ID_INSTALLED:I = 0x2

.field private static final NOTIFY_ID_UPDATES:I = 0x1


# instance fields
.field private final context:Landroid/content/Context;

.field private final installed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationManager:Landroidx/core/app/NotificationManagerCompat;

.field private final updates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetcontext(Lorg/fdroid/fdroid/NotificationHelper;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnotificationManager(Lorg/fdroid/fdroid/NotificationHelper;)Landroidx/core/app/NotificationManagerCompat;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/NotificationHelper;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcreateNotification(Lorg/fdroid/fdroid/NotificationHelper;Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/NotificationHelper;->createNotification(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateSummaryNotifications(Lorg/fdroid/fdroid/NotificationHelper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/NotificationHelper;->createSummaryNotifications()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetLargeIconSize(Lorg/fdroid/fdroid/NotificationHelper;)Landroid/graphics/Point;
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/NotificationHelper;->getLargeIconSize()Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateStatusLists(Lorg/fdroid/fdroid/NotificationHelper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/NotificationHelper;->updateStatusLists()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/NotificationHelper;->updates:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/NotificationHelper;->installed:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    .line 68
    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/NotificationHelper;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 70
    new-instance v1, Landroidx/core/app/NotificationChannelCompat$Builder;

    const-string v2, "install-channel"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroidx/core/app/NotificationChannelCompat$Builder;-><init>(Ljava/lang/String;I)V

    sget v2, Lorg/fdroid/fdroid/R$string;->notification_channel_installs_title:I

    .line 72
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationChannelCompat$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v1

    sget v2, Lorg/fdroid/fdroid/R$string;->notification_channel_installs_description:I

    .line 73
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationChannelCompat$Builder;->setDescription(Ljava/lang/String;)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroidx/core/app/NotificationChannelCompat$Builder;->build()Landroidx/core/app/NotificationChannelCompat;

    move-result-object v1

    .line 76
    new-instance v2, Landroidx/core/app/NotificationChannelCompat$Builder;

    const-string v4, "swap-channel"

    invoke-direct {v2, v4, v3}, Landroidx/core/app/NotificationChannelCompat$Builder;-><init>(Ljava/lang/String;I)V

    sget v4, Lorg/fdroid/fdroid/R$string;->notification_channel_swaps_title:I

    .line 78
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationChannelCompat$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v2

    sget v4, Lorg/fdroid/fdroid/R$string;->notification_channel_swaps_description:I

    .line 79
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationChannelCompat$Builder;->setDescription(Ljava/lang/String;)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Landroidx/core/app/NotificationChannelCompat$Builder;->build()Landroidx/core/app/NotificationChannelCompat;

    move-result-object v2

    .line 82
    new-instance v4, Landroidx/core/app/NotificationChannelCompat$Builder;

    const-string v5, "update-channel"

    invoke-direct {v4, v5, v3}, Landroidx/core/app/NotificationChannelCompat$Builder;-><init>(Ljava/lang/String;I)V

    sget v5, Lorg/fdroid/fdroid/R$string;->notification_channel_updates_title:I

    .line 84
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationChannelCompat$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v4

    sget v5, Lorg/fdroid/fdroid/R$string;->notification_channel_updates_description:I

    .line 85
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationChannelCompat$Builder;->setDescription(Ljava/lang/String;)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v4

    .line 86
    invoke-virtual {v4}, Landroidx/core/app/NotificationChannelCompat$Builder;->build()Landroidx/core/app/NotificationChannelCompat;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Landroidx/core/app/NotificationChannelCompat;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    aput-object v4, v5, v3

    .line 88
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationManagerCompat;->createNotificationChannelsCompat(Ljava/util/List;)V

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "org.fdroid.fdroid.installer.appstatus.listchange"

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "org.fdroid.fdroid.installer.appstatus.appchange.add"

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "org.fdroid.fdroid.installer.appstatus.appchange.change"

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "org.fdroid.fdroid.installer.appstatus.appchange.remove"

    .line 95
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    new-instance v1, Lorg/fdroid/fdroid/NotificationHelper$1;

    invoke-direct {v1, p0}, Lorg/fdroid/fdroid/NotificationHelper$1;-><init>(Lorg/fdroid/fdroid/NotificationHelper;)V

    .line 145
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private createInstalledNotification(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)Landroid/app/Notification;
    .locals 5

    .line 440
    iget-object v0, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->app:Lorg/fdroid/fdroid/data/App;

    .line 442
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    const-string v3, "install-channel"

    invoke-direct {v1, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 444
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    sget v3, Lorg/fdroid/fdroid/R$drawable;->ic_notification:I

    .line 445
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v3, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    sget v4, Lorg/fdroid/fdroid/R$color;->fdroid_blue:I

    .line 446
    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v0, v0, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    .line 447
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    sget v3, Lorg/fdroid/fdroid/R$string;->notification_content_single_installed:I

    .line 448
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 449
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, -0x1

    .line 450
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->intent:Landroid/app/PendingIntent;

    .line 451
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 453
    invoke-direct {p0}, Lorg/fdroid/fdroid/NotificationHelper;->useStackedNotifications()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "installed"

    .line 454
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 457
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.fdroid.fdroid.installer.notifications.installed.cleared"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "org.fdroid.fdroid.net.Downloader.extra.CANONICAL_URL"

    .line 458
    invoke-virtual {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    const-class v3, Lorg/fdroid/fdroid/NotificationBroadcastReceiver;

    .line 459
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v2, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0xc000000

    .line 460
    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 462
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v1, 0x2

    .line 464
    invoke-virtual {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/fdroid/fdroid/NotificationHelper;->loadLargeIconForEntry(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;Landroidx/core/app/NotificationCompat$Builder;ILjava/lang/String;)V

    .line 465
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method private createInstalledSummaryNotification(Ljava/util/ArrayList;)Landroid/app/Notification;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;",
            ">;)",
            "Landroid/app/Notification;"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    .line 469
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$plurals;->notification_summary_installed:I

    .line 470
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 469
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 473
    new-instance v2, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v2}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 474
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move v4, v6

    :goto_0
    const/16 v5, 0xa

    if-ge v4, v5, :cond_1

    .line 476
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 477
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    .line 478
    iget-object v5, v5, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->app:Lorg/fdroid/fdroid/data/App;

    .line 479
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_0

    const-string v7, ", "

    .line 480
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    :cond_0
    iget-object v5, v5, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 484
    :cond_1
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 485
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v5, :cond_2

    .line 486
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v5

    iget-object v4, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    .line 487
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lorg/fdroid/fdroid/R$plurals;->notification_summary_more:I

    new-array v7, v3, [Ljava/lang/Object;

    .line 488
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    .line 487
    invoke-virtual {v4, v5, p1, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 492
    :cond_2
    new-instance p1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    const-class v4, Lorg/fdroid/fdroid/views/main/MainActivity;

    invoke-direct {p1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    const/high16 v4, 0xc000000

    .line 493
    invoke-static {v2, v6, p1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 496
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v5, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    const-string v7, "install-channel"

    invoke-direct {v2, v5, v7}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 498
    invoke-direct {p0}, Lorg/fdroid/fdroid/NotificationHelper;->useStackedNotifications()Z

    move-result v5

    xor-int/2addr v5, v3

    invoke-virtual {v2, v5}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    sget v5, Lorg/fdroid/fdroid/R$drawable;->ic_notification:I

    .line 499
    invoke-virtual {v2, v5}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v5, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    sget v7, Lorg/fdroid/fdroid/R$color;->fdroid_blue:I

    .line 500
    invoke-static {v5, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 501
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 502
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 503
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 504
    invoke-virtual {p1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v0, -0x1

    .line 505
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 506
    invoke-direct {p0}, Lorg/fdroid/fdroid/NotificationHelper;->useStackedNotifications()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "installed"

    .line 507
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 508
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 510
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.fdroid.fdroid.installer.notifications.allinstalled.cleared"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    const-class v2, Lorg/fdroid/fdroid/NotificationBroadcastReceiver;

    .line 511
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    .line 512
    invoke-static {v1, v6, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 514
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 515
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method private createNotification(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)V
    .locals 5

    iget-object v0, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 185
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 189
    :cond_0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/NotificationHelper;->shouldIgnoreEntry(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/fdroid/fdroid/NotificationHelper;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 190
    invoke-virtual {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroidx/core/app/NotificationManagerCompat;->cancel(Ljava/lang/String;I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/NotificationHelper;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 191
    invoke-virtual {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->getCanonicalUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroidx/core/app/NotificationManagerCompat;->cancel(Ljava/lang/String;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/fdroid/fdroid/NotificationHelper;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 195
    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->hideAllNotifications()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 200
    :cond_2
    iget-object v0, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->status:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    sget-object v3, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->Installed:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    if-ne v0, v3, :cond_4

    .line 201
    invoke-direct {p0}, Lorg/fdroid/fdroid/NotificationHelper;->useStackedNotifications()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/NotificationHelper;->createInstalledNotification(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)Landroid/app/Notification;

    move-result-object v0

    iget-object v3, p0, Lorg/fdroid/fdroid/NotificationHelper;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 203
    invoke-virtual {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroidx/core/app/NotificationManagerCompat;->cancel(Ljava/lang/String;I)V

    iget-object v2, p0, Lorg/fdroid/fdroid/NotificationHelper;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 204
    invoke-virtual {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->getCanonicalUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/fdroid/fdroid/NotificationHelper;->installed:Ljava/util/ArrayList;

    .line 205
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 206
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/NotificationHelper;->createInstalledNotification(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)Landroid/app/Notification;

    move-result-object v0

    iget-object v3, p0, Lorg/fdroid/fdroid/NotificationHelper;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 207
    invoke-virtual {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->getCanonicalUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1, v2}, Landroidx/core/app/NotificationManagerCompat;->cancel(Ljava/lang/String;I)V

    iget-object p1, p0, Lorg/fdroid/fdroid/NotificationHelper;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    const-string v2, "installed"

    .line 208
    invoke-virtual {p1, v2, v1, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0

    .line 211
    :cond_4
    invoke-direct {p0}, Lorg/fdroid/fdroid/NotificationHelper;->useStackedNotifications()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 212
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/NotificationHelper;->createUpdateNotification(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)Landroid/app/Notification;

    move-result-object v0

    iget-object v3, p0, Lorg/fdroid/fdroid/NotificationHelper;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 213
    invoke-virtual {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroidx/core/app/NotificationManagerCompat;->cancel(Ljava/lang/String;I)V

    iget-object v1, p0, Lorg/fdroid/fdroid/NotificationHelper;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 214
    invoke-virtual {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->getCanonicalUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v2, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/fdroid/fdroid/NotificationHelper;->updates:Ljava/util/ArrayList;

    .line 215
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 216
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/NotificationHelper;->createUpdateNotification(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)Landroid/app/Notification;

    move-result-object v0

    iget-object v3, p0, Lorg/fdroid/fdroid/NotificationHelper;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 217
    invoke-virtual {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->getCanonicalUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1, v1}, Landroidx/core/app/NotificationManagerCompat;->cancel(Ljava/lang/String;I)V

    iget-object p1, p0, Lorg/fdroid/fdroid/NotificationHelper;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    const-string v1, "updates"

    .line 218
    invoke-virtual {p1, v1, v2, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private createSummaryNotifications()V
    .locals 4

    iget-object v0, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 224
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/NotificationHelper;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 227
    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->hideAllNotifications()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/fdroid/fdroid/NotificationHelper;->updates:Ljava/util/ArrayList;

    .line 232
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lorg/fdroid/fdroid/NotificationHelper;->useStackedNotifications()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lorg/fdroid/fdroid/NotificationHelper;->updates:Ljava/util/ArrayList;

    .line 233
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v2, "updates"

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/fdroid/fdroid/NotificationHelper;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 235
    invoke-virtual {v0, v2, v1}, Landroidx/core/app/NotificationManagerCompat;->cancel(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/fdroid/fdroid/NotificationHelper;->updates:Ljava/util/ArrayList;

    .line 237
    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/NotificationHelper;->createUpdateSummaryNotification(Ljava/util/ArrayList;)Landroid/app/Notification;

    move-result-object v0

    iget-object v3, p0, Lorg/fdroid/fdroid/NotificationHelper;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 238
    invoke-virtual {v3, v2, v1, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/fdroid/fdroid/NotificationHelper;->installed:Ljava/util/ArrayList;

    .line 241
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lorg/fdroid/fdroid/NotificationHelper;->useStackedNotifications()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    iget-object v0, p0, Lorg/fdroid/fdroid/NotificationHelper;->installed:Ljava/util/ArrayList;

    .line 242
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    const-string v2, "installed"

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/fdroid/fdroid/NotificationHelper;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 244
    invoke-virtual {v0, v2, v1}, Landroidx/core/app/NotificationManagerCompat;->cancel(Ljava/lang/String;I)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/fdroid/fdroid/NotificationHelper;->installed:Ljava/util/ArrayList;

    .line 246
    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/NotificationHelper;->createInstalledSummaryNotification(Ljava/util/ArrayList;)Landroid/app/Notification;

    move-result-object v0

    iget-object v3, p0, Lorg/fdroid/fdroid/NotificationHelper;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 247
    invoke-virtual {v3, v2, v1, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    :cond_7
    :goto_1
    return-void
.end method

.method private createUpdateNotification(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)Landroid/app/Notification;
    .locals 8

    .line 324
    iget-object v0, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->app:Lorg/fdroid/fdroid/data/App;

    .line 325
    iget-object v1, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->status:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    .line 327
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    const-string v4, "update-channel"

    invoke-direct {v2, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 329
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 330
    invoke-direct {p0, v0, v1}, Lorg/fdroid/fdroid/NotificationHelper;->getSingleItemTitleString(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 331
    invoke-direct {p0, v0, v1}, Lorg/fdroid/fdroid/NotificationHelper;->getSingleItemContentString(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    sget v2, Lorg/fdroid/fdroid/R$drawable;->ic_notification:I

    .line 332
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v2, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    sget v4, Lorg/fdroid/fdroid/R$color;->fdroid_blue:I

    .line 333
    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 334
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, -0x1

    .line 335
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v2, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->intent:Landroid/app/PendingIntent;

    .line 336
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 342
    invoke-direct {p0}, Lorg/fdroid/fdroid/NotificationHelper;->useStackedNotifications()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "updates"

    .line 343
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 348
    :cond_0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/NotificationHelper;->getAction(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 350
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    .line 355
    :cond_1
    sget-object v2, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->Downloading:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    const/16 v4, 0x64

    const/4 v5, 0x0

    if-ne v1, v2, :cond_3

    .line 356
    iget-wide v1, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->progressMax:J

    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-nez v6, :cond_2

    .line 357
    invoke-virtual {v0, v4, v5, v3}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_0

    .line 359
    :cond_2
    invoke-static {v1, v2}, Lorg/fdroid/fdroid/Utils;->bytesToKb(J)I

    move-result v1

    iget-wide v6, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->progressCurrent:J

    .line 360
    invoke-static {v6, v7}, Lorg/fdroid/fdroid/Utils;->bytesToKb(J)I

    move-result v2

    .line 359
    invoke-virtual {v0, v1, v2, v5}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_0

    .line 362
    :cond_3
    sget-object v2, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->Installing:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    if-ne v1, v2, :cond_4

    .line 363
    invoke-virtual {v0, v4, v5, v3}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 366
    :cond_4
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.fdroid.fdroid.installer.notifications.update.cleared"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "org.fdroid.fdroid.net.Downloader.extra.CANONICAL_URL"

    .line 367
    invoke-virtual {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    const-class v4, Lorg/fdroid/fdroid/NotificationBroadcastReceiver;

    .line 368
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v2, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    const/high16 v4, 0xc000000

    .line 369
    invoke-static {v2, v5, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 371
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 372
    invoke-virtual {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v3, v1}, Lorg/fdroid/fdroid/NotificationHelper;->loadLargeIconForEntry(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;Landroidx/core/app/NotificationCompat$Builder;ILjava/lang/String;)V

    .line 373
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method private createUpdateSummaryNotification(Ljava/util/ArrayList;)Landroid/app/Notification;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;",
            ">;)",
            "Landroid/app/Notification;"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    .line 377
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$plurals;->notification_summary_updates:I

    .line 378
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 377
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    new-instance v2, Landroidx/core/app/NotificationCompat$InboxStyle;

    invoke-direct {v2}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    .line 382
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    move v4, v6

    :goto_0
    const/4 v5, 0x5

    if-ge v4, v5, :cond_1

    .line 384
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 385
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    .line 386
    iget-object v7, v5, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->app:Lorg/fdroid/fdroid/data/App;

    .line 387
    iget-object v5, v5, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->status:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    .line 389
    invoke-direct {p0, v7, v5}, Lorg/fdroid/fdroid/NotificationHelper;->getMultiItemContentString(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;)Ljava/lang/String;

    move-result-object v5

    .line 390
    new-instance v8, Landroid/text/SpannableStringBuilder;

    iget-object v9, v7, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    invoke-direct {v8, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 391
    new-instance v9, Landroid/text/style/StyleSpan;

    invoke-direct {v9, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    const/16 v11, 0x11

    invoke-virtual {v8, v9, v6, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const-string v9, " "

    .line 392
    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 393
    invoke-virtual {v8, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 394
    invoke-virtual {v2, v8}, Landroidx/core/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 396
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    const-string v5, ", "

    .line 397
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    :cond_0
    iget-object v5, v7, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 402
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v5, :cond_2

    .line 403
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v5

    iget-object v4, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    .line 404
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lorg/fdroid/fdroid/R$plurals;->notification_summary_more:I

    new-array v7, v3, [Ljava/lang/Object;

    .line 405
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    .line 404
    invoke-virtual {v4, v5, p1, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 409
    :cond_2
    new-instance p1, Landroid/content/Intent;

    iget-object v4, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    const-class v5, Lorg/fdroid/fdroid/views/main/MainActivity;

    invoke-direct {p1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "org.fdroid.fdroid.views.main.MainActivity.VIEW_UPDATES"

    .line 410
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v4, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    const/high16 v5, 0xc000000

    .line 411
    invoke-static {v4, v6, p1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 414
    new-instance v4, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v7, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    const-string v8, "update-channel"

    invoke-direct {v4, v7, v8}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 416
    invoke-direct {p0}, Lorg/fdroid/fdroid/NotificationHelper;->useStackedNotifications()Z

    move-result v7

    xor-int/2addr v7, v3

    invoke-virtual {v4, v7}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    sget v7, Lorg/fdroid/fdroid/R$drawable;->ic_notification:I

    .line 417
    invoke-virtual {v4, v7}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    iget-object v7, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    sget v8, Lorg/fdroid/fdroid/R$color;->fdroid_blue:I

    .line 418
    invoke-static {v7, v8}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 419
    invoke-virtual {v4, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 420
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 421
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 422
    invoke-virtual {p1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v0, -0x1

    .line 423
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 424
    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 426
    invoke-direct {p0}, Lorg/fdroid/fdroid/NotificationHelper;->useStackedNotifications()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "updates"

    .line 427
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 428
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 431
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.fdroid.fdroid.installer.notifications.allupdates.cleared"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    const-class v2, Lorg/fdroid/fdroid/NotificationBroadcastReceiver;

    .line 432
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    .line 433
    invoke-static {v1, v6, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 435
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 436
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method private getAction(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)Landroidx/core/app/NotificationCompat$Action;
    .locals 4

    .line 253
    iget-object v0, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->intent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3

    .line 254
    sget-object v0, Lorg/fdroid/fdroid/NotificationHelper$3;->$SwitchMap$org$fdroid$fdroid$AppUpdateStatusManager$Status:[I

    iget-object v1, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->status:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    new-instance v0, Landroidx/core/app/NotificationCompat$Action;

    sget v1, Lorg/fdroid/fdroid/R$drawable;->ic_file_install:I

    iget-object v2, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    sget v3, Lorg/fdroid/fdroid/R$string;->notification_action_install:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->intent:Landroid/app/PendingIntent;

    invoke-direct {v0, v1, v2, p1}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object v0

    .line 261
    :cond_1
    new-instance v0, Landroidx/core/app/NotificationCompat$Action;

    sget v1, Lorg/fdroid/fdroid/R$drawable;->ic_cancel:I

    iget-object v2, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    sget v3, Lorg/fdroid/fdroid/R$string;->notification_action_cancel:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->intent:Landroid/app/PendingIntent;

    invoke-direct {v0, v1, v2, p1}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object v0

    .line 256
    :cond_2
    new-instance v0, Landroidx/core/app/NotificationCompat$Action;

    sget v1, Lorg/fdroid/fdroid/R$drawable;->ic_file_download:I

    iget-object v2, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    sget v3, Lorg/fdroid/fdroid/R$string;->notification_action_update:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->intent:Landroid/app/PendingIntent;

    invoke-direct {v0, v1, v2, p1}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object v0

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getLargeIconSize()Landroid/graphics/Point;
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    .line 519
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    .line 520
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 521
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method private getMultiItemContentString(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;)Ljava/lang/String;
    .locals 1

    .line 305
    sget-object v0, Lorg/fdroid/fdroid/NotificationHelper$3;->$SwitchMap$org$fdroid$fdroid$AppUpdateStatusManager$Status:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    const-string p1, ""

    return-object p1

    :pswitch_0
    iget-object p1, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    sget p2, Lorg/fdroid/fdroid/R$string;->notification_title_summary_install_error:I

    .line 318
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    sget p2, Lorg/fdroid/fdroid/R$string;->notification_title_summary_installed:I

    .line 316
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    iget-object p2, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    .line 312
    invoke-virtual {p1, p2}, Lorg/fdroid/fdroid/data/App;->isInstalled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lorg/fdroid/fdroid/R$string;->notification_title_summary_ready_to_install_update:I

    goto :goto_0

    :cond_0
    sget p1, Lorg/fdroid/fdroid/R$string;->notification_title_summary_ready_to_install:I

    :goto_0
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    iget-object p1, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    sget p2, Lorg/fdroid/fdroid/R$string;->notification_title_summary_installing:I

    .line 314
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_4
    iget-object p2, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    .line 310
    invoke-virtual {p1, p2}, Lorg/fdroid/fdroid/data/App;->isInstalled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lorg/fdroid/fdroid/R$string;->notification_title_summary_downloading_update:I

    goto :goto_1

    :cond_1
    sget p1, Lorg/fdroid/fdroid/R$string;->notification_title_summary_downloading:I

    :goto_1
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_5
    iget-object p1, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    sget p2, Lorg/fdroid/fdroid/R$string;->notification_title_summary_update_available:I

    .line 307
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSingleItemContentString(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;)Ljava/lang/String;
    .locals 3

    .line 288
    sget-object v0, Lorg/fdroid/fdroid/NotificationHelper$3;->$SwitchMap$org$fdroid$fdroid$AppUpdateStatusManager$Status:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    const-string p1, ""

    return-object p1

    :pswitch_0
    iget-object p1, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    sget p2, Lorg/fdroid/fdroid/R$string;->notification_content_single_installed:I

    .line 299
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object p2, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    sget v2, Lorg/fdroid/fdroid/R$string;->notification_content_single_installing:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 297
    iget-object p1, p1, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    aput-object p1, v1, v0

    invoke-virtual {p2, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    iget-object p2, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    .line 295
    invoke-virtual {p1, p2}, Lorg/fdroid/fdroid/data/App;->isInstalled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lorg/fdroid/fdroid/R$string;->notification_content_single_downloading_update:I

    goto :goto_0

    :cond_0
    sget v2, Lorg/fdroid/fdroid/R$string;->notification_content_single_downloading:I

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    iget-object p1, p1, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    aput-object p1, v1, v0

    invoke-virtual {p2, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 292
    :pswitch_3
    iget-object p1, p1, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getSingleItemTitleString(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;)Ljava/lang/String;
    .locals 1

    .line 271
    sget-object v0, Lorg/fdroid/fdroid/NotificationHelper$3;->$SwitchMap$org$fdroid$fdroid$AppUpdateStatusManager$Status:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    const-string p1, ""

    return-object p1

    :pswitch_0
    iget-object p1, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    sget p2, Lorg/fdroid/fdroid/R$string;->notification_title_single_install_error:I

    .line 282
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object p2, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    .line 280
    invoke-virtual {p1, p2}, Lorg/fdroid/fdroid/data/App;->isInstalled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lorg/fdroid/fdroid/R$string;->notification_title_single_ready_to_install_update:I

    goto :goto_0

    :cond_0
    sget p1, Lorg/fdroid/fdroid/R$string;->notification_title_single_ready_to_install:I

    :goto_0
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 278
    :pswitch_2
    iget-object p1, p1, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    return-object p1

    :pswitch_3
    iget-object p1, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    sget p2, Lorg/fdroid/fdroid/R$string;->notification_title_single_update_available:I

    .line 273
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private loadLargeIconForEntry(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;Landroidx/core/app/NotificationCompat$Builder;ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    .line 528
    iget-object p1, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->app:Lorg/fdroid/fdroid/data/App;

    iget-wide v1, p1, Lorg/fdroid/fdroid/data/App;->repoId:J

    iget-object p1, p1, Lorg/fdroid/fdroid/data/App;->iconFile:Lorg/fdroid/index/v2/FileV2;

    invoke-static {v0, v1, v2, p1}, Lorg/fdroid/fdroid/data/App;->loadBitmapWithGlide(Landroid/content/Context;JLorg/fdroid/IndexFile;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget v0, Lorg/fdroid/fdroid/R$drawable;->ic_notification_download:I

    .line 529
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->fallback(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    sget v0, Lorg/fdroid/fdroid/R$drawable;->ic_notification_download:I

    .line 530
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    new-instance v0, Lorg/fdroid/fdroid/NotificationHelper$2;

    invoke-direct {v0, p0, p2, p4, p3}, Lorg/fdroid/fdroid/NotificationHelper$2;-><init>(Lorg/fdroid/fdroid/NotificationHelper;Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;I)V

    .line 531
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method private shouldIgnoreEntry(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)Z
    .locals 3

    .line 177
    iget-object v0, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->status:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    sget-object v1, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->DownloadInterrupted:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 178
    :cond_0
    sget-object v1, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->Downloading:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->ReadyToInstall:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->InstallError:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object p1, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->app:Lorg/fdroid/fdroid/data/App;

    iget-object p1, p1, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    .line 181
    invoke-static {p1}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->isAppVisible(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private updateStatusLists()V
    .locals 4

    iget-object v0, p0, Lorg/fdroid/fdroid/NotificationHelper;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 157
    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/NotificationHelper;->updates:Ljava/util/ArrayList;

    .line 161
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/fdroid/fdroid/NotificationHelper;->installed:Ljava/util/ArrayList;

    .line 162
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/fdroid/fdroid/NotificationHelper;->context:Landroid/content/Context;

    .line 164
    invoke-static {v0}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getInstance(Landroid/content/Context;)Lorg/fdroid/fdroid/AppUpdateStatusManager;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getAll()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    .line 166
    iget-object v2, v1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->status:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    sget-object v3, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->Installed:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/fdroid/fdroid/NotificationHelper;->installed:Ljava/util/ArrayList;

    .line 167
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 168
    :cond_2
    invoke-direct {p0, v1}, Lorg/fdroid/fdroid/NotificationHelper;->shouldIgnoreEntry(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/fdroid/fdroid/NotificationHelper;->updates:Ljava/util/ArrayList;

    .line 169
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private useStackedNotifications()Z
    .locals 2

    .line 0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
