.class Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$1;
.super Ljava/lang/Object;
.source "SwapWorkflowActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
.method public static synthetic $r8$lambda$0aOUuyTQ9evzBAtUo5JtvSgbxl8(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$1;Ljava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$1;->lambda$onServiceConnected$1(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dRxRVz0E1RvJ_C5AuZz6dKv2R_M(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$1;Lorg/fdroid/index/v1/IndexV1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$1;->lambda$onServiceConnected$0(Lorg/fdroid/index/v1/IndexV1;)V

    return-void
.end method

.method constructor <init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$1;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onServiceConnected$0(Lorg/fdroid/index/v1/IndexV1;)V
    .locals 0

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$1;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 160
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->-$$Nest$monRepoUpdateSuccess(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V

    return-void
.end method

.method private synthetic lambda$onServiceConnected$1(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$1;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 162
    invoke-static {v0, p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->-$$Nest$monRepoUpdateError(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$1;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 158
    check-cast p2, Lorg/fdroid/fdroid/nearby/SwapService$Binder;

    invoke-virtual {p2}, Lorg/fdroid/fdroid/nearby/SwapService$Binder;->getService()Lorg/fdroid/fdroid/nearby/SwapService;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->-$$Nest$fputservice(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;Lorg/fdroid/fdroid/nearby/SwapService;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$1;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 159
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->-$$Nest$fgetservice(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)Lorg/fdroid/fdroid/nearby/SwapService;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fdroid/fdroid/nearby/SwapService;->getIndex()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object p2, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$1;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    new-instance v0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$1$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$1;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$1;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 161
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->-$$Nest$fgetservice(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)Lorg/fdroid/fdroid/nearby/SwapService;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fdroid/fdroid/nearby/SwapService;->getIndexError()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object p2, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$1;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    new-instance v0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$1$$ExternalSyntheticLambda1;-><init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$1;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$1;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 163
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->-$$Nest$mshowRelevantView(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$1;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 168
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$1;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 169
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->-$$Nest$fgetservice(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)Lorg/fdroid/fdroid/nearby/SwapService;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fdroid/fdroid/nearby/SwapService;->getIndex()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$1;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$1;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 170
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->-$$Nest$fgetservice(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)Lorg/fdroid/fdroid/nearby/SwapService;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fdroid/fdroid/nearby/SwapService;->getIndexError()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$1;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$1;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    const/4 v0, 0x0

    .line 171
    invoke-static {p1, v0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->-$$Nest$fputservice(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;Lorg/fdroid/fdroid/nearby/SwapService;)V

    return-void
.end method
