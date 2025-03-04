.class public final synthetic Lorg/fdroid/fdroid/views/repos/ManageReposActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/fdroid/views/repos/ManageReposActivity;

.field public final synthetic f$1:Lorg/fdroid/database/Repository;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/fdroid/views/repos/ManageReposActivity;Lorg/fdroid/database/Repository;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/fdroid/views/repos/ManageReposActivity;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$$ExternalSyntheticLambda0;->f$1:Lorg/fdroid/database/Repository;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/fdroid/views/repos/ManageReposActivity;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$$ExternalSyntheticLambda0;->f$1:Lorg/fdroid/database/Repository;

    invoke-static {v0, v1, p1, p2}, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;->$r8$lambda$kYtIJUfGWhyJnYXfp4EoJx3EhTE(Lorg/fdroid/fdroid/views/repos/ManageReposActivity;Lorg/fdroid/database/Repository;Landroid/content/DialogInterface;I)V

    return-void
.end method
