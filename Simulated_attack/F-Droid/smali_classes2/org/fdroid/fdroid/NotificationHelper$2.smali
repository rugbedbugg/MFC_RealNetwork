.class Lorg/fdroid/fdroid/NotificationHelper$2;
.super Lcom/bumptech/glide/request/target/CustomTarget;
.source "NotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/NotificationHelper;->loadLargeIconForEntry(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;Landroidx/core/app/NotificationCompat$Builder;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/CustomTarget;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/NotificationHelper;

.field final synthetic val$notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

.field final synthetic val$notificationId:I

.field final synthetic val$notificationTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/NotificationHelper;Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/NotificationHelper$2;->this$0:Lorg/fdroid/fdroid/NotificationHelper;

    iput-object p2, p0, Lorg/fdroid/fdroid/NotificationHelper$2;->val$notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iput-object p3, p0, Lorg/fdroid/fdroid/NotificationHelper$2;->val$notificationTag:Ljava/lang/String;

    iput p4, p0, Lorg/fdroid/fdroid/NotificationHelper$2;->val$notificationId:I

    .line 531
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/NotificationHelper$2;->this$0:Lorg/fdroid/fdroid/NotificationHelper;

    .line 546
    invoke-static {v0}, Lorg/fdroid/fdroid/NotificationHelper;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/NotificationHelper;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/fdroid/fdroid/NotificationHelper$2;->this$0:Lorg/fdroid/fdroid/NotificationHelper;

    .line 549
    invoke-static {v0}, Lorg/fdroid/fdroid/NotificationHelper;->-$$Nest$mgetLargeIconSize(Lorg/fdroid/fdroid/NotificationHelper;)Landroid/graphics/Point;

    move-result-object v0

    .line 550
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 551
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 552
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 553
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/NotificationHelper$2;->val$notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 554
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    iget-object p1, p0, Lorg/fdroid/fdroid/NotificationHelper$2;->val$notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 555
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    iget-object v0, p0, Lorg/fdroid/fdroid/NotificationHelper$2;->this$0:Lorg/fdroid/fdroid/NotificationHelper;

    .line 556
    invoke-static {v0}, Lorg/fdroid/fdroid/NotificationHelper;->-$$Nest$fgetnotificationManager(Lorg/fdroid/fdroid/NotificationHelper;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/NotificationHelper$2;->val$notificationTag:Ljava/lang/String;

    iget v2, p0, Lorg/fdroid/fdroid/NotificationHelper$2;->val$notificationId:I

    invoke-virtual {v0, v1, v2, p1}, Landroidx/core/app/NotificationManagerCompat;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/transition/Transition;",
            ")V"
        }
    .end annotation

    iget-object p2, p0, Lorg/fdroid/fdroid/NotificationHelper$2;->this$0:Lorg/fdroid/fdroid/NotificationHelper;

    .line 534
    invoke-static {p2}, Lorg/fdroid/fdroid/NotificationHelper;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/NotificationHelper;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lorg/fdroid/fdroid/NotificationHelper$2;->val$notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 538
    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    iget-object p1, p0, Lorg/fdroid/fdroid/NotificationHelper$2;->val$notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 539
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    iget-object p2, p0, Lorg/fdroid/fdroid/NotificationHelper$2;->this$0:Lorg/fdroid/fdroid/NotificationHelper;

    .line 540
    invoke-static {p2}, Lorg/fdroid/fdroid/NotificationHelper;->-$$Nest$fgetnotificationManager(Lorg/fdroid/fdroid/NotificationHelper;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p2

    iget-object v0, p0, Lorg/fdroid/fdroid/NotificationHelper$2;->val$notificationTag:Ljava/lang/String;

    iget v1, p0, Lorg/fdroid/fdroid/NotificationHelper$2;->val$notificationId:I

    invoke-virtual {p2, v0, v1, p1}, Landroidx/core/app/NotificationManagerCompat;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    .line 531
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/NotificationHelper$2;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
