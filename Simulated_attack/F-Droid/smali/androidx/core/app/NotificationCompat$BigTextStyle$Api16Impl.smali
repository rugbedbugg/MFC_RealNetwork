.class abstract Landroidx/core/app/NotificationCompat$BigTextStyle$Api16Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$BigTextStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api16Impl"
.end annotation


# direct methods
.method static bigText(Landroid/app/Notification$BigTextStyle;Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    .locals 0

    .line 3704
    invoke-virtual {p0, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p0

    return-object p0
.end method

.method static createBigTextStyle(Landroid/app/Notification$Builder;)Landroid/app/Notification$BigTextStyle;
    .locals 1

    .line 3692
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0, p0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    return-object v0
.end method

.method static setBigContentTitle(Landroid/app/Notification$BigTextStyle;Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    .locals 0

    .line 3698
    invoke-virtual {p0, p1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p0

    return-object p0
.end method

.method static setSummaryText(Landroid/app/Notification$BigTextStyle;Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    .locals 0

    .line 3710
    invoke-virtual {p0, p1}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p0

    return-object p0
.end method
