.class Lcom/bumptech/glide/manager/FirstFrameWaiter$1$1;
.super Ljava/lang/Object;
.source "FirstFrameWaiter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/manager/FirstFrameWaiter$1;->onDraw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bumptech/glide/manager/FirstFrameWaiter$1;

.field final synthetic val$listener:Landroid/view/ViewTreeObserver$OnDrawListener;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/manager/FirstFrameWaiter$1;Landroid/view/ViewTreeObserver$OnDrawListener;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/manager/FirstFrameWaiter$1$1;->this$1:Lcom/bumptech/glide/manager/FirstFrameWaiter$1;

    iput-object p2, p0, Lcom/bumptech/glide/manager/FirstFrameWaiter$1$1;->val$listener:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 49
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->getInstance()Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->unblockHardwareBitmaps()V

    iget-object v0, p0, Lcom/bumptech/glide/manager/FirstFrameWaiter$1$1;->this$1:Lcom/bumptech/glide/manager/FirstFrameWaiter$1;

    .line 50
    iget-object v0, v0, Lcom/bumptech/glide/manager/FirstFrameWaiter$1;->this$0:Lcom/bumptech/glide/manager/FirstFrameWaiter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bumptech/glide/manager/FirstFrameWaiter;->isFirstFrameSet:Z

    iget-object v0, p0, Lcom/bumptech/glide/manager/FirstFrameWaiter$1$1;->this$1:Lcom/bumptech/glide/manager/FirstFrameWaiter$1;

    .line 51
    iget-object v0, v0, Lcom/bumptech/glide/manager/FirstFrameWaiter$1;->val$view:Landroid/view/View;

    iget-object v1, p0, Lcom/bumptech/glide/manager/FirstFrameWaiter$1$1;->val$listener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-static {v0, v1}, Lcom/bumptech/glide/manager/FirstFrameWaiter;->removeListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnDrawListener;)V

    iget-object v0, p0, Lcom/bumptech/glide/manager/FirstFrameWaiter$1$1;->this$1:Lcom/bumptech/glide/manager/FirstFrameWaiter$1;

    .line 52
    iget-object v0, v0, Lcom/bumptech/glide/manager/FirstFrameWaiter$1;->this$0:Lcom/bumptech/glide/manager/FirstFrameWaiter;

    iget-object v0, v0, Lcom/bumptech/glide/manager/FirstFrameWaiter;->pendingActivities:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method
