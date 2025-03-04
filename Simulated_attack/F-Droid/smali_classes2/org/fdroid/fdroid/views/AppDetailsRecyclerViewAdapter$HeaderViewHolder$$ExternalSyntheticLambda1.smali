.class public final synthetic Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder$$ExternalSyntheticLambda1;->f$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder$$ExternalSyntheticLambda1;->f$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;

    check-cast p1, Lorg/fdroid/database/Repository;

    invoke-static {v0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;->$r8$lambda$-9msBCQLf2cAdXEslArhdZN1eAs(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$HeaderViewHolder;Lorg/fdroid/database/Repository;)V

    return-void
.end method
