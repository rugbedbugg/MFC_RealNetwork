.class public final synthetic Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;

.field public final synthetic f$1:Lorg/fdroid/fdroid/data/Apk;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;Lorg/fdroid/fdroid/data/Apk;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder$$ExternalSyntheticLambda2;->f$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder$$ExternalSyntheticLambda2;->f$1:Lorg/fdroid/fdroid/data/Apk;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder$$ExternalSyntheticLambda2;->f$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder$$ExternalSyntheticLambda2;->f$1:Lorg/fdroid/fdroid/data/Apk;

    invoke-static {v0, v1, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->$r8$lambda$IABB7VQ-bmdjBviKGIKU_WKsLsA(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;Lorg/fdroid/fdroid/data/Apk;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
