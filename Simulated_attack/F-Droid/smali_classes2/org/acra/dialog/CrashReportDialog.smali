.class public Lorg/acra/dialog/CrashReportDialog;
.super Landroid/app/Activity;
.source "CrashReportDialog.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/acra/dialog/CrashReportDialog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\r\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0017\u0018\u0000 .2\u00020\u00012\u00020\u0002:\u0001.B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0014J\u0012\u0010\u001b\u001a\u00020\u00182\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0014J\u0012\u0010\u001e\u001a\u00020\u001a2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0014J\n\u0010\u001f\u001a\u0004\u0018\u00010\u001aH\u0014J\u0012\u0010 \u001a\u00020\u00152\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0014J\n\u0010#\u001a\u0004\u0018\u00010\u001aH\u0014J\u0012\u0010$\u001a\u00020\u00152\u0008\u0010%\u001a\u0004\u0018\u00010\"H\u0014J\u0008\u0010&\u001a\u00020\u001aH\u0014J\u0008\u0010\'\u001a\u00020\u000fH\u0014J\u0018\u0010(\u001a\u00020\u00182\u0006\u0010\u0004\u001a\u00020)2\u0006\u0010*\u001a\u00020\u000fH\u0016J\u0012\u0010+\u001a\u00020\u00182\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0014J\u0010\u0010,\u001a\u00020\u00182\u0006\u0010-\u001a\u00020\u001dH\u0015R\u001a\u0010\u0004\u001a\u00020\u0005X\u0094.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0092.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0092.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0092\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0092.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0092.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0092\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0015X\u0092\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lorg/acra/dialog/CrashReportDialog;",
        "Landroid/app/Activity;",
        "Landroid/content/DialogInterface$OnClickListener;",
        "()V",
        "dialog",
        "Landroid/app/AlertDialog;",
        "getDialog",
        "()Landroid/app/AlertDialog;",
        "setDialog",
        "(Landroid/app/AlertDialog;)V",
        "dialogConfiguration",
        "Lorg/acra/config/DialogConfiguration;",
        "helper",
        "Lorg/acra/dialog/CrashReportDialogHelper;",
        "padding",
        "",
        "scrollable",
        "Landroid/widget/LinearLayout;",
        "sharedPreferencesFactory",
        "Lorg/acra/prefs/SharedPreferencesFactory;",
        "userCommentView",
        "Landroid/widget/EditText;",
        "userEmailView",
        "addViewToDialog",
        "",
        "v",
        "Landroid/view/View;",
        "buildAndShowDialog",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "buildCustomView",
        "getCommentLabel",
        "getCommentPrompt",
        "savedComment",
        "",
        "getEmailLabel",
        "getEmailPrompt",
        "savedEmail",
        "getMainView",
        "loadPaddingFromTheme",
        "onClick",
        "Landroid/content/DialogInterface;",
        "which",
        "onCreate",
        "onSaveInstanceState",
        "outState",
        "Companion",
        "acra-dialog_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lorg/acra/dialog/CrashReportDialog$Companion;


# instance fields
.field protected dialog:Landroid/app/AlertDialog;

.field private dialogConfiguration:Lorg/acra/config/DialogConfiguration;

.field private helper:Lorg/acra/dialog/CrashReportDialogHelper;

.field private padding:I

.field private scrollable:Landroid/widget/LinearLayout;

.field private sharedPreferencesFactory:Lorg/acra/prefs/SharedPreferencesFactory;

.field private userCommentView:Landroid/widget/EditText;

.field private userEmailView:Landroid/widget/EditText;


# direct methods
.method public static synthetic $r8$lambda$F-AstOwxTCOb8KqT4FW9CIKYwkE(Lorg/acra/dialog/CrashReportDialog;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/acra/dialog/CrashReportDialog;->buildAndShowDialog$lambda$4(Lorg/acra/dialog/CrashReportDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/acra/dialog/CrashReportDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/acra/dialog/CrashReportDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/acra/dialog/CrashReportDialog;->Companion:Lorg/acra/dialog/CrashReportDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static final buildAndShowDialog$lambda$4(Lorg/acra/dialog/CrashReportDialog;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected addViewToDialog(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->scrollable:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const-string v0, "scrollable"

    .line 138
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected buildAndShowDialog(Landroid/os/Bundle;)V
    .locals 5

    .line 83
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lorg/acra/dialog/CrashReportDialog;->dialogConfiguration:Lorg/acra/config/DialogConfiguration;

    const-string v2, "dialogConfiguration"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 84
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    invoke-virtual {v1}, Lorg/acra/config/DialogConfiguration;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_2
    iget-object v1, p0, Lorg/acra/dialog/CrashReportDialog;->dialogConfiguration:Lorg/acra/config/DialogConfiguration;

    if-nez v1, :cond_3

    .line 85
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_3
    invoke-virtual {v1}, Lorg/acra/config/DialogConfiguration;->getResIcon()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 86
    :cond_4
    invoke-virtual {p0, p1}, Lorg/acra/dialog/CrashReportDialog;->buildCustomView(Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v1, p0, Lorg/acra/dialog/CrashReportDialog;->dialogConfiguration:Lorg/acra/config/DialogConfiguration;

    if-nez v1, :cond_5

    .line 87
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_5
    invoke-virtual {v1}, Lorg/acra/config/DialogConfiguration;->getPositiveButtonText()Ljava/lang/String;

    move-result-object v1

    const-string v4, "getString(...)"

    if-nez v1, :cond_6

    const v1, 0x104000a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v1, p0, Lorg/acra/dialog/CrashReportDialog;->dialogConfiguration:Lorg/acra/config/DialogConfiguration;

    if-nez v1, :cond_7

    .line 88
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v3, v1

    :goto_1
    invoke-virtual {v3}, Lorg/acra/config/DialogConfiguration;->getNegativeButtonText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p1, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 89
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const-string v0, "create(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/acra/dialog/CrashReportDialog;->setDialog(Landroid/app/AlertDialog;)V

    .line 90
    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->getDialog()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 91
    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->getDialog()Landroid/app/AlertDialog;

    move-result-object p1

    new-instance v0, Lorg/acra/dialog/CrashReportDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/acra/dialog/CrashReportDialog$$ExternalSyntheticLambda0;-><init>(Lorg/acra/dialog/CrashReportDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 94
    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->getDialog()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected buildCustomView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 98
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lorg/acra/dialog/CrashReportDialog;->padding:I

    .line 100
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 101
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    .line 102
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 103
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v1, p0, Lorg/acra/dialog/CrashReportDialog;->scrollable:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "scrollable"

    .line 104
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 106
    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->getMainView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/acra/dialog/CrashReportDialog;->addViewToDialog(Landroid/view/View;)V

    .line 109
    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->getCommentLabel()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 110
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    iget v4, p0, Lorg/acra/dialog/CrashReportDialog;->padding:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 111
    invoke-virtual {p0, v1}, Lorg/acra/dialog/CrashReportDialog;->addViewToDialog(Landroid/view/View;)V

    if-eqz p1, :cond_1

    const-string v1, "comment"

    .line 114
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 116
    :goto_0
    invoke-virtual {p0, v1}, Lorg/acra/dialog/CrashReportDialog;->getCommentPrompt(Ljava/lang/CharSequence;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/acra/dialog/CrashReportDialog;->addViewToDialog(Landroid/view/View;)V

    iput-object v1, p0, Lorg/acra/dialog/CrashReportDialog;->userCommentView:Landroid/widget/EditText;

    .line 120
    :cond_2
    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->getEmailLabel()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 121
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    iget v4, p0, Lorg/acra/dialog/CrashReportDialog;->padding:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 122
    invoke-virtual {p0, v1}, Lorg/acra/dialog/CrashReportDialog;->addViewToDialog(Landroid/view/View;)V

    if-eqz p1, :cond_3

    const-string v1, "email"

    .line 125
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    :cond_3
    invoke-virtual {p0, v2}, Lorg/acra/dialog/CrashReportDialog;->getEmailPrompt(Ljava/lang/CharSequence;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/acra/dialog/CrashReportDialog;->addViewToDialog(Landroid/view/View;)V

    iput-object p1, p0, Lorg/acra/dialog/CrashReportDialog;->userEmailView:Landroid/widget/EditText;

    :cond_4
    return-object v0
.end method

.method protected getCommentLabel()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->dialogConfiguration:Lorg/acra/config/DialogConfiguration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "dialogConfiguration"

    .line 156
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lorg/acra/config/DialogConfiguration;->getCommentPrompt()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-object v1
.end method

.method protected getCommentPrompt(Ljava/lang/CharSequence;)Landroid/widget/EditText;
    .locals 2

    .line 166
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    .line 167
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    if-eqz p1, :cond_0

    .line 168
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object v0
.end method

.method protected getDialog()Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "dialog"

    .line 59
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getEmailLabel()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->dialogConfiguration:Lorg/acra/config/DialogConfiguration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "dialogConfiguration"

    .line 178
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lorg/acra/config/DialogConfiguration;->getEmailPrompt()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-object v1
.end method

.method protected getEmailPrompt(Ljava/lang/CharSequence;)Landroid/widget/EditText;
    .locals 3

    .line 188
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 189
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    const/16 v1, 0x21

    .line 190
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/acra/dialog/CrashReportDialog;->sharedPreferencesFactory:Lorg/acra/prefs/SharedPreferencesFactory;

    if-nez p1, :cond_0

    const-string p1, "sharedPreferencesFactory"

    .line 191
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lorg/acra/prefs/SharedPreferencesFactory;->create()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "acra.user.email"

    const-string v2, ""

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method protected getMainView()Landroid/view/View;
    .locals 4

    .line 147
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lorg/acra/dialog/CrashReportDialog;->dialogConfiguration:Lorg/acra/config/DialogConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "dialogConfiguration"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Lorg/acra/config/DialogConfiguration;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    move-object v2, v1

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-object v0
.end method

.method protected loadPaddingFromTheme()I
    .locals 4

    .line 227
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 228
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10104d3

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, -0x1

    const-string v0, "helper"

    const/4 v1, 0x0

    if-ne p2, p1, :cond_5

    iget-object p1, p0, Lorg/acra/dialog/CrashReportDialog;->userCommentView:Landroid/widget/EditText;

    const-string p2, ""

    if-eqz p1, :cond_0

    .line 198
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    move-object p1, p2

    :cond_1
    iget-object v2, p0, Lorg/acra/dialog/CrashReportDialog;->sharedPreferencesFactory:Lorg/acra/prefs/SharedPreferencesFactory;

    if-nez v2, :cond_2

    const-string v2, "sharedPreferencesFactory"

    .line 201
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_2
    invoke-virtual {v2}, Lorg/acra/prefs/SharedPreferencesFactory;->create()Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lorg/acra/dialog/CrashReportDialog;->userEmailView:Landroid/widget/EditText;

    const-string v4, "acra.user.email"

    if-eqz v3, :cond_3

    .line 202
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_3
    invoke-interface {v2, v4, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    iget-object p2, p0, Lorg/acra/dialog/CrashReportDialog;->helper:Lorg/acra/dialog/CrashReportDialogHelper;

    if-nez p2, :cond_4

    .line 204
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, p2

    :goto_1
    invoke-virtual {v1, p1, v3}, Lorg/acra/dialog/CrashReportDialogHelper;->sendCrash(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lorg/acra/dialog/CrashReportDialog;->helper:Lorg/acra/dialog/CrashReportDialogHelper;

    if-nez p1, :cond_6

    .line 206
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object v1, p1

    :goto_2
    invoke-virtual {v1}, Lorg/acra/dialog/CrashReportDialogHelper;->cancelReports()V

    .line 208
    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    :try_start_0
    new-instance v0, Lorg/acra/dialog/CrashReportDialogHelper;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "getIntent(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lorg/acra/dialog/CrashReportDialogHelper;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->helper:Lorg/acra/dialog/CrashReportDialogHelper;

    .line 65
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->scrollable:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    .line 66
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 67
    new-instance v0, Lorg/acra/prefs/SharedPreferencesFactory;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/acra/dialog/CrashReportDialog;->helper:Lorg/acra/dialog/CrashReportDialogHelper;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "helper"

    const/4 v4, 0x0

    if-nez v2, :cond_0

    :try_start_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_0
    invoke-virtual {v2}, Lorg/acra/dialog/CrashReportDialogHelper;->getConfig()Lorg/acra/config/CoreConfiguration;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/acra/prefs/SharedPreferencesFactory;-><init>(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)V

    iput-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->sharedPreferencesFactory:Lorg/acra/prefs/SharedPreferencesFactory;

    iget-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->helper:Lorg/acra/dialog/CrashReportDialogHelper;

    if-nez v0, :cond_1

    .line 68
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_1
    invoke-virtual {v0}, Lorg/acra/dialog/CrashReportDialogHelper;->getConfig()Lorg/acra/config/CoreConfiguration;

    move-result-object v0

    const-class v1, Lorg/acra/config/DialogConfiguration;

    .line 29
    invoke-static {v0, v1}, Lorg/acra/config/ConfigUtils;->getPluginConfiguration(Lorg/acra/config/CoreConfiguration;Ljava/lang/Class;)Lorg/acra/config/Configuration;

    move-result-object v0

    check-cast v0, Lorg/acra/config/DialogConfiguration;

    iput-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->dialogConfiguration:Lorg/acra/config/DialogConfiguration;

    if-nez v0, :cond_2

    const-string v0, "dialogConfiguration"

    .line 69
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v4, v0

    :goto_0
    invoke-virtual {v4}, Lorg/acra/config/DialogConfiguration;->getResTheme()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->setTheme(I)V

    .line 70
    :cond_3
    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->loadPaddingFromTheme()I

    move-result v0

    iput v0, p0, Lorg/acra/dialog/CrashReportDialog;->padding:I

    .line 71
    invoke-virtual {p0, p1}, Lorg/acra/dialog/CrashReportDialog;->buildAndShowDialog(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 73
    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->userCommentView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "comment"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->userEmailView:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "email"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected setDialog(Landroid/app/AlertDialog;)V
    .locals 1

    .line 0
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/acra/dialog/CrashReportDialog;->dialog:Landroid/app/AlertDialog;

    return-void
.end method
