.class Lorg/fdroid/fdroid/views/StatusBanner$1;
.super Ljava/lang/Object;
.source "StatusBanner.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/views/StatusBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/views/StatusBanner;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/views/StatusBanner;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/views/StatusBanner$1;->this$0:Lorg/fdroid/fdroid/views/StatusBanner;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/StatusBanner$1;->this$0:Lorg/fdroid/fdroid/views/StatusBanner;

    .line 181
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lorg/fdroid/fdroid/views/StatusBanner;->-$$Nest$fputisUpdatingRepos(Lorg/fdroid/fdroid/views/StatusBanner;Z)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/StatusBanner$1;->this$0:Lorg/fdroid/fdroid/views/StatusBanner;

    .line 182
    invoke-static {p1}, Lorg/fdroid/fdroid/views/StatusBanner;->-$$Nest$msetBannerTextAndVisibility(Lorg/fdroid/fdroid/views/StatusBanner;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 178
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/views/StatusBanner$1;->onChanged(Ljava/lang/Boolean;)V

    return-void
.end method
