.class Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$NoVersionsViewHolder;
.super Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsViewHolder;
.source "AppDetailsRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoVersionsViewHolder"
.end annotation


# instance fields
.field final headerView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;


# direct methods
.method public static synthetic $r8$lambda$5VoOmnz0vqSPQWMtps5RHrcy6aA(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$NoVersionsViewHolder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$NoVersionsViewHolder;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vo-BaYGSiSOCphSMpv1b4GhbFIs(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$NoVersionsViewHolder;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$NoVersionsViewHolder;->lambda$explainIncompatibleVersions$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method constructor <init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$NoVersionsViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 954
    invoke-direct {p0, p2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsViewHolder;-><init>(Landroid/view/View;)V

    sget p1, Lorg/fdroid/fdroid/R$id;->information:I

    .line 955
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$NoVersionsViewHolder;->headerView:Landroid/widget/TextView;

    .line 956
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lorg/fdroid/fdroid/R$drawable;->ic_versions:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 957
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const-string v0, "#B4B4B4"

    .line 958
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {p2, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    const/4 v0, 0x0

    .line 959
    invoke-static {p1, p2, v0, v0, v0}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 961
    new-instance p2, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$NoVersionsViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$NoVersionsViewHolder$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$NoVersionsViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private explainIncompatibleVersions()V
    .locals 5

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$NoVersionsViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 981
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$string;->show_incompat_versions:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$NoVersionsViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 982
    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/fdroid/fdroid/R$string;->app_details__no_versions__show_incompat_versions:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 987
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$NoVersionsViewHolder;->hasCompatibleApksDifferentSigners()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$NoVersionsViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 988
    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/fdroid/fdroid/R$string;->app_details__no_versions__no_compatible_signers:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 989
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$NoVersionsViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v3}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lorg/fdroid/fdroid/R$string;->app_details__no_versions__explain_incompatible_signers:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$NoVersionsViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 992
    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/fdroid/fdroid/R$string;->app_details__no_versions__none_compatible_with_device:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 996
    :goto_0
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$NoVersionsViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v3}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 997
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 998
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$string;->menu_settings:I

    new-instance v2, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$NoVersionsViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$NoVersionsViewHolder$$ExternalSyntheticLambda1;-><init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$NoVersionsViewHolder;)V

    .line 999
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$string;->cancel:I

    const/4 v2, 0x0

    .line 1004
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 1005
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private hasCompatibleApksDifferentSigners()Z
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$NoVersionsViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1009
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcompatibleVersionsDifferentSigner(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private synthetic lambda$explainIncompatibleVersions$1(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1000
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$NoVersionsViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {p2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object p2

    const-class v0, Lorg/fdroid/fdroid/views/main/MainActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "org.fdroid.fdroid.views.main.MainActivity.VIEW_SETTINGS"

    const/4 v0, 0x1

    .line 1001
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$NoVersionsViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1002
    invoke-static {p2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 961
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$NoVersionsViewHolder;->explainIncompatibleVersions()V

    return-void
.end method


# virtual methods
.method public bindModel()V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$NoVersionsViewHolder;->headerView:Landroid/widget/TextView;

    .line 966
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 967
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$NoVersionsViewHolder;->hasCompatibleApksDifferentSigners()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$NoVersionsViewHolder;->headerView:Landroid/widget/TextView;

    sget v2, Lorg/fdroid/fdroid/R$string;->app_details__no_versions__no_compatible_signers:I

    .line 968
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$NoVersionsViewHolder;->headerView:Landroid/widget/TextView;

    sget v2, Lorg/fdroid/fdroid/R$string;->app_details__no_versions__none_compatible_with_device:I

    .line 970
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
