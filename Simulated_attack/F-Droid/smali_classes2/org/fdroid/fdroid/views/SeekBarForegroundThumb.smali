.class public Lorg/fdroid/fdroid/views/SeekBarForegroundThumb;
.super Landroidx/appcompat/widget/AppCompatSeekBar;
.source "SeekBarForegroundThumb.java"


# instance fields
.field private tickMark:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/SeekBarForegroundThumb;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/SeekBarForegroundThumb;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/SeekBarForegroundThumb;->init(Landroid/content/Context;)V

    return-void
.end method

.method private drawTickMarks(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lorg/fdroid/fdroid/views/SeekBarForegroundThumb;->tickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 47
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    iget-object v2, p0, Lorg/fdroid/fdroid/views/SeekBarForegroundThumb;->tickMark:Landroid/graphics/drawable/Drawable;

    .line 49
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lorg/fdroid/fdroid/views/SeekBarForegroundThumb;->tickMark:Landroid/graphics/drawable/Drawable;

    .line 50
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 51
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-ltz v2, :cond_0

    .line 52
    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-ltz v3, :cond_1

    .line 53
    div-int/lit8 v1, v3, 0x2

    :cond_1
    iget-object v3, p0, Lorg/fdroid/fdroid/views/SeekBarForegroundThumb;->tickMark:Landroid/graphics/drawable/Drawable;

    neg-int v5, v2

    neg-int v6, v1

    .line 54
    invoke-virtual {v3, v5, v6, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 56
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbOffset()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    mul-int/lit8 v2, v4, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbOffset()I

    move-result v5

    sub-int/2addr v3, v5

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v3, 0x0

    :goto_1
    if-gt v3, v0, :cond_3

    .line 60
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v4

    if-eq v3, v4, :cond_2

    iget-object v4, p0, Lorg/fdroid/fdroid/views/SeekBarForegroundThumb;->tickMark:Landroid/graphics/drawable/Drawable;

    .line 61
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    const/4 v4, 0x0

    .line 63
    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 65
    :cond_3
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    sget v0, Lorg/fdroid/fdroid/R$drawable;->seekbar_tickmark:I

    .line 36
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/views/SeekBarForegroundThumb;->tickMark:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    monitor-enter p0

    .line 41
    :try_start_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 42
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/SeekBarForegroundThumb;->drawTickMarks(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
