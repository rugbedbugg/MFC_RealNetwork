.class Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;
.super Ljava/lang/Object;
.source "FragmentLifecycleCallbacksDispatcher.java"


# instance fields
.field private final mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method


# virtual methods
.method dispatchOnFragmentActivityCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 155
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getParent()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v0

    const/4 v1, 0x1

    .line 159
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentActivityCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 161
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    .line 162
    throw p1

    .line 163
    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method dispatchOnFragmentAttached(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 106
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    iget-object v0, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 107
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getParent()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v0

    const/4 v1, 0x1

    .line 111
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentAttached(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 113
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 114
    throw p1

    .line 115
    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method dispatchOnFragmentCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 138
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getParent()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v0

    const/4 v1, 0x1

    .line 142
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 144
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    .line 145
    throw p1

    .line 146
    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method dispatchOnFragmentDestroyed(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 272
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getParent()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v0

    const/4 v1, 0x1

    .line 276
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentDestroyed(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 278
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 279
    throw p1

    .line 280
    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method dispatchOnFragmentDetached(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 286
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getParent()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v0

    const/4 v1, 0x1

    .line 290
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentDetached(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 292
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 293
    throw p1

    .line 294
    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method dispatchOnFragmentPaused(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 214
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getParent()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v0

    const/4 v1, 0x1

    .line 218
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentPaused(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 220
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 221
    throw p1

    .line 222
    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method dispatchOnFragmentPreAttached(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 91
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    iget-object v0, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 92
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getParent()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v0

    const/4 v1, 0x1

    .line 96
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentPreAttached(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 98
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 99
    throw p1

    .line 100
    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method dispatchOnFragmentPreCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 122
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getParent()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v0

    const/4 v1, 0x1

    .line 126
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentPreCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 128
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    .line 129
    throw p1

    .line 130
    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method dispatchOnFragmentResumed(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 200
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getParent()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v0

    const/4 v1, 0x1

    .line 204
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentResumed(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 206
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 207
    throw p1

    .line 208
    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method dispatchOnFragmentSaveInstanceState(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 243
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getParent()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v0

    const/4 v1, 0x1

    .line 247
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentSaveInstanceState(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 249
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    .line 250
    throw p1

    .line 251
    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method dispatchOnFragmentStarted(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 186
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getParent()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v0

    const/4 v1, 0x1

    .line 190
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentStarted(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 192
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 193
    throw p1

    .line 194
    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method dispatchOnFragmentStopped(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 228
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getParent()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v0

    const/4 v1, 0x1

    .line 232
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentStopped(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 234
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 235
    throw p1

    .line 236
    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method dispatchOnFragmentViewCreated(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 171
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getParent()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v0

    const/4 v1, 0x1

    .line 175
    invoke-virtual {v0, p1, p2, p3, v1}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentViewCreated(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 177
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p4, :cond_1

    .line 178
    throw p1

    .line 179
    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method dispatchOnFragmentViewDestroyed(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 258
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getParent()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v0

    const/4 v1, 0x1

    .line 262
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentViewDestroyed(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 264
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 265
    throw p1

    .line 266
    :cond_1
    throw p1

    :cond_2
    return-void
.end method
