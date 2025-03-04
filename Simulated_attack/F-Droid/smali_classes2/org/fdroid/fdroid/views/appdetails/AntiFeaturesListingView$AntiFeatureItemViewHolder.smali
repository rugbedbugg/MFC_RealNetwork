.class Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AntiFeaturesListingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AntiFeatureItemViewHolder"
.end annotation


# instance fields
.field private final antiFeatureIcon:Landroid/widget/ImageView;

.field private final antiFeatureReason:Landroid/widget/TextView;

.field private final antiFeatureText:Landroid/widget/TextView;

.field private final entireView:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetantiFeatureIcon(Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;->antiFeatureIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetantiFeatureReason(Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;->antiFeatureReason:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetantiFeatureText(Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;->antiFeatureText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetentireView(Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;->entireView:Landroid/view/View;

    return-object p0
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 128
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;->entireView:Landroid/view/View;

    sget v0, Lorg/fdroid/fdroid/R$id;->anti_feature_icon:I

    .line 130
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;->antiFeatureIcon:Landroid/widget/ImageView;

    sget v0, Lorg/fdroid/fdroid/R$id;->anti_feature_text:I

    .line 131
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;->antiFeatureText:Landroid/widget/TextView;

    sget v0, Lorg/fdroid/fdroid/R$id;->anti_feature_reason:I

    .line 132
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;->antiFeatureReason:Landroid/widget/TextView;

    return-void
.end method
