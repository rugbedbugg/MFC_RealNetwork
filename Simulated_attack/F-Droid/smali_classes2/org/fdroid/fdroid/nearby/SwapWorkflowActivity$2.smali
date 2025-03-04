.class Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$2;
.super Ljava/lang/Object;
.source "SwapWorkflowActivity.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->setUpSearchView(Landroid/view/Menu;)V
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

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$2;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$2;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 358
    invoke-static {v0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->-$$Nest$fgetcurrentView(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)Lorg/fdroid/fdroid/nearby/SwapView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/nearby/SwapView;->getCurrentFilterString()Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    return v1

    :cond_1
    if-eqz v0, :cond_2

    .line 363
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$2;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 366
    invoke-static {v0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->-$$Nest$fgetcurrentView(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)Lorg/fdroid/fdroid/nearby/SwapView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/fdroid/fdroid/nearby/SwapView;->setCurrentFilterString(Ljava/lang/String;)V

    return v1
.end method
