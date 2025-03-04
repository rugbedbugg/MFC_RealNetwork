.class Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter$MirrorViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RepoDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MirrorViewHolder"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;

.field view:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter$MirrorViewHolder;->this$1:Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter;

    .line 516
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity$MirrorAdapter$MirrorViewHolder;->view:Landroid/view/View;

    return-void
.end method
