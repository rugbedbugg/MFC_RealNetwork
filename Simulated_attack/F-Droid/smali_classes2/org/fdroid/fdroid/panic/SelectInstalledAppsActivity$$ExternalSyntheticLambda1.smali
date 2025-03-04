.class public final synthetic Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity;

.field public final synthetic f$1:Lorg/fdroid/database/AppListItem;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity;Lorg/fdroid/database/AppListItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity$$ExternalSyntheticLambda1;->f$0:Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity;

    iput-object p2, p0, Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity$$ExternalSyntheticLambda1;->f$1:Lorg/fdroid/database/AppListItem;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity$$ExternalSyntheticLambda1;->f$0:Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity;

    iget-object v1, p0, Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity$$ExternalSyntheticLambda1;->f$1:Lorg/fdroid/database/AppListItem;

    check-cast p1, Lorg/fdroid/database/AppPrefs;

    invoke-static {v0, v1, p1}, Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity;->$r8$lambda$PlpBdgtgcxOomhEqjcEhcnooGd8(Lorg/fdroid/fdroid/panic/SelectInstalledAppsActivity;Lorg/fdroid/database/AppListItem;Lorg/fdroid/database/AppPrefs;)V

    return-void
.end method
