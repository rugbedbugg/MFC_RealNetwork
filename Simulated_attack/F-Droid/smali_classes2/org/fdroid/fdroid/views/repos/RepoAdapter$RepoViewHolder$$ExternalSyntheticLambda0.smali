.class public final synthetic Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;

.field public final synthetic f$1:Lorg/fdroid/database/Repository;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;Lorg/fdroid/database/Repository;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder$$ExternalSyntheticLambda0;->f$1:Lorg/fdroid/database/Repository;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder$$ExternalSyntheticLambda0;->f$1:Lorg/fdroid/database/Repository;

    invoke-static {v0, v1, p1}, Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;->$r8$lambda$m8hB8_Jf0xqdi7Ip57y7Hu2dSks(Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoViewHolder;Lorg/fdroid/database/Repository;Landroid/view/View;)V

    return-void
.end method
