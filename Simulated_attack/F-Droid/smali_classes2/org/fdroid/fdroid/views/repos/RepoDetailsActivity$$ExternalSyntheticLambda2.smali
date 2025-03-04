.class public final synthetic Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/SwitchCompat;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$$ExternalSyntheticLambda2;->f$0:Landroidx/appcompat/widget/SwitchCompat;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$$ExternalSyntheticLambda2;->f$0:Landroidx/appcompat/widget/SwitchCompat;

    check-cast p1, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;

    invoke-static {v0, p1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->$r8$lambda$GrBZpnXfy20vvqlWfb6Y1JFO0fc(Landroidx/appcompat/widget/SwitchCompat;Lorg/fdroid/fdroid/views/repos/RepoDetailsState;)V

    return-void
.end method
