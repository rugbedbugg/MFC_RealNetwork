.class Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$7;
.super Landroid/content/BroadcastReceiver;
.source "SwapWorkflowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$7;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 1222
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$7;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 1225
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->-$$Nest$fgetcontainer(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    sget v0, Lorg/fdroid/fdroid/R$id;->list_people_nearby:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    if-eqz p1, :cond_0

    .line 1227
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Landroid/widget/ArrayAdapter;

    const-string v0, "extraBonjourPeer"

    .line 1228
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lorg/fdroid/fdroid/nearby/peers/Peer;

    invoke-virtual {p1, p2}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
