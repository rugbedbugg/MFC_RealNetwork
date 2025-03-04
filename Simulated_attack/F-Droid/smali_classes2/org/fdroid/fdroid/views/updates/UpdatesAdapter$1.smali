.class Lorg/fdroid/fdroid/views/updates/UpdatesAdapter$1;
.super Landroid/content/BroadcastReceiver;
.source "UpdatesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter$1;->this$0:Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;

    .line 292
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 298
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "org.fdroid.fdroid.installer.appstatus.appchange.remove"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "org.fdroid.fdroid.installer.appstatus.appchange.change"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "org.fdroid.fdroid.installer.appstatus.appchange.add"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "org.fdroid.fdroid.installer.appstatus.listchange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter$1;->this$0:Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;

    .line 314
    invoke-static {p1}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->-$$Nest$monAppStatusRemoved(Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;)V

    goto :goto_1

    :pswitch_1
    const-string p1, "isstatusupdate"

    .line 300
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter$1;->this$0:Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;

    .line 301
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->refreshItems()V

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter$1;->this$0:Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;

    .line 310
    invoke-static {p1}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->-$$Nest$monAppStatusAdded(Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;)V

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter$1;->this$0:Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;

    const-string v0, "reason"

    .line 306
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->-$$Nest$monManyAppStatusesChanged(Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e531447 -> :sswitch_3
        0x2a604079 -> :sswitch_2
        0x5a911cd8 -> :sswitch_1
        0x740501ac -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
