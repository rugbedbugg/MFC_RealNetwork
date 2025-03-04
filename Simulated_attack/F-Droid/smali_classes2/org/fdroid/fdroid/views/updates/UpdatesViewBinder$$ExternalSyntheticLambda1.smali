.class public final synthetic Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder$$ExternalSyntheticLambda1;->f$0:Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder$$ExternalSyntheticLambda1;->f$0:Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;->$r8$lambda$93iwpLTTVmra16y5h1L1GcDW16w(Lorg/fdroid/fdroid/views/updates/UpdatesViewBinder;Z)V

    return-void
.end method
