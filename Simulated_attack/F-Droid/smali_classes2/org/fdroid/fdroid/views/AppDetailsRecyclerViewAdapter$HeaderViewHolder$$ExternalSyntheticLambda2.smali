.class public final synthetic Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder$$ExternalSyntheticLambda2;->f$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder$$ExternalSyntheticLambda2;->f$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;->onPreferredRepoChanged(J)V

    return-void
.end method
