.class public Lorg/fdroid/fdroid/views/categories/CategoryController;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CategoryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/views/categories/CategoryController$ItemDecorator;
    }
.end annotation


# static fields
.field static final NUM_OF_APPS_PER_CATEGORY_ON_OVERVIEW:I = 0x14

.field private static final TAG:Ljava/lang/String; = "CategoryController"


# instance fields
.field private final activity:Landroidx/appcompat/app/AppCompatActivity;

.field private final appCardsAdapter:Lorg/fdroid/fdroid/views/categories/AppPreviewAdapter;

.field private final background:Landroid/widget/FrameLayout;

.field private currentCategory:Lorg/fdroid/database/Category;

.field private final heading:Landroid/widget/TextView;

.field private final image:Lorg/fdroid/fdroid/views/apps/FeatureImage;

.field private final onViewAll:Landroid/view/View$OnClickListener;

.field private final viewAll:Landroid/widget/Button;


# direct methods
.method static bridge synthetic -$$Nest$fgetactivity(Lorg/fdroid/fdroid/views/categories/CategoryController;)Landroidx/appcompat/app/AppCompatActivity;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/categories/CategoryController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetappCardsAdapter(Lorg/fdroid/fdroid/views/categories/CategoryController;)Lorg/fdroid/fdroid/views/categories/AppPreviewAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/categories/CategoryController;->appCardsAdapter:Lorg/fdroid/fdroid/views/categories/AppPreviewAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentCategory(Lorg/fdroid/fdroid/views/categories/CategoryController;)Lorg/fdroid/database/Category;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/categories/CategoryController;->currentCategory:Lorg/fdroid/database/Category;

    return-object p0
.end method

.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V
    .locals 3

    .line 56
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 163
    new-instance v0, Lorg/fdroid/fdroid/views/categories/CategoryController$2;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/categories/CategoryController$2;-><init>(Lorg/fdroid/fdroid/views/categories/CategoryController;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/views/categories/CategoryController;->onViewAll:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/categories/CategoryController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 60
    new-instance v1, Lorg/fdroid/fdroid/views/categories/AppPreviewAdapter;

    invoke-direct {v1, p1}, Lorg/fdroid/fdroid/views/categories/AppPreviewAdapter;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    iput-object v1, p0, Lorg/fdroid/fdroid/views/categories/CategoryController;->appCardsAdapter:Lorg/fdroid/fdroid/views/categories/AppPreviewAdapter;

    sget v2, Lorg/fdroid/fdroid/R$id;->view_all_button:I

    .line 62
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lorg/fdroid/fdroid/views/categories/CategoryController;->viewAll:Landroid/widget/Button;

    .line 63
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lorg/fdroid/fdroid/R$id;->name:I

    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/categories/CategoryController;->heading:Landroid/widget/TextView;

    sget v0, Lorg/fdroid/fdroid/R$id;->category_image:I

    .line 66
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/views/apps/FeatureImage;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/categories/CategoryController;->image:Lorg/fdroid/fdroid/views/apps/FeatureImage;

    sget v0, Lorg/fdroid/fdroid/R$id;->category_background:I

    .line 67
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/categories/CategoryController;->background:Landroid/widget/FrameLayout;

    sget v0, Lorg/fdroid/fdroid/R$id;->app_cards:I

    .line 69
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 71
    new-instance v0, Lorg/fdroid/fdroid/views/categories/CategoryController$ItemDecorator;

    invoke-direct {v0, p1}, Lorg/fdroid/fdroid/views/categories/CategoryController$ItemDecorator;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public static getBackgroundColour(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4

    const-string v0, "color"

    const/4 v1, 0x1

    .line 147
    invoke-static {p0, p1, v0, v1}, Lorg/fdroid/fdroid/views/categories/CategoryController;->getCategoryResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    if-lez v0, :cond_0

    .line 149
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    .line 154
    :cond_0
    new-instance p0, Ljava/util/Random;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v2, p1

    invoke-direct {p0, v2, v3}, Ljava/util/Random;-><init>(J)V

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 157
    invoke-virtual {p0}, Ljava/util/Random;->nextFloat()F

    move-result p0

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr p0, v0

    const/4 v0, 0x0

    aput p0, p1, v0

    const p0, 0x3ecccccd    # 0.4f

    aput p0, p1, v1

    const/4 p0, 0x2

    const/high16 v0, 0x3f000000    # 0.5f

    aput v0, p1, p0

    .line 160
    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    return p0
.end method

.method private static getCategoryResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 2

    const-string v0, " & "

    const-string v1, "_"

    .line 139
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\'"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 141
    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 143
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "category_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p1, p2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private loadAppItems(Landroidx/lifecycle/LiveData;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/categories/CategoryController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 121
    new-instance v1, Lorg/fdroid/fdroid/views/categories/CategoryController$1;

    invoke-direct {v1, p0, p1}, Lorg/fdroid/fdroid/views/categories/CategoryController$1;-><init>(Lorg/fdroid/fdroid/views/categories/CategoryController;Landroidx/lifecycle/LiveData;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static translateCategory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "string"

    const/4 v1, 0x0

    .line 75
    invoke-static {p0, p1, v0, v1}, Lorg/fdroid/fdroid/views/categories/CategoryController;->getCategoryResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method bindModel(Lorg/fdroid/fdroid/views/categories/CategoryItem;Landroidx/lifecycle/LiveData;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/fdroid/views/categories/CategoryItem;",
            "Landroidx/lifecycle/LiveData;",
            ")V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p2}, Lorg/fdroid/fdroid/views/categories/CategoryController;->loadAppItems(Landroidx/lifecycle/LiveData;)V

    .line 81
    iget-object p2, p1, Lorg/fdroid/fdroid/views/categories/CategoryItem;->category:Lorg/fdroid/database/Category;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/categories/CategoryController;->currentCategory:Lorg/fdroid/database/Category;

    .line 83
    invoke-static {}, Landroidx/core/os/LocaleListCompat;->getDefault()Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/fdroid/database/RepoAttribute;->getName(Landroidx/core/os/LocaleListCompat;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/fdroid/fdroid/views/categories/CategoryController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 84
    iget-object v0, p1, Lorg/fdroid/fdroid/views/categories/CategoryItem;->category:Lorg/fdroid/database/Category;

    invoke-virtual {v0}, Lorg/fdroid/database/Category;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/fdroid/fdroid/views/categories/CategoryController;->translateCategory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/categories/CategoryController;->heading:Landroid/widget/TextView;

    .line 85
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/categories/CategoryController;->heading:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/categories/CategoryController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v2, Lorg/fdroid/fdroid/R$string;->tts_category_name:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    .line 86
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lorg/fdroid/fdroid/views/categories/CategoryController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 88
    iget-object v0, p1, Lorg/fdroid/fdroid/views/categories/CategoryItem;->category:Lorg/fdroid/database/Category;

    invoke-virtual {v0}, Lorg/fdroid/database/Category;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/fdroid/fdroid/views/categories/CategoryController;->getBackgroundColour(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/categories/CategoryController;->background:Landroid/widget/FrameLayout;

    .line 89
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 92
    iget-object v0, p1, Lorg/fdroid/fdroid/views/categories/CategoryItem;->category:Lorg/fdroid/database/Category;

    invoke-static {}, Landroidx/core/os/LocaleListCompat;->getDefault()Landroidx/core/os/LocaleListCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fdroid/database/RepoAttribute;->getIcon(Landroidx/core/os/LocaleListCompat;)Lorg/fdroid/index/v2/FileV2;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/categories/CategoryController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 93
    invoke-static {v1}, Lorg/fdroid/fdroid/FDroidApp;->getRepoManager(Landroid/content/Context;)Lorg/fdroid/index/RepoManager;

    move-result-object v1

    iget-object v2, p1, Lorg/fdroid/fdroid/views/categories/CategoryItem;->category:Lorg/fdroid/database/Category;

    invoke-virtual {v2}, Lorg/fdroid/database/Category;->getRepoId()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lorg/fdroid/index/RepoManager;->getRepository(J)Lorg/fdroid/database/Repository;

    move-result-object v1

    const-string v2, "CategoryController"

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading remote image for: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lorg/fdroid/fdroid/views/categories/CategoryItem;->category:Lorg/fdroid/database/Category;

    invoke-virtual {v4}, Lorg/fdroid/database/Category;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lorg/fdroid/fdroid/views/categories/CategoryController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 96
    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    .line 97
    invoke-static {v1, v0}, Lorg/fdroid/fdroid/Utils;->getGlideModel(Lorg/fdroid/database/Repository;Lorg/fdroid/IndexFile;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    .line 98
    invoke-static {}, Lorg/fdroid/fdroid/Utils;->getAlwaysShowIconRequestOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/categories/CategoryController;->image:Lorg/fdroid/fdroid/views/apps/FeatureImage;

    .line 99
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/fdroid/fdroid/views/categories/CategoryController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 102
    iget-object v1, p1, Lorg/fdroid/fdroid/views/categories/CategoryItem;->category:Lorg/fdroid/database/Category;

    invoke-virtual {v1}, Lorg/fdroid/database/Category;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v4, "drawable"

    invoke-static {v0, v1, v4, v3}, Lorg/fdroid/fdroid/views/categories/CategoryController;->getCategoryResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    if-nez v0, :cond_2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No image for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lorg/fdroid/fdroid/views/categories/CategoryItem;->category:Lorg/fdroid/database/Category;

    invoke-virtual {v1}, Lorg/fdroid/database/Category;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/fdroid/fdroid/views/categories/CategoryController;->image:Lorg/fdroid/fdroid/views/apps/FeatureImage;

    .line 105
    invoke-virtual {v0, p2}, Lorg/fdroid/fdroid/views/apps/FeatureImage;->setColour(I)V

    iget-object p2, p0, Lorg/fdroid/fdroid/views/categories/CategoryController;->image:Lorg/fdroid/fdroid/views/apps/FeatureImage;

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lorg/fdroid/fdroid/views/categories/CategoryController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 107
    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/categories/CategoryController;->image:Lorg/fdroid/fdroid/views/apps/FeatureImage;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lorg/fdroid/fdroid/views/categories/CategoryController;->image:Lorg/fdroid/fdroid/views/apps/FeatureImage;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/categories/CategoryController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v2, Lorg/fdroid/fdroid/R$color;->fdroid_blue:I

    .line 109
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v1}, Lorg/fdroid/fdroid/views/apps/FeatureImage;->setColour(I)V

    iget-object p2, p0, Lorg/fdroid/fdroid/views/categories/CategoryController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 110
    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/categories/CategoryController;->image:Lorg/fdroid/fdroid/views/apps/FeatureImage;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_0
    iget-object p2, p0, Lorg/fdroid/fdroid/views/categories/CategoryController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 113
    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/categories/CategoryController;->viewAll:Landroid/widget/Button;

    sget v1, Lorg/fdroid/fdroid/R$plurals;->button_view_all_apps_in_category:I

    .line 114
    iget v2, p1, Lorg/fdroid/fdroid/views/categories/CategoryItem;->numApps:I

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p2, v1, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/categories/CategoryController;->viewAll:Landroid/widget/Button;

    sget v1, Lorg/fdroid/fdroid/R$plurals;->tts_view_all_in_category:I

    .line 115
    iget p1, p1, Lorg/fdroid/fdroid/views/categories/CategoryItem;->numApps:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    iget-object v4, p0, Lorg/fdroid/fdroid/views/categories/CategoryController;->currentCategory:Lorg/fdroid/database/Category;

    aput-object v4, v2, v3

    .line 115
    invoke-virtual {p2, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
