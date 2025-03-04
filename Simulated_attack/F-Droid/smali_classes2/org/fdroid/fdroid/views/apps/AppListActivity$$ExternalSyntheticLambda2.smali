.class public final synthetic Lorg/fdroid/fdroid/views/apps/AppListActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/fdroid/views/apps/AppListActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/fdroid/views/apps/AppListActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity$$ExternalSyntheticLambda2;->f$0:Lorg/fdroid/fdroid/views/apps/AppListActivity;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListActivity$$ExternalSyntheticLambda2;->f$0:Lorg/fdroid/fdroid/views/apps/AppListActivity;

    check-cast p1, Lorg/fdroid/database/AppListItem;

    check-cast p2, Lorg/fdroid/database/AppListItem;

    invoke-static {v0, p1, p2}, Lorg/fdroid/fdroid/views/apps/AppListActivity;->$r8$lambda$D8B8ofQNnnEm_2nYWZuLqx85pXI(Lorg/fdroid/fdroid/views/apps/AppListActivity;Lorg/fdroid/database/AppListItem;Lorg/fdroid/database/AppListItem;)I

    move-result p1

    return p1
.end method
