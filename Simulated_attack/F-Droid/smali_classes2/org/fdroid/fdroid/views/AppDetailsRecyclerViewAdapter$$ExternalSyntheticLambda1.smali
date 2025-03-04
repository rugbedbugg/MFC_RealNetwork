.class public final synthetic Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$$ExternalSyntheticLambda1;->f$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$$ExternalSyntheticLambda1;->f$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->$r8$lambda$2CozllMADleKmc9GKUknOEBqex0(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
