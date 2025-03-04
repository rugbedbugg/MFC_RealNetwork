.class public Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "AntiFeaturesListingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$AntiFeatureItemViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AntiFeaturesListingView"


# direct methods
.method static bridge synthetic -$$Nest$smantiFeatureIcon(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView;->antiFeatureIcon(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smgetAntiFeatureDescriptionText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView;->getAntiFeatureDescriptionText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static antiFeatureIcon(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    sget v0, Lorg/fdroid/fdroid/R$string;->antiads_key:I

    .line 167
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget p0, Lorg/fdroid/fdroid/R$drawable;->ic_antifeature_ads:I

    return p0

    :cond_0
    sget v0, Lorg/fdroid/fdroid/R$string;->antitrack_key:I

    .line 169
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget p0, Lorg/fdroid/fdroid/R$drawable;->ic_antifeature_tracking:I

    return p0

    :cond_1
    sget v0, Lorg/fdroid/fdroid/R$string;->antinonfreenet_key:I

    .line 171
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget p0, Lorg/fdroid/fdroid/R$drawable;->ic_antifeature_nonfreenet:I

    return p0

    :cond_2
    sget v0, Lorg/fdroid/fdroid/R$string;->antitetherednet_key:I

    .line 173
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget p0, Lorg/fdroid/fdroid/R$drawable;->ic_antifeature_tetherednet:I

    return p0

    :cond_3
    sget v0, Lorg/fdroid/fdroid/R$string;->antinonfreead_key:I

    .line 175
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget p0, Lorg/fdroid/fdroid/R$drawable;->ic_antifeature_nonfreeadd:I

    return p0

    :cond_4
    sget v0, Lorg/fdroid/fdroid/R$string;->antinonfreedep_key:I

    .line 177
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget p0, Lorg/fdroid/fdroid/R$drawable;->ic_antifeature_nonfreedep:I

    return p0

    :cond_5
    sget v0, Lorg/fdroid/fdroid/R$string;->antiupstreamnonfree_key:I

    .line 179
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget p0, Lorg/fdroid/fdroid/R$drawable;->ic_antifeature_upstreamnonfree:I

    return p0

    :cond_6
    sget v0, Lorg/fdroid/fdroid/R$string;->antinonfreeassets_key:I

    .line 181
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget p0, Lorg/fdroid/fdroid/R$drawable;->ic_antifeature_nonfreeassets:I

    return p0

    :cond_7
    sget v0, Lorg/fdroid/fdroid/R$string;->antidisabledalgorithm_key:I

    .line 183
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget p0, Lorg/fdroid/fdroid/R$drawable;->ic_antifeature_disabledalgorithm:I

    return p0

    :cond_8
    sget v0, Lorg/fdroid/fdroid/R$string;->antiknownvuln_key:I

    .line 185
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget p0, Lorg/fdroid/fdroid/R$drawable;->ic_antifeature_knownvuln:I

    return p0

    :cond_9
    sget v0, Lorg/fdroid/fdroid/R$string;->antinosource_key:I

    .line 187
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget p0, Lorg/fdroid/fdroid/R$drawable;->ic_antifeature_nosourcesince:I

    return p0

    :cond_a
    sget v0, Lorg/fdroid/fdroid/R$string;->antinsfw_key:I

    .line 189
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    sget p0, Lorg/fdroid/fdroid/R$drawable;->ic_antifeature_nsfw:I

    return p0

    :cond_b
    sget p0, Lorg/fdroid/fdroid/R$drawable;->ic_cancel:I

    return p0
.end method

.method private static getAntiFeatureDescriptionText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget v0, Lorg/fdroid/fdroid/R$string;->antiads_key:I

    .line 137
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget p1, Lorg/fdroid/fdroid/R$string;->antiadslist:I

    .line 138
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget v0, Lorg/fdroid/fdroid/R$string;->antitrack_key:I

    .line 139
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget p1, Lorg/fdroid/fdroid/R$string;->antitracklist:I

    .line 140
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget v0, Lorg/fdroid/fdroid/R$string;->antinonfreenet_key:I

    .line 141
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget p1, Lorg/fdroid/fdroid/R$string;->antinonfreenetlist:I

    .line 142
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    sget v0, Lorg/fdroid/fdroid/R$string;->antitetherednet_key:I

    .line 143
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget p1, Lorg/fdroid/fdroid/R$string;->antitetherednetlist:I

    .line 144
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    sget v0, Lorg/fdroid/fdroid/R$string;->antinonfreead_key:I

    .line 145
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget p1, Lorg/fdroid/fdroid/R$string;->antinonfreeadlist:I

    .line 146
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    sget v0, Lorg/fdroid/fdroid/R$string;->antinonfreedep_key:I

    .line 147
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget p1, Lorg/fdroid/fdroid/R$string;->antinonfreedeplist:I

    .line 148
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    sget v0, Lorg/fdroid/fdroid/R$string;->antiupstreamnonfree_key:I

    .line 149
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget p1, Lorg/fdroid/fdroid/R$string;->antiupstreamnonfreelist:I

    .line 150
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    sget v0, Lorg/fdroid/fdroid/R$string;->antinonfreeassets_key:I

    .line 151
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget p1, Lorg/fdroid/fdroid/R$string;->antinonfreeassetslist:I

    .line 152
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    sget v0, Lorg/fdroid/fdroid/R$string;->antidisabledalgorithm_key:I

    .line 153
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget p1, Lorg/fdroid/fdroid/R$string;->antidisabledalgorithmlist:I

    .line 154
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    sget v0, Lorg/fdroid/fdroid/R$string;->antiknownvuln_key:I

    .line 155
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget p1, Lorg/fdroid/fdroid/R$string;->antiknownvulnlist:I

    .line 156
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    sget v0, Lorg/fdroid/fdroid/R$string;->antinosource_key:I

    .line 157
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget p1, Lorg/fdroid/fdroid/R$string;->antinosourcesince:I

    .line 158
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    sget v0, Lorg/fdroid/fdroid/R$string;->antinsfw_key:I

    .line 159
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget p1, Lorg/fdroid/fdroid/R$string;->antinsfwlist:I

    .line 160
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    return-object p1
.end method


# virtual methods
.method public setApp(Lorg/fdroid/fdroid/data/App;)V
    .locals 2

    const/4 v0, 0x1

    .line 57
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 59
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 62
    new-instance v0, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$1;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView$1;-><init>(Lorg/fdroid/fdroid/views/appdetails/AntiFeaturesListingView;Lorg/fdroid/fdroid/data/App;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->swapAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V

    return-void
.end method
