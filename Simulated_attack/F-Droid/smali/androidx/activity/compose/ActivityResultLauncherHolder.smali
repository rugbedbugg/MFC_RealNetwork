.class public final Landroidx/activity/compose/ActivityResultLauncherHolder;
.super Ljava/lang/Object;
.source "ActivityResultRegistry.kt"


# instance fields
.field private launcher:Landroidx/activity/result/ActivityResultLauncher;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V
    .locals 1

    iget-object v0, p0, Landroidx/activity/compose/ActivityResultLauncherHolder;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0, p1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Launcher has not been initialized"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setLauncher(Landroidx/activity/result/ActivityResultLauncher;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/activity/compose/ActivityResultLauncherHolder;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public final unregister()V
    .locals 2

    iget-object v0, p0, Landroidx/activity/compose/ActivityResultLauncherHolder;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Launcher has not been initialized"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
