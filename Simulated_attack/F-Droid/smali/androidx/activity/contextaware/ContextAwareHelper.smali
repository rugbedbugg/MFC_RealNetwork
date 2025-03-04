.class public final Landroidx/activity/contextaware/ContextAwareHelper;
.super Ljava/lang/Object;
.source "ContextAwareHelper.kt"


# instance fields
.field private volatile context:Landroid/content/Context;

.field private final listeners:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Landroidx/activity/contextaware/ContextAwareHelper;->listeners:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final addOnContextAvailableListener(Landroidx/activity/contextaware/OnContextAvailableListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/activity/contextaware/ContextAwareHelper;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {p1, v0}, Landroidx/activity/contextaware/OnContextAvailableListener;->onContextAvailable(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Landroidx/activity/contextaware/ContextAwareHelper;->listeners:Ljava/util/Set;

    .line 61
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final clearAvailableContext()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/activity/contextaware/ContextAwareHelper;->context:Landroid/content/Context;

    return-void
.end method

.method public final dispatchOnContextAvailable(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/activity/contextaware/ContextAwareHelper;->context:Landroid/content/Context;

    iget-object v0, p0, Landroidx/activity/contextaware/ContextAwareHelper;->listeners:Ljava/util/Set;

    .line 83
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/activity/contextaware/OnContextAvailableListener;

    .line 84
    invoke-interface {v1, p1}, Landroidx/activity/contextaware/OnContextAvailableListener;->onContextAvailable(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final peekAvailableContext()Landroid/content/Context;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/activity/contextaware/ContextAwareHelper;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final removeOnContextAvailableListener(Landroidx/activity/contextaware/OnContextAvailableListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/activity/contextaware/ContextAwareHelper;->listeners:Ljava/util/Set;

    .line 72
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
