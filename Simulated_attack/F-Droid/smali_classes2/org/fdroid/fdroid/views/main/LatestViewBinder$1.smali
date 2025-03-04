.class Lorg/fdroid/fdroid/views/main/LatestViewBinder$1;
.super Ljava/lang/Object;
.source "LatestViewBinder.java"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/main/LatestViewBinder;-><init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/views/main/LatestViewBinder;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/views/main/LatestViewBinder;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder$1;->this$0:Lorg/fdroid/fdroid/views/main/LatestViewBinder;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 58
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object p1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder$1;->this$0:Lorg/fdroid/fdroid/views/main/LatestViewBinder;

    invoke-virtual {p1, v0}, Lorg/fdroid/fdroid/Preferences;->registerAppsRequiringAntiFeaturesChangeListener(Lorg/fdroid/fdroid/Preferences$ChangeListener;)V

    .line 59
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object p1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder$1;->this$0:Lorg/fdroid/fdroid/views/main/LatestViewBinder;

    invoke-virtual {p1, v0}, Lorg/fdroid/fdroid/Preferences;->registerShowIncompatibleListener(Lorg/fdroid/fdroid/Preferences$ChangeListener;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 64
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object p1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder$1;->this$0:Lorg/fdroid/fdroid/views/main/LatestViewBinder;

    invoke-virtual {p1, v0}, Lorg/fdroid/fdroid/Preferences;->unregisterAppsRequiringAntiFeaturesChangeListener(Lorg/fdroid/fdroid/Preferences$ChangeListener;)V

    .line 65
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object p1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder$1;->this$0:Lorg/fdroid/fdroid/views/main/LatestViewBinder;

    invoke-virtual {p1, v0}, Lorg/fdroid/fdroid/Preferences;->unregisterShowIncompatibleListener(Lorg/fdroid/fdroid/Preferences$ChangeListener;)V

    return-void
.end method

.method public bridge synthetic onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onPause(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public bridge synthetic onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onResume(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public bridge synthetic onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onStart(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public bridge synthetic onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onStop(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method
