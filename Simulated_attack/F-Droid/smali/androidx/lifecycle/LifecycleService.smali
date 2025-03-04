.class public abstract Landroidx/lifecycle/LifecycleService;
.super Landroid/app/Service;
.source "LifecycleService.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# instance fields
.field private final dispatcher:Landroidx/lifecycle/ServiceLifecycleDispatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    new-instance v0, Landroidx/lifecycle/ServiceLifecycleDispatcher;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ServiceLifecycleDispatcher;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Landroidx/lifecycle/LifecycleService;->dispatcher:Landroidx/lifecycle/ServiceLifecycleDispatcher;

    return-void
.end method


# virtual methods
.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/LifecycleService;->dispatcher:Landroidx/lifecycle/ServiceLifecycleDispatcher;

    .line 66
    invoke-virtual {v0}, Landroidx/lifecycle/ServiceLifecycleDispatcher;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/lifecycle/LifecycleService;->dispatcher:Landroidx/lifecycle/ServiceLifecycleDispatcher;

    .line 38
    invoke-virtual {p1}, Landroidx/lifecycle/ServiceLifecycleDispatcher;->onServicePreSuperOnBind()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/LifecycleService;->dispatcher:Landroidx/lifecycle/ServiceLifecycleDispatcher;

    .line 32
    invoke-virtual {v0}, Landroidx/lifecycle/ServiceLifecycleDispatcher;->onServicePreSuperOnCreate()V

    .line 33
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/LifecycleService;->dispatcher:Landroidx/lifecycle/ServiceLifecycleDispatcher;

    .line 61
    invoke-virtual {v0}, Landroidx/lifecycle/ServiceLifecycleDispatcher;->onServicePreSuperOnDestroy()V

    .line 62
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/LifecycleService;->dispatcher:Landroidx/lifecycle/ServiceLifecycleDispatcher;

    .line 46
    invoke-virtual {v0}, Landroidx/lifecycle/ServiceLifecycleDispatcher;->onServicePreSuperOnStart()V

    .line 47
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 56
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
