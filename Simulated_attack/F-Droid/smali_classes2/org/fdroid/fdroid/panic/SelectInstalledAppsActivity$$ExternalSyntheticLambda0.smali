.class public final synthetic Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity;->onLoadFinished(Ljava/util/List;)V

    return-void
.end method
