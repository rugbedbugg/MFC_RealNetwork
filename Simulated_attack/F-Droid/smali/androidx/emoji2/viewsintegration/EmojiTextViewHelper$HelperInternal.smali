.class abstract Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal;
.super Ljava/lang/Object;
.source "EmojiTextViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HelperInternal"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getFilters([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
.end method

.method public abstract isEnabled()Z
.end method

.method abstract setAllCaps(Z)V
.end method

.method abstract setEnabled(Z)V
.end method

.method abstract wrapTransformationMethod(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
.end method
