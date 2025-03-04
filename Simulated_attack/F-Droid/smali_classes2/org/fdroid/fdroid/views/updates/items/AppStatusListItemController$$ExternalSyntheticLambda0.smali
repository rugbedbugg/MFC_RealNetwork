.class public final synthetic Lorg/fdroid/fdroid/views/updates/items/AppStatusListItemController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/fdroid/AppUpdateStatusManager;

.field public final synthetic f$1:Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

.field public final synthetic f$2:Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/fdroid/AppUpdateStatusManager;Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/updates/items/AppStatusListItemController$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/fdroid/AppUpdateStatusManager;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/updates/items/AppStatusListItemController$$ExternalSyntheticLambda0;->f$1:Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    iput-object p3, p0, Lorg/fdroid/fdroid/views/updates/items/AppStatusListItemController$$ExternalSyntheticLambda0;->f$2:Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/items/AppStatusListItemController$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/fdroid/AppUpdateStatusManager;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/updates/items/AppStatusListItemController$$ExternalSyntheticLambda0;->f$1:Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/updates/items/AppStatusListItemController$$ExternalSyntheticLambda0;->f$2:Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;

    invoke-static {v0, v1, v2, p1}, Lorg/fdroid/fdroid/views/updates/items/AppStatusListItemController;->$r8$lambda$iv8xZsfBcyopfTcGbvy8VVaASRU(Lorg/fdroid/fdroid/AppUpdateStatusManager;Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;Landroid/view/View;)V

    return-void
.end method
