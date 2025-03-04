.class public final synthetic Lorg/fdroid/fdroid/views/apps/AppListItemController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/fdroid/views/apps/AppListItemController;

.field public final synthetic f$1:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field public final synthetic f$2:Landroid/content/BroadcastReceiver;

.field public final synthetic f$3:Lorg/fdroid/fdroid/data/App;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/fdroid/views/apps/AppListItemController;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Landroid/content/BroadcastReceiver;Lorg/fdroid/fdroid/data/App;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController$$ExternalSyntheticLambda4;->f$0:Lorg/fdroid/fdroid/views/apps/AppListItemController;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController$$ExternalSyntheticLambda4;->f$1:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iput-object p3, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController$$ExternalSyntheticLambda4;->f$2:Landroid/content/BroadcastReceiver;

    iput-object p4, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController$$ExternalSyntheticLambda4;->f$3:Lorg/fdroid/fdroid/data/App;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController$$ExternalSyntheticLambda4;->f$0:Lorg/fdroid/fdroid/views/apps/AppListItemController;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController$$ExternalSyntheticLambda4;->f$1:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController$$ExternalSyntheticLambda4;->f$2:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController$$ExternalSyntheticLambda4;->f$3:Lorg/fdroid/fdroid/data/App;

    check-cast p1, Lorg/fdroid/fdroid/data/Apk;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->$r8$lambda$GAvPcjtqONxVSEdh-haJscI73ts(Lorg/fdroid/fdroid/views/apps/AppListItemController;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Landroid/content/BroadcastReceiver;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V

    return-void
.end method
