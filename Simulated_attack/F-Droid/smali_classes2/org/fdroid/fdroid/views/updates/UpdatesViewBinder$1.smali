.class Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "UpdatesViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder$1;->this$0:Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;

    .line 87
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder$1;->this$0:Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;

    .line 90
    invoke-static {v0}, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;->-$$Nest$mupdateEmptyState(Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    iget-object p1, p0, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder$1;->this$0:Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;

    .line 95
    invoke-static {p1}, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;->-$$Nest$mupdateEmptyState(Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    iget-object p1, p0, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder$1;->this$0:Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;

    .line 100
    invoke-static {p1}, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;->-$$Nest$mupdateEmptyState(Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;)V

    return-void
.end method
