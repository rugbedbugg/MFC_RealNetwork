.class final Landroidx/emoji2/viewsintegration/EmojiTextWatcher;
.super Ljava/lang/Object;
.source "EmojiTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private final mEditText:Landroid/widget/EditText;

.field private mEmojiReplaceStrategy:I

.field private mEnabled:Z

.field private final mExpectInitializedEmojiCompat:Z

.field private mInitCallback:Landroidx/emoji2/text/EmojiCompat$InitCallback;

.field private mMaxEmojiCount:I


# direct methods
.method constructor <init>(Landroid/widget/EditText;Z)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mMaxEmojiCount:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEmojiReplaceStrategy:I

    iput-object p1, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEditText:Landroid/widget/EditText;

    iput-boolean p2, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mExpectInitializedEmojiCompat:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEnabled:Z

    return-void
.end method

.method private shouldSkipForDisabledOrNotConfigured()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mExpectInitializedEmojiCompat:Z

    if-nez v0, :cond_0

    .line 100
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->isConfigured()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p2, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEditText:Landroid/widget/EditText;

    .line 76
    invoke-virtual {p2}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-direct {p0}, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->shouldSkipForDisabledOrNotConfigured()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    if-gt p3, p4, :cond_2

    .line 81
    instance-of p1, p1, Landroid/text/Spannable;

    if-nez p1, :cond_1

    goto :goto_0

    .line 82
    :cond_1
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    const/4 p1, 0x0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEnabled:Z

    if-eq v0, p1, :cond_1

    const/4 v0, 0x0

    iput-boolean p1, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEnabled:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
