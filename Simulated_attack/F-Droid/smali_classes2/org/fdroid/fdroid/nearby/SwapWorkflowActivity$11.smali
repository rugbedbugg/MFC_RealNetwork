.class Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$11;
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

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$11;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 1395
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$11;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    const-string v0, "android.intent.extra.TEXT"

    .line 1398
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->-$$Nest$msetUpConnectingProgressText(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$11;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 1400
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->-$$Nest$fgetcontainer(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    sget v0, Lorg/fdroid/fdroid/R$id;->progress_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$11;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 1401
    invoke-static {v0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->-$$Nest$fgetcontainer(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$id;->try_again:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz p1, :cond_4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "localRepoStatusExtra"

    const/4 v2, -0x1

    .line 1406
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1417
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->hide()V

    const/4 p1, 0x0

    .line 1418
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1421
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bogus intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1408
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->show()V

    .line 1409
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1412
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->show()V

    .line 1413
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$11;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 1414
    invoke-virtual {p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->onLocalRepoPrepared()V

    :cond_4
    :goto_0
    return-void
.end method
