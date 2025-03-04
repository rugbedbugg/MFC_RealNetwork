.class Lorg/fdroid/fdroid/nearby/StartSwapView$PeopleNearbyAdapter;
.super Landroid/widget/ArrayAdapter;
.source "StartSwapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/nearby/StartSwapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PeopleNearbyAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lorg/fdroid/fdroid/nearby/peers/Peer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/nearby/StartSwapView;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/nearby/StartSwapView;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/StartSwapView$PeopleNearbyAdapter;->this$0:Lorg/fdroid/fdroid/nearby/StartSwapView;

    .line 63
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 69
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lorg/fdroid/fdroid/R$layout;->swap_peer_list_item:I

    const/4 v1, 0x0

    .line 70
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 73
    :cond_0
    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/nearby/peers/Peer;

    sget p3, Lorg/fdroid/fdroid/R$id;->peer_name:I

    .line 74
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-interface {p1}, Lorg/fdroid/fdroid/nearby/peers/Peer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p3, Lorg/fdroid/fdroid/R$id;->icon:I

    .line 75
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 76
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1}, Lorg/fdroid/fdroid/nearby/peers/Peer;->getIcon()I

    move-result p1

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method
