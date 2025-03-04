.class public Lorg/fdroid/fdroid/installer/ErrorDialogActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "ErrorDialogActivity.java"


# static fields
.field public static final EXTRA_MESSAGE:Ljava/lang/String; = "message"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "title"


# direct methods
.method public static synthetic $r8$lambda$4GIuoop7vSgJLDxcxrrbzL_X4AA(Lorg/fdroid/fdroid/installer/ErrorDialogActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/installer/ErrorDialogActivity;->lambda$onCreate$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$AQ8RKkevwjKxs2MvjspkcTvVPnA(Lorg/fdroid/fdroid/installer/ErrorDialogActivity;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/installer/ErrorDialogActivity;->lambda$onCreate$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    .line 52
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 56
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 42
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "title"

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "message"

    .line 46
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 49
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    sget v2, Lorg/fdroid/fdroid/R$style;->AppThemeDialog:I

    invoke-direct {v1, p0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 50
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v0, Lorg/fdroid/fdroid/R$string;->ok:I

    .line 51
    new-instance v2, Lorg/fdroid/fdroid/installer/ErrorDialogActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/fdroid/fdroid/installer/ErrorDialogActivity$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/installer/ErrorDialogActivity;)V

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 55
    new-instance v0, Lorg/fdroid/fdroid/installer/ErrorDialogActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/installer/ErrorDialogActivity$$ExternalSyntheticLambda1;-><init>(Lorg/fdroid/fdroid/installer/ErrorDialogActivity;)V

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 60
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v2, 0x41800000    # 16.0f

    .line 63
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v3, 0x1

    invoke-static {v3, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v2, 0x0

    .line 64
    invoke-virtual {v0, p1, p1, p1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 65
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 66
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 67
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
