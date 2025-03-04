.class public final synthetic Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$$ExternalSyntheticLambda1;->f$0:Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$$ExternalSyntheticLambda1;->f$0:Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;

    check-cast p1, Lorg/fdroid/database/Repository;

    invoke-static {v0, p1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->$r8$lambda$2v-KhVIngF2aSEQZ4jtpOFv4j8g(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;Lorg/fdroid/database/Repository;)V

    return-void
.end method
