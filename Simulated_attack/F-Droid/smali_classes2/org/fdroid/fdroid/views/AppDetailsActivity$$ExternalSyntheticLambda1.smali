.class public final synthetic Lorg/fdroid/fdroid/views/AppDetailsActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/fdroid/views/AppDetailsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$$ExternalSyntheticLambda1;->f$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$$ExternalSyntheticLambda1;->f$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

    check-cast p1, Lorg/fdroid/database/App;

    invoke-static {v0, p1}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->$r8$lambda$S4W0GBCKQidy1orslHkhTAOhi90(Lorg/fdroid/fdroid/views/AppDetailsActivity;Lorg/fdroid/database/App;)V

    return-void
.end method
