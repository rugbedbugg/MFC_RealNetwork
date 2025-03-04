.class Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$SwapDebug$1;
.super Ljava/util/TimerTask;
.source "SwapWorkflowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$SwapDebug;->logStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$SwapDebug;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$SwapDebug;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$SwapDebug$1;->this$1:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$SwapDebug;

    .line 942
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 945
    new-instance v0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$SwapDebug;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$SwapDebug$1;->this$1:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$SwapDebug;

    iget-object v1, v1, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$SwapDebug;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    invoke-direct {v0, v1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$SwapDebug;-><init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V

    invoke-virtual {v0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$SwapDebug;->logStatus()V

    return-void
.end method
