.class public final synthetic Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Supplier;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/database/AppPrefs;

.field public final synthetic f$1:Lorg/fdroid/fdroid/data/App;

.field public final synthetic f$2:Lorg/fdroid/database/AppPrefsDao;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/database/AppPrefs;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/database/AppPrefsDao;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$1$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/database/AppPrefs;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$1$$ExternalSyntheticLambda0;->f$1:Lorg/fdroid/fdroid/data/App;

    iput-object p3, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$1$$ExternalSyntheticLambda0;->f$2:Lorg/fdroid/database/AppPrefsDao;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$1$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/database/AppPrefs;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$1$$ExternalSyntheticLambda0;->f$1:Lorg/fdroid/fdroid/data/App;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$1$$ExternalSyntheticLambda0;->f$2:Lorg/fdroid/database/AppPrefsDao;

    invoke-static {v0, v1, v2}, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$1;->$r8$lambda$KlCBY4zoC_m2Qt8SwZDod5naam4(Lorg/fdroid/database/AppPrefs;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/database/AppPrefsDao;)Lorg/fdroid/database/AppPrefs;

    move-result-object v0

    return-object v0
.end method
