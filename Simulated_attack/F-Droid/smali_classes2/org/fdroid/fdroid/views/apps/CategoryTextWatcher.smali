.class public Lorg/fdroid/fdroid/views/apps/CategoryTextWatcher;
.super Ljava/lang/Object;
.source "CategoryTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/views/apps/CategoryTextWatcher$SearchTermsChangedListener;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final listener:Lorg/fdroid/fdroid/views/apps/CategoryTextWatcher$SearchTermsChangedListener;

.field private removeTo:I

.field private requiresSpanRecalculation:Z

.field private final widget:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/widget/EditText;Lorg/fdroid/fdroid/views/apps/CategoryTextWatcher$SearchTermsChangedListener;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/fdroid/fdroid/views/apps/CategoryTextWatcher;->removeTo:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/fdroid/fdroid/views/apps/CategoryTextWatcher;->requiresSpanRecalculation:Z

    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/CategoryTextWatcher;->context:Landroid/content/Context;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/apps/CategoryTextWatcher;->widget:Landroid/widget/EditText;

    iput-object p3, p0, Lorg/fdroid/fdroid/views/apps/CategoryTextWatcher;->listener:Lorg/fdroid/fdroid/views/apps/CategoryTextWatcher$SearchTermsChangedListener;

    return-void
.end method

.method private prepareSpans(Landroid/text/Editable;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-class v0, Lorg/fdroid/fdroid/views/apps/CategorySpan;

    .line 132
    invoke-direct {p0, p1, v0}, Lorg/fdroid/fdroid/views/apps/CategoryTextWatcher;->removeSpans(Landroid/text/Editable;Ljava/lang/Class;)V

    const-class v0, Landroid/text/style/TtsSpan;

    .line 133
    invoke-direct {p0, p1, v0}, Lorg/fdroid/fdroid/views/apps/CategoryTextWatcher;->removeSpans(Landroid/text/Editable;Ljava/lang/Class;)V

    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 137
    new-instance v1, Lorg/fdroid/fdroid/views/apps/CategorySpan;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/apps/CategoryTextWatcher;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/fdroid/fdroid/views/apps/CategorySpan;-><init>(Landroid/content/Context;)V

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x21

    .line 138
    invoke-interface {p1, v1, v3, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 142
    invoke-interface {p1, v3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 143
    new-instance v1, Landroid/text/style/TtsSpan$TextBuilder;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/apps/CategoryTextWatcher;->context:Landroid/content/Context;

    sget v5, Lorg/fdroid/fdroid/R$string;->tts_category_name:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/style/TtsSpan$TextBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v1}, Landroid/text/style/TtsSpan$Builder;->build()Landroid/text/style/TtsSpan;

    move-result-object v0

    .line 145
    invoke-interface {p1, v0, v3, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return-void
.end method

.method private removeLeadingCharacters(Landroid/text/Editable;I)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/CategoryTextWatcher;->widget:Landroid/widget/EditText;

    .line 115
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 116
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v0, p2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    :cond_0
    const/4 v0, 0x0

    const-string v1, ""

    .line 117
    invoke-interface {p1, v0, p2, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/CategoryTextWatcher;->widget:Landroid/widget/EditText;

    .line 118
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private removeSpans(Landroid/text/Editable;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Editable;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 153
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0, p2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    .line 154
    array-length v0, p2

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 155
    invoke-interface {p1, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    iget v0, p0, Lorg/fdroid/fdroid/views/apps/CategoryTextWatcher;->removeTo:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ltz v0, :cond_0

    .line 95
    invoke-direct {p0, p1, v0}, Lorg/fdroid/fdroid/views/apps/CategoryTextWatcher;->removeLeadingCharacters(Landroid/text/Editable;I)V

    iput v2, p0, Lorg/fdroid/fdroid/views/apps/CategoryTextWatcher;->removeTo:I

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/fdroid/fdroid/views/apps/CategoryTextWatcher;->requiresSpanRecalculation:Z

    if-eqz v0, :cond_1

    .line 98
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/apps/CategoryTextWatcher;->prepareSpans(Landroid/text/Editable;)V

    iput-boolean v1, p0, Lorg/fdroid/fdroid/views/apps/CategoryTextWatcher;->requiresSpanRecalculation:Z

    .line 102
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    .line 103
    :cond_2
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-ne v0, v2, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v0, 0x1

    .line 105
    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 104
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 105
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/CategoryTextWatcher;->listener:Lorg/fdroid/fdroid/views/apps/CategoryTextWatcher$SearchTermsChangedListener;

    .line 106
    invoke-interface {v0, v3, p1}, Lorg/fdroid/fdroid/views/apps/CategoryTextWatcher$SearchTermsChangedListener;->onSearchTermsChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    const/4 p4, -0x1

    iput p4, p0, Lorg/fdroid/fdroid/views/apps/CategoryTextWatcher;->removeTo:I

    const/4 p4, 0x1

    if-lez p3, :cond_0

    move v0, p4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez p2, :cond_1

    if-eqz v0, :cond_1

    return-void

    .line 63
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_2

    const/16 v0, 0x3a

    .line 64
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    add-int v2, p2, p3

    if-ge v1, v2, :cond_2

    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-lt p1, p2, :cond_2

    add-int/2addr p2, p3

    sub-int/2addr p2, p4

    iput p2, p0, Lorg/fdroid/fdroid/views/apps/CategoryTextWatcher;->removeTo:I

    :cond_2
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    if-lez p4, :cond_0

    add-int/2addr p4, p2

    .line 79
    invoke-interface {p1, p2, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    const/16 p4, 0x3a

    invoke-virtual {p3, p4}, Ljava/lang/String;->indexOf(I)I

    move-result p3

    if-ltz p3, :cond_0

    const/4 p3, 0x0

    .line 81
    invoke-interface {p1, p3, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/fdroid/fdroid/views/apps/CategoryTextWatcher;->requiresSpanRecalculation:Z

    :cond_0
    return-void
.end method
