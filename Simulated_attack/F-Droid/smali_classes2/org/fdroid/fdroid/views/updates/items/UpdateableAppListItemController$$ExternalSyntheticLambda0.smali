.class public final synthetic Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController;

.field public final synthetic f$1:Lorg/fdroid/database/AppPrefs;

.field public final synthetic f$2:Lorg/fdroid/database/AppPrefsDao;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController;Lorg/fdroid/database/AppPrefs;Lorg/fdroid/database/AppPrefsDao;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$$ExternalSyntheticLambda0;->f$1:Lorg/fdroid/database/AppPrefs;

    iput-object p3, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$$ExternalSyntheticLambda0;->f$2:Lorg/fdroid/database/AppPrefsDao;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$$ExternalSyntheticLambda0;->f$1:Lorg/fdroid/database/AppPrefs;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$$ExternalSyntheticLambda0;->f$2:Lorg/fdroid/database/AppPrefsDao;

    invoke-static {v0, v1, v2, p1}, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController;->$r8$lambda$7Q4Jl-JqoLCQsmSGtVGxYKnt9wg(Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController;Lorg/fdroid/database/AppPrefs;Lorg/fdroid/database/AppPrefsDao;Landroid/view/View;)V

    return-void
.end method
