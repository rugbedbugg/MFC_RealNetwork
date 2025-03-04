.class public final synthetic Lorg/fdroid/fdroid/views/repos/ManageReposActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/fdroid/views/repos/ManageReposActivity;

.field public final synthetic f$1:Lorg/fdroid/database/Repository;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/fdroid/views/repos/ManageReposActivity;Lorg/fdroid/database/Repository;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$$ExternalSyntheticLambda4;->f$0:Lorg/fdroid/fdroid/views/repos/ManageReposActivity;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$$ExternalSyntheticLambda4;->f$1:Lorg/fdroid/database/Repository;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$$ExternalSyntheticLambda4;->f$0:Lorg/fdroid/fdroid/views/repos/ManageReposActivity;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$$ExternalSyntheticLambda4;->f$1:Lorg/fdroid/database/Repository;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;->$r8$lambda$z1djYJzjSPby9258IKVLjWm4Wzw(Lorg/fdroid/fdroid/views/repos/ManageReposActivity;Lorg/fdroid/database/Repository;Ljava/lang/Boolean;)V

    return-void
.end method
