.class Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;
.super Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsViewHolder;
.source "AppDetailsRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DonateViewHolder"
.end annotation


# instance fields
.field final donateHeading:Landroid/widget/TextView;

.field final donationOptionsLayout:Landroidx/gridlayout/widget/GridLayout;

.field final synthetic this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;


# direct methods
.method public static synthetic $r8$lambda$qXSBKHrzT6iEa_ctHdC42EgW5Z8(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;->lambda$addDonateOption$0(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 834
    invoke-direct {p0, p2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$AppDetailsViewHolder;-><init>(Landroid/view/View;)V

    sget p1, Lorg/fdroid/fdroid/R$id;->donate_header:I

    .line 835
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;->donateHeading:Landroid/widget/TextView;

    sget p1, Lorg/fdroid/fdroid/R$id;->donation_options:I

    .line 836
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/gridlayout/widget/GridLayout;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;->donationOptionsLayout:Landroidx/gridlayout/widget/GridLayout;

    return-void
.end method

.method private addDonateOption(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 888
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;->donationOptionsLayout:Landroidx/gridlayout/widget/GridLayout;

    const/4 v2, 0x0

    .line 889
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$layout;->donate_generic:I

    if-ne p1, v1, :cond_1

    .line 891
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "https://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 894
    :cond_0
    move-object p1, v0

    check-cast p1, Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 896
    :cond_1
    new-instance p1, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;->donationOptionsLayout:Landroidx/gridlayout/widget/GridLayout;

    .line 897
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$addDonateOption$0(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 896
    invoke-static {p2, p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$monLinkClicked(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bindModel()V
    .locals 7

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 841
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 842
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v0

    iget-object v0, v0, Lorg/fdroid/fdroid/data/App;->authorName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;->donateHeading:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 843
    invoke-static {v3}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lorg/fdroid/fdroid/R$string;->app_details_donate_prompt_unknown_author:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v5}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v5

    iget-object v5, v5, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    aput-object v5, v1, v2

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 845
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<strong>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v3}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v3

    iget-object v3, v3, Lorg/fdroid/fdroid/data/App;->authorName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</strong>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 846
    invoke-static {v3}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetcontext(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lorg/fdroid/fdroid/R$string;->app_details_donate_prompt:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    invoke-static {v6}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v6

    iget-object v6, v6, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    aput-object v6, v5, v2

    aput-object v0, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;->donateHeading:Landroid/widget/TextView;

    .line 847
    invoke-static {v0, v2}, Landroidx/core/text/HtmlCompat;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;->donationOptionsLayout:Landroidx/gridlayout/widget/GridLayout;

    .line 850
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 853
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fdroid/fdroid/data/App;->getLiberapayUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$muriIsSetAndCanBeOpened(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lorg/fdroid/fdroid/R$layout;->donate_liberapay:I

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 854
    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fdroid/fdroid/data/App;->getLiberapayUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;->addDonateOption(ILjava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 858
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fdroid/fdroid/data/App;->getOpenCollectiveUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$muriIsSetAndCanBeOpened(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lorg/fdroid/fdroid/R$layout;->donate_opencollective:I

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 859
    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fdroid/fdroid/data/App;->getOpenCollectiveUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;->addDonateOption(ILjava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 863
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fdroid/fdroid/data/App;->getBitcoinUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$muriIsSetAndCanBeOpened(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lorg/fdroid/fdroid/R$layout;->donate_bitcoin:I

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 864
    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fdroid/fdroid/data/App;->getBitcoinUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;->addDonateOption(ILjava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 868
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fdroid/fdroid/data/App;->getLitecoinUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$muriIsSetAndCanBeOpened(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lorg/fdroid/fdroid/R$layout;->donate_litecoin:I

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 869
    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fdroid/fdroid/data/App;->getLitecoinUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;->addDonateOption(ILjava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 873
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fdroid/fdroid/data/App;->getFlattrUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$muriIsSetAndCanBeOpened(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Lorg/fdroid/fdroid/R$layout;->donate_generic:I

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 874
    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fdroid/fdroid/data/App;->getFlattrUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;->addDonateOption(ILjava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 878
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v1

    iget-object v1, v1, Lorg/fdroid/fdroid/data/App;->donate:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$muriIsSetAndCanBeOpened(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget v0, Lorg/fdroid/fdroid/R$layout;->donate_generic:I

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;->this$0:Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    .line 879
    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;)Lorg/fdroid/fdroid/data/App;

    move-result-object v1

    iget-object v1, v1, Lorg/fdroid/fdroid/data/App;->donate:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter$DonateViewHolder;->addDonateOption(ILjava/lang/String;)V

    :cond_7
    return-void
.end method
