.class Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter$ScreenShotViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ScreenShotsRecyclerViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenShotViewHolder"
.end annotation


# instance fields
.field final image:Landroid/widget/ImageView;

.field final synthetic this$0:Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter$ScreenShotViewHolder;->this$0:Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter;

    .line 72
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget p1, Lorg/fdroid/fdroid/R$id;->image:I

    .line 73
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter$ScreenShotViewHolder;->image:Landroid/widget/ImageView;

    .line 74
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter$ScreenShotViewHolder;->this$0:Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter;

    .line 79
    invoke-static {p1}, Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter;->-$$Nest$fgetlistener(Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter;)Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter$Listener;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/fdroid/fdroid/views/ScreenShotsRecyclerViewAdapter$Listener;->onScreenshotClick(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " screenshot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
