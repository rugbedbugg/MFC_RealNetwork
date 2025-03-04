.class public final synthetic Lorg/fdroid/fdroid/views/apps/AppListItemController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Supplier;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/fdroid/views/apps/AppListItemController;

.field public final synthetic f$1:Lorg/fdroid/database/DbUpdateChecker;

.field public final synthetic f$2:Lorg/fdroid/fdroid/data/App;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/fdroid/views/apps/AppListItemController;Lorg/fdroid/database/DbUpdateChecker;Lorg/fdroid/fdroid/data/App;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController$$ExternalSyntheticLambda3;->f$0:Lorg/fdroid/fdroid/views/apps/AppListItemController;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController$$ExternalSyntheticLambda3;->f$1:Lorg/fdroid/database/DbUpdateChecker;

    iput-object p3, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController$$ExternalSyntheticLambda3;->f$2:Lorg/fdroid/fdroid/data/App;

    iput-object p4, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController$$ExternalSyntheticLambda3;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController$$ExternalSyntheticLambda3;->f$0:Lorg/fdroid/fdroid/views/apps/AppListItemController;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController$$ExternalSyntheticLambda3;->f$1:Lorg/fdroid/database/DbUpdateChecker;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController$$ExternalSyntheticLambda3;->f$2:Lorg/fdroid/fdroid/data/App;

    iget-object v3, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController$$ExternalSyntheticLambda3;->f$3:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->$r8$lambda$am_kMBnYziynS-fsu964vsLW4g8(Lorg/fdroid/fdroid/views/apps/AppListItemController;Lorg/fdroid/database/DbUpdateChecker;Lorg/fdroid/fdroid/data/App;Ljava/util/List;)Lorg/fdroid/fdroid/data/Apk;

    move-result-object v0

    return-object v0
.end method
