.class public final Lorg/fdroid/fdroid/NotificationManager;
.super Ljava/lang/Object;
.source "NotificationManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\t\u001a\u00020\nJ#\u0010\u000b\u001a\u00020\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0002\u0010\u0011J)\u0010\u0012\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0002\u0010\u0015R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lorg/fdroid/fdroid/NotificationManager;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "lastRepoUpdateNotification",
        "",
        "nm",
        "Landroid/app/NotificationManager;",
        "cancelUpdateRepoNotification",
        "",
        "getRepoUpdateNotification",
        "Landroidx/core/app/NotificationCompat$Builder;",
        "msg",
        "",
        "progress",
        "",
        "(Ljava/lang/String;Ljava/lang/Integer;)Landroidx/core/app/NotificationCompat$Builder;",
        "showUpdateRepoNotification",
        "throttle",
        "",
        "(Ljava/lang/String;ZLjava/lang/Integer;)V",
        "app_fullRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final context:Landroid/content/Context;

.field private lastRepoUpdateNotification:J

.field private final nm:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/NotificationManager;->context:Landroid/content/Context;

    const-class v0, Landroid/app/NotificationManager;

    .line 16
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/fdroid/fdroid/NotificationManager;->nm:Landroid/app/NotificationManager;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No NotificationManager"

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic getRepoUpdateNotification$default(Lorg/fdroid/fdroid/NotificationManager;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 32
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/NotificationManager;->getRepoUpdateNotification(Ljava/lang/String;Ljava/lang/Integer;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic showUpdateRepoNotification$default(Lorg/fdroid/fdroid/NotificationManager;Ljava/lang/String;ZLjava/lang/Integer;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 20
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/fdroid/fdroid/NotificationManager;->showUpdateRepoNotification(Ljava/lang/String;ZLjava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final cancelUpdateRepoNotification()V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/NotificationManager;->nm:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public final getRepoUpdateNotification(Ljava/lang/String;Ljava/lang/Integer;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 3

    .line 35
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lorg/fdroid/fdroid/NotificationManager;->context:Landroid/content/Context;

    const-string v2, "update-channel"

    invoke-direct {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v1, Lorg/fdroid/fdroid/R$drawable;->ic_refresh:I

    .line 36
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, "service"

    .line 37
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/NotificationManager;->context:Landroid/content/Context;

    sget v2, Lorg/fdroid/fdroid/R$string;->banner_updating_repositories:I

    .line 38
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 40
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 41
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const/16 p2, 0x64

    invoke-virtual {p1, p2, v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const-string p2, "setProgress(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final showUpdateRepoNotification(Ljava/lang/String;ZLjava/lang/Integer;)V
    .locals 4

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/fdroid/fdroid/NotificationManager;->lastRepoUpdateNotification:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long p2, v0, v2

    if-lez p2, :cond_1

    .line 22
    :cond_0
    invoke-virtual {p0, p1, p3}, Lorg/fdroid/fdroid/NotificationManager;->getRepoUpdateNotification(Ljava/lang/String;Ljava/lang/Integer;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lorg/fdroid/fdroid/NotificationManager;->lastRepoUpdateNotification:J

    iget-object p2, p0, Lorg/fdroid/fdroid/NotificationManager;->nm:Landroid/app/NotificationManager;

    const/4 p3, 0x0

    .line 24
    invoke-virtual {p2, p3, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_1
    return-void
.end method
