.class Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$10;
.super Ljava/lang/Object;
.source "SwapWorkflowActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->setUpConfirmReceive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final config:Lorg/fdroid/fdroid/nearby/NewRepoConfig;

.field final synthetic this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$10;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 1369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1371
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->-$$Nest$fgetconfirmSwapConfig(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)Lorg/fdroid/fdroid/nearby/NewRepoConfig;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$10;->config:Lorg/fdroid/fdroid/nearby/NewRepoConfig;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$10;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$10;->config:Lorg/fdroid/fdroid/nearby/NewRepoConfig;

    .line 1375
    invoke-virtual {p1, v0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->swapWith(Lorg/fdroid/fdroid/nearby/NewRepoConfig;)V

    return-void
.end method
