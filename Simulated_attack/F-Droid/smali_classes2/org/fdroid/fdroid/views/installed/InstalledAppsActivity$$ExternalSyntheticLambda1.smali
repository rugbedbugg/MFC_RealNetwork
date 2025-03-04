.class public final synthetic Lorg/fdroid/fdroid/views/installed/InstalledAppsActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/fdroid/views/installed/InstalledAppsActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/fdroid/views/installed/InstalledAppsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/installed/InstalledAppsActivity$$ExternalSyntheticLambda1;->f$0:Lorg/fdroid/fdroid/views/installed/InstalledAppsActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/installed/InstalledAppsActivity$$ExternalSyntheticLambda1;->f$0:Lorg/fdroid/fdroid/views/installed/InstalledAppsActivity;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lorg/fdroid/fdroid/views/installed/InstalledAppsActivity;->$r8$lambda$EeXSM1XJ2M_4CwU9eJ6WfQCl1qs(Lorg/fdroid/fdroid/views/installed/InstalledAppsActivity;Ljava/util/List;)V

    return-void
.end method
