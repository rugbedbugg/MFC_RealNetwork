.class public final synthetic Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Supplier;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/database/AppPrefs;

.field public final synthetic f$1:Lorg/fdroid/database/AppPrefsDao;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/database/AppPrefs;Lorg/fdroid/database/AppPrefsDao;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$$ExternalSyntheticLambda1;->f$0:Lorg/fdroid/database/AppPrefs;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$$ExternalSyntheticLambda1;->f$1:Lorg/fdroid/database/AppPrefsDao;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$$ExternalSyntheticLambda1;->f$0:Lorg/fdroid/database/AppPrefs;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$$ExternalSyntheticLambda1;->f$1:Lorg/fdroid/database/AppPrefsDao;

    invoke-static {v0, v1}, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController;->$r8$lambda$PRQQbzYWpj_0vTs_CbeEnV0RZpw(Lorg/fdroid/database/AppPrefs;Lorg/fdroid/database/AppPrefsDao;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
