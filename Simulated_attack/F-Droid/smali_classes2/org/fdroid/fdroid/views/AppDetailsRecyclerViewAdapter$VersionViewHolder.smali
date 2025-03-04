.class Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AppDetailsRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VersionViewHolder"
.end annotation


# instance fields
.field final added:Landroid/widget/TextView;

.field final api:Landroid/widget/TextView;

.field private apk:Lorg/fdroid/fdroid/data/Apk;

.field final busyIndicator:Landroid/view/View;

.field buttonAction:Landroid/widget/Button;

.field final buttonInstallUpgrade:Landroid/widget/Button;

.field final expandArrow:Landroid/widget/ImageView;

.field final expandedLayout:Landroid/view/View;

.field final incompatibleReasons:Landroid/widget/TextView;

.field final size:Landroid/widget/TextView;

.field final statusIncompatible:Landroid/widget/TextView;

.field final statusInstalled:Landroid/widget/TextView;

.field final statusSuggested:Landroid/widget/TextView;

.field final targetArch:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

.field final version:Landroid/widget/TextView;

.field final versionCode:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$IABB7VQ-bmdjBviKGIKU_WKsLsA(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;Lorg/fdroid/fdroid/data/Apk;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->lambda$bindModel$1(Lorg/fdroid/fdroid/data/Apk;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$T2alCzkN6c6LHJ5WO4lMOOn0V8s(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->lambda$bindModel$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZKGh6t-WkIvtYAjl0DpbmwuDD8E(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->lambda$showActionButton$2(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Landroid/view/View;)V
    .locals 3

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1151
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Lorg/fdroid/fdroid/R$id;->version:I

    .line 1152
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->version:Landroid/widget/TextView;

    sget v0, Lorg/fdroid/fdroid/R$id;->status_installed:I

    .line 1153
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->statusInstalled:Landroid/widget/TextView;

    sget v0, Lorg/fdroid/fdroid/R$id;->status_suggested:I

    .line 1154
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->statusSuggested:Landroid/widget/TextView;

    sget v0, Lorg/fdroid/fdroid/R$id;->status_incompatible:I

    .line 1155
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->statusIncompatible:Landroid/widget/TextView;

    sget v0, Lorg/fdroid/fdroid/R$id;->versionCode:I

    .line 1156
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->versionCode:Landroid/widget/TextView;

    sget v0, Lorg/fdroid/fdroid/R$id;->added:I

    .line 1157
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->added:Landroid/widget/TextView;

    sget v0, Lorg/fdroid/fdroid/R$id;->expand_arrow:I

    .line 1158
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->expandArrow:Landroid/widget/ImageView;

    sget v0, Lorg/fdroid/fdroid/R$id;->expanded_layout:I

    .line 1159
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->expandedLayout:Landroid/view/View;

    sget v0, Lorg/fdroid/fdroid/R$id;->size:I

    .line 1160
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->size:Landroid/widget/TextView;

    sget v0, Lorg/fdroid/fdroid/R$id;->api:I

    .line 1161
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->api:Landroid/widget/TextView;

    sget v0, Lorg/fdroid/fdroid/R$id;->button_install_upgrade:I

    .line 1162
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->buttonInstallUpgrade:Landroid/widget/Button;

    sget v0, Lorg/fdroid/fdroid/R$id;->busy_indicator:I

    .line 1163
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->busyIndicator:Landroid/view/View;

    sget v0, Lorg/fdroid/fdroid/R$id;->incompatible_reasons:I

    .line 1164
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->incompatibleReasons:Landroid/widget/TextView;

    sget v0, Lorg/fdroid/fdroid/R$id;->target_arch:I

    .line 1165
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->targetArch:Landroid/widget/TextView;

    .line 1167
    invoke-static {p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$dimen;->layout_horizontal_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1168
    invoke-static {p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lorg/fdroid/fdroid/R$dimen;->details_activity_padding:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr p1, v0

    .line 1169
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-static {p2, p1, v1, v0, v2}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    return-void
.end method

.method private expand(Z)V
    .locals 4

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1355
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetversionsExpandTracker(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->apk:Lorg/fdroid/fdroid/data/Apk;

    invoke-virtual {v1}, Lorg/fdroid/fdroid/data/Apk;->getApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->expandedLayout:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 1356
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->versionCode:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v1, v2

    .line 1357
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->expandArrow:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1358
    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_2

    sget v2, Lorg/fdroid/fdroid/R$drawable;->ic_expand_less:I

    goto :goto_1

    :cond_2
    sget v2, Lorg/fdroid/fdroid/R$drawable;->ic_expand_more:I

    :goto_1
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->version:Landroid/widget/TextView;

    .line 1363
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->size:Landroid/widget/TextView;

    .line 1364
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->api:Landroid/widget/TextView;

    .line 1365
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method private getApiText(Lorg/fdroid/fdroid/data/Apk;)Ljava/lang/String;
    .locals 7

    .line 1287
    iget v0, p1, Lorg/fdroid/fdroid/data/Apk;->minSdkVersion:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Android: "

    if-lez v0, :cond_0

    iget v4, p1, Lorg/fdroid/fdroid/data/Apk;->maxSdkVersion:I

    const/16 v5, 0x7f

    if-ge v4, v5, :cond_0

    .line 1288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v3}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lorg/fdroid/fdroid/R$string;->minsdk_up_to_maxsdk:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p1, Lorg/fdroid/fdroid/data/Apk;->minSdkVersion:I

    .line 1289
    invoke-static {v6}, Lorg/fdroid/fdroid/Utils;->getAndroidVersionName(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    iget p1, p1, Lorg/fdroid/fdroid/data/Apk;->maxSdkVersion:I

    .line 1290
    invoke-static {p1}, Lorg/fdroid/fdroid/Utils;->getAndroidVersionName(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v1

    .line 1288
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    .line 1292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v3}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lorg/fdroid/fdroid/R$string;->minsdk_or_later:I

    new-array v1, v1, [Ljava/lang/Object;

    iget p1, p1, Lorg/fdroid/fdroid/data/Apk;->minSdkVersion:I

    .line 1293
    invoke-static {p1}, Lorg/fdroid/fdroid/Utils;->getAndroidVersionName(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 1292
    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1294
    :cond_1
    iget v0, p1, Lorg/fdroid/fdroid/data/Apk;->maxSdkVersion:I

    if-lez v0, :cond_2

    .line 1295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v3}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lorg/fdroid/fdroid/R$string;->up_to_maxsdk:I

    new-array v1, v1, [Ljava/lang/Object;

    iget p1, p1, Lorg/fdroid/fdroid/data/Apk;->maxSdkVersion:I

    .line 1296
    invoke-static {p1}, Lorg/fdroid/fdroid/Utils;->getAndroidVersionName(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 1295
    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    :goto_0
    return-object v3
.end method

.method private getIncompatibleReasonsText(Lorg/fdroid/fdroid/data/Apk;)Ljava/lang/String;
    .locals 4

    .line 1302
    iget-object v0, p1, Lorg/fdroid/fdroid/data/Apk;->incompatibleReasons:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1303
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$string;->requires_features:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, ", "

    iget-object p1, p1, Lorg/fdroid/fdroid/data/Apk;->incompatibleReasons:[Ljava/lang/String;

    .line 1304
    invoke-static {v3, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 1303
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1306
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1307
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v0

    iget-object v0, v0, Lorg/fdroid/fdroid/data/App;->installedSigner:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v0

    iget-object v0, v0, Lorg/fdroid/fdroid/data/App;->installedSigner:Ljava/lang/String;

    iget-object p1, p1, Lorg/fdroid/fdroid/data/Apk;->signer:Ljava/lang/String;

    .line 1308
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1309
    invoke-static {p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lorg/fdroid/fdroid/R$string;->app_details__incompatible_mismatched_signers:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getTargetArchText(Lorg/fdroid/fdroid/data/Apk;)Ljava/lang/String;
    .locals 8

    .line 1316
    iget-object v0, p1, Lorg/fdroid/fdroid/data/Apk;->nativecode:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "os.arch"

    .line 1319
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1320
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1321
    iget-object p1, p1, Lorg/fdroid/fdroid/data/Apk;->nativecode:[Ljava/lang/String;

    array-length v3, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, p1, v5

    .line 1323
    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1324
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const-string p1, ", "

    .line 1327
    invoke-static {p1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 1328
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1330
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$string;->requires_features:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1
.end method

.method private synthetic lambda$bindModel$0(Landroid/view/View;)V
    .locals 0

    .line 1271
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->toggleExpanded()V

    return-void
.end method

.method private synthetic lambda$bindModel$1(Lorg/fdroid/fdroid/data/Apk;Landroid/view/View;)Z
    .locals 1

    iget-object p2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1279
    invoke-static {p2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v0

    iget-object v0, v0, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    iget-object p1, p1, Lorg/fdroid/fdroid/data/Apk;->versionName:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lorg/fdroid/fdroid/Utils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$showActionButton$2(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1350
    invoke-static {p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcallbacks(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;

    move-result-object p1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->apk:Lorg/fdroid/fdroid/data/Apk;

    invoke-interface {p1, v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;->installApk(Lorg/fdroid/fdroid/data/Apk;)V

    return-void
.end method

.method private showActionButton(Landroid/widget/Button;ZZ)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->buttonAction:Landroid/widget/Button;

    if-eqz p3, :cond_0

    const/16 p2, 0x8

    .line 1340
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    const/4 p3, 0x0

    .line 1345
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->apk:Lorg/fdroid/fdroid/data/Apk;

    .line 1346
    iget-boolean p1, p1, Lorg/fdroid/fdroid/data/Apk;->compatible:Z

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcallbacks(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;

    move-result-object p1

    .line 1347
    invoke-interface {p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;->isAppDownloading()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p3, 0x1

    :cond_2
    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->buttonAction:Landroid/widget/Button;

    xor-int/lit8 p2, p3, 0x1

    .line 1348
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->buttonAction:Landroid/widget/Button;

    if-eqz p3, :cond_3

    const p2, 0x3e19999a    # 0.15f

    goto :goto_0

    :cond_3
    const/high16 p2, 0x3f800000    # 1.0f

    .line 1349
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->buttonAction:Landroid/widget/Button;

    .line 1350
    new-instance p2, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method

.method private toggleExpanded()V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->busyIndicator:Landroid/view/View;

    .line 1369
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1375
    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetversionsExpandTracker(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->apk:Lorg/fdroid/fdroid/data/Apk;

    invoke-virtual {v2}, Lorg/fdroid/fdroid/data/Apk;->getApkPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1376
    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->expand(Z)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1380
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetrecyclerView(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 1381
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v1

    if-eqz v0, :cond_1

    .line 1382
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1384
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetrecyclerView(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder$1;

    invoke-direct {v2, p0, v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder$1;-><init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;I)V

    .line 1385
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method bindModel(Lorg/fdroid/fdroid/data/Apk;)V
    .locals 13

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1173
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->apk:Lorg/fdroid/fdroid/data/Apk;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1176
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fdroid/fdroid/data/App;->isInstalled(Landroid/content/Context;)Z

    move-result v0

    .line 1177
    iget-wide v1, p1, Lorg/fdroid/fdroid/data/Apk;->versionCode:J

    iget-object v3, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v3}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v3

    iget-wide v3, v3, Lorg/fdroid/fdroid/data/App;->installedVersionCode:J

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, p1, Lorg/fdroid/fdroid/data/Apk;->signer:Ljava/lang/String;

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v4}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v4

    iget-object v4, v4, Lorg/fdroid/fdroid/data/App;->installedSigner:Ljava/lang/String;

    .line 1178
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1179
    invoke-static {v4}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetsuggestedApk(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/Apk;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    iget-object v5, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1180
    invoke-static {v5}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcallbacks(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;

    move-result-object v5

    invoke-interface {v5}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsRecyclerViewAdapterCallbacks;->isAppDownloading()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v5}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetdownloadedApk(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/Apk;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v5}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetdownloadedApk(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/Apk;

    move-result-object v5

    .line 1181
    invoke-virtual {v5, p1}, Lorg/fdroid/fdroid/data/Apk;->compareTo(Lorg/fdroid/fdroid/data/Apk;)I

    move-result v5

    if-nez v5, :cond_2

    .line 1182
    invoke-virtual {p1}, Lorg/fdroid/fdroid/data/Apk;->getApkPath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v6}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetdownloadedApk(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/Apk;

    move-result-object v6

    invoke-virtual {v6}, Lorg/fdroid/fdroid/data/Apk;->getApkPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    move v5, v3

    .line 1183
    :goto_1
    iget-wide v6, p1, Lorg/fdroid/fdroid/data/Apk;->versionCode:J

    iget-object v8, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v8}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v8

    iget-wide v8, v8, Lorg/fdroid/fdroid/data/App;->installedVersionCode:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    iget-boolean v6, p1, Lorg/fdroid/fdroid/data/Apk;->compatible:Z

    if-eqz v6, :cond_3

    iget-wide v6, p1, Lorg/fdroid/fdroid/data/Apk;->size:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    iget v6, p1, Lorg/fdroid/fdroid/data/Apk;->maxSdkVersion:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    move v6, v2

    goto :goto_2

    :cond_3
    move v6, v3

    :goto_2
    iget-object v7, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->version:Landroid/widget/TextView;

    .line 1187
    iget-object v8, p1, Lorg/fdroid/fdroid/data/Apk;->versionName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->statusSuggested:Landroid/widget/TextView;

    const/16 v8, 0x8

    if-eqz v4, :cond_4

    .line 1188
    iget-boolean v4, p1, Lorg/fdroid/fdroid/data/Apk;->compatible:Z

    if-eqz v4, :cond_4

    move v4, v3

    goto :goto_3

    :cond_4
    move v4, v8

    :goto_3
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->statusInstalled:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    move v7, v3

    goto :goto_4

    :cond_5
    move v7, v8

    .line 1189
    :goto_4
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->statusIncompatible:Landroid/widget/TextView;

    .line 1190
    iget-boolean v7, p1, Lorg/fdroid/fdroid/data/Apk;->compatible:Z

    if-nez v7, :cond_6

    move v7, v3

    goto :goto_5

    :cond_6
    move v7, v8

    :goto_5
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->statusSuggested:Landroid/widget/TextView;

    .line 1194
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->statusInstalled:Landroid/widget/TextView;

    .line 1195
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->statusIncompatible:Landroid/widget/TextView;

    .line 1196
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_7

    goto :goto_6

    :cond_7
    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->version:Landroid/widget/TextView;

    const v7, 0x7fffffff

    .line 1200
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_7

    .line 1197
    :cond_8
    :goto_6
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v9, v4

    const-wide v11, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v9, v11

    double-to-int v4, v9

    iget-object v7, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->version:Landroid/widget/TextView;

    .line 1198
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1204
    :goto_7
    iget-object v4, p1, Lorg/fdroid/fdroid/data/Apk;->added:Ljava/util/Date;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1205
    invoke-static {v4}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    iget-object v7, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->added:Landroid/widget/TextView;

    .line 1206
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->added:Landroid/widget/TextView;

    iget-object v9, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1207
    invoke-static {v9}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v9

    sget v10, Lorg/fdroid/fdroid/R$string;->added_on:I

    new-array v11, v2, [Ljava/lang/Object;

    iget-object v12, p1, Lorg/fdroid/fdroid/data/Apk;->added:Ljava/util/Date;

    invoke-virtual {v4, v12}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v11, v3

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_9
    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->added:Landroid/widget/TextView;

    const/4 v7, 0x4

    .line 1209
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_8
    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->size:Landroid/widget/TextView;

    iget-object v7, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1212
    invoke-static {v7}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v7

    sget v9, Lorg/fdroid/fdroid/R$string;->app_size:I

    new-array v10, v2, [Ljava/lang/Object;

    iget-wide v11, p1, Lorg/fdroid/fdroid/data/Apk;->size:J

    invoke-static {v11, v12}, Lorg/fdroid/fdroid/Utils;->getFriendlySize(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v3

    invoke-virtual {v7, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->api:Landroid/widget/TextView;

    .line 1213
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->getApiText(Lorg/fdroid/fdroid/data/Apk;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->buttonInstallUpgrade:Landroid/widget/Button;

    .line 1216
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->buttonInstallUpgrade:Landroid/widget/Button;

    iget-object v7, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1217
    invoke-static {v7}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v7

    sget v9, Lorg/fdroid/fdroid/R$string;->menu_install:I

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->buttonInstallUpgrade:Landroid/widget/Button;

    .line 1218
    invoke-direct {p0, v4, v1, v5}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->showActionButton(Landroid/widget/Button;ZZ)V

    if-eqz v0, :cond_b

    if-nez v1, :cond_b

    .line 1220
    iget-wide v0, p1, Lorg/fdroid/fdroid/data/Apk;->versionCode:J

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v4}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v4

    iget-wide v9, v4, Lorg/fdroid/fdroid/data/App;->installedVersionCode:J

    cmp-long v0, v0, v9

    if-lez v0, :cond_a

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->buttonInstallUpgrade:Landroid/widget/Button;

    sget v1, Lorg/fdroid/fdroid/R$string;->menu_upgrade:I

    .line 1223
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_9

    .line 1224
    :cond_a
    iget-wide v0, p1, Lorg/fdroid/fdroid/data/Apk;->versionCode:J

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v4}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v4

    iget-wide v9, v4, Lorg/fdroid/fdroid/data/App;->installedVersionCode:J

    cmp-long v0, v0, v9

    if-gez v0, :cond_b

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->buttonInstallUpgrade:Landroid/widget/Button;

    .line 1225
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    :goto_9
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->busyIndicator:Landroid/view/View;

    if-eqz v5, :cond_c

    move v1, v3

    goto :goto_a

    :cond_c
    move v1, v8

    .line 1230
    :goto_a
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1233
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->expertMode()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->versionCode:Landroid/widget/TextView;

    .line 1234
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v2, [Ljava/lang/Object;

    iget-wide v9, p1, Lorg/fdroid/fdroid/data/Apk;->versionCode:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v3

    const-string v7, " (%d) "

    invoke-static {v1, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1236
    iget-boolean v0, p1, Lorg/fdroid/fdroid/data/Apk;->compatible:Z

    if-nez v0, :cond_e

    .line 1237
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->getIncompatibleReasonsText(Lorg/fdroid/fdroid/data/Apk;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->incompatibleReasons:Landroid/widget/TextView;

    .line 1239
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->incompatibleReasons:Landroid/widget/TextView;

    .line 1240
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    :cond_d
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->incompatibleReasons:Landroid/widget/TextView;

    .line 1242
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_b
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->targetArch:Landroid/widget/TextView;

    .line 1244
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d

    .line 1247
    :cond_e
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->getTargetArchText(Lorg/fdroid/fdroid/data/Apk;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->targetArch:Landroid/widget/TextView;

    .line 1249
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->targetArch:Landroid/widget/TextView;

    .line 1250
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    :cond_f
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->targetArch:Landroid/widget/TextView;

    .line 1252
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_c
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->incompatibleReasons:Landroid/widget/TextView;

    .line 1254
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d

    :cond_10
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->versionCode:Landroid/widget/TextView;

    const-string v1, ""

    .line 1257
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->incompatibleReasons:Landroid/widget/TextView;

    .line 1258
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->targetArch:Landroid/widget/TextView;

    .line 1259
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_d
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 1263
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetversionsExpandTracker(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lorg/fdroid/fdroid/data/Apk;->getApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1264
    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    if-eqz v5, :cond_11

    goto :goto_e

    :cond_11
    move v2, v3

    :cond_12
    :goto_e
    invoke-direct {p0, v2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->expand(Z)V

    if-nez v6, :cond_13

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->expandArrow:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1270
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1271
    new-instance v1, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder$$ExternalSyntheticLambda1;-><init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_f

    :cond_13
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;->expandArrow:Landroid/widget/ImageView;

    const v1, 0x3e99999a    # 0.3f

    .line 1273
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    .line 1274
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1277
    :goto_f
    iget-object v0, p1, Lorg/fdroid/fdroid/data/Apk;->versionName:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1278
    new-instance v1, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder$$ExternalSyntheticLambda2;-><init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$VersionViewHolder;Lorg/fdroid/fdroid/data/Apk;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_14
    return-void
.end method
