.class public Lorg/fdroid/fdroid/panic/CalculatorActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CalculatorActivity.java"


# static fields
.field private static final DIVIDED:Ljava/lang/String; = "\u00f7"

.field private static final MINUS:Ljava/lang/String; = "-"

.field private static final PERCENT:Ljava/lang/String; = "%"

.field private static final PLUS:Ljava/lang/String; = "+"

.field private static final TIMES:Ljava/lang/String; = "\u00d7"


# instance fields
.field private lastOp:Ljava/lang/String;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private containsBinaryOperator(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "\u00d7"

    .line 150
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u00f7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private eval(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v0, ""

    iget-object v1, p0, Lorg/fdroid/fdroid/panic/CalculatorActivity;->lastOp:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 113
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/fdroid/fdroid/panic/CalculatorActivity;->lastOp:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/fdroid/fdroid/panic/CalculatorActivity;->lastOp:Ljava/lang/String;

    .line 119
    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 123
    :try_start_0
    aget-object v4, v2, v3

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x1

    .line 124
    aget-object v2, v2, v6

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v9, -0x1

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move v6, v9

    goto :goto_1

    :sswitch_0
    const-string v2, "\u00f7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x3

    goto :goto_1

    :sswitch_1
    const-string v2, "\u00d7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x2

    goto :goto_1

    :sswitch_2
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :sswitch_3
    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v6, v3

    :cond_3
    :goto_1
    packed-switch v6, :pswitch_data_0

    const-string v0, "Error: Unknown Operation"

    .line 141
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-object p1

    :pswitch_0
    const-wide/16 v1, 0x0

    cmpl-double p1, v7, v1

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    div-double/2addr v4, v7

    .line 139
    invoke-direct {p0, v4, v5}, Lorg/fdroid/fdroid/panic/CalculatorActivity;->toString(D)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    mul-double/2addr v4, v7

    .line 136
    invoke-direct {p0, v4, v5}, Lorg/fdroid/fdroid/panic/CalculatorActivity;->toString(D)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    sub-double/2addr v4, v7

    .line 134
    invoke-direct {p0, v4, v5}, Lorg/fdroid/fdroid/panic/CalculatorActivity;->toString(D)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    add-double/2addr v4, v7

    .line 132
    invoke-direct {p0, v4, v5}, Lorg/fdroid/fdroid/panic/CalculatorActivity;->toString(D)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    return-object v0

    :cond_5
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_3
        0x2d -> :sswitch_2
        0xd7 -> :sswitch_1
        0xf7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private toString(D)Ljava/lang/String;
    .locals 1

    .line 154
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x2

    if-le p2, v0, :cond_0

    const-string p2, ".0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 156
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public c(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lorg/fdroid/fdroid/panic/CalculatorActivity;->textView:Landroid/widget/TextView;

    .line 63
    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lorg/fdroid/fdroid/panic/CalculatorActivity;->textView:Landroid/widget/TextView;

    .line 64
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/fdroid/fdroid/panic/CalculatorActivity;->textView:Landroid/widget/TextView;

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public ce(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/fdroid/fdroid/panic/CalculatorActivity;->textView:Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public number(Landroid/view/View;)V
    .locals 3

    .line 70
    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/fdroid/fdroid/panic/CalculatorActivity;->textView:Landroid/widget/TextView;

    .line 71
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "%s%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-static {p0}, Lorg/fdroid/fdroid/panic/HidingManager;->getUnhidePin(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {p0}, Lorg/fdroid/fdroid/panic/HidingManager;->show(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/panic/CalculatorActivity;->textView:Landroid/widget/TextView;

    .line 78
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/FDroidApp;

    .line 43
    invoke-virtual {v0, p0}, Lorg/fdroid/fdroid/FDroidApp;->setSecureWindow(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 45
    invoke-virtual {v0, p0}, Lorg/fdroid/fdroid/FDroidApp;->applyPureBlackBackgroundInDarkTheme(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 47
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lorg/fdroid/fdroid/R$layout;->activity_calculator:I

    .line 48
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    sget p1, Lorg/fdroid/fdroid/R$id;->toolbar:I

    .line 50
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 51
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    sget p1, Lorg/fdroid/fdroid/R$id;->textView:I

    .line 53
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/fdroid/fdroid/panic/CalculatorActivity;->textView:Landroid/widget/TextView;

    return-void
.end method

.method public op(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lorg/fdroid/fdroid/panic/CalculatorActivity;->textView:Landroid/widget/TextView;

    .line 82
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/fdroid/fdroid/panic/CalculatorActivity;->containsBinaryOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 91
    :cond_1
    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/panic/CalculatorActivity;->containsBinaryOperator(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iput-object p1, p0, Lorg/fdroid/fdroid/panic/CalculatorActivity;->lastOp:Ljava/lang/String;

    iget-object v1, p0, Lorg/fdroid/fdroid/panic/CalculatorActivity;->textView:Landroid/widget/TextView;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    aput-object p1, v4, v2

    const-string p1, "%s%s"

    .line 96
    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const-string v1, "%"

    .line 97
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 100
    :try_start_0
    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/panic/CalculatorActivity;->eval(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v0, 0x0

    :goto_0
    iget-object p1, p0, Lorg/fdroid/fdroid/panic/CalculatorActivity;->textView:Landroid/widget/TextView;

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    .line 104
    invoke-direct {p0, v0, v1}, Lorg/fdroid/fdroid/panic/CalculatorActivity;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    const-string v1, "="

    .line 105
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/fdroid/fdroid/panic/CalculatorActivity;->textView:Landroid/widget/TextView;

    .line 106
    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/panic/CalculatorActivity;->eval(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    const-string p1, "Error: Unknown Operation"

    .line 108
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method
