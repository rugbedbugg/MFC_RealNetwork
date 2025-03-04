.class public Lorg/fdroid/fdroid/views/LiveSeekBarPreference;
.super Landroidx/preference/SeekBarPreference;
.source "LiveSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/views/LiveSeekBarPreference$SeekBarLiveUpdater;
    }
.end annotation


# instance fields
.field private seekBarLiveUpdater:Lorg/fdroid/fdroid/views/LiveSeekBarPreference$SeekBarLiveUpdater;

.field private trackingTouch:Z

.field private value:I


# direct methods
.method static bridge synthetic -$$Nest$fgetseekBarLiveUpdater(Lorg/fdroid/fdroid/views/LiveSeekBarPreference;)Lorg/fdroid/fdroid/views/LiveSeekBarPreference$SeekBarLiveUpdater;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/LiveSeekBarPreference;->seekBarLiveUpdater:Lorg/fdroid/fdroid/views/LiveSeekBarPreference$SeekBarLiveUpdater;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettrackingTouch(Lorg/fdroid/fdroid/views/LiveSeekBarPreference;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/fdroid/fdroid/views/LiveSeekBarPreference;->trackingTouch:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetvalue(Lorg/fdroid/fdroid/views/LiveSeekBarPreference;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/fdroid/fdroid/views/LiveSeekBarPreference;->value:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputtrackingTouch(Lorg/fdroid/fdroid/views/LiveSeekBarPreference;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/fdroid/fdroid/views/LiveSeekBarPreference;->trackingTouch:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvalue(Lorg/fdroid/fdroid/views/LiveSeekBarPreference;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/fdroid/fdroid/views/LiveSeekBarPreference;->value:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroidx/preference/SeekBarPreference;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/fdroid/fdroid/views/LiveSeekBarPreference;->value:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroidx/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/fdroid/fdroid/views/LiveSeekBarPreference;->value:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/fdroid/fdroid/views/LiveSeekBarPreference;->value:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/fdroid/fdroid/views/LiveSeekBarPreference;->value:I

    return-void
.end method

.method static synthetic access$000(Lorg/fdroid/fdroid/views/LiveSeekBarPreference;I)Z
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistInt(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lorg/fdroid/fdroid/views/LiveSeekBarPreference;I)Z
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistInt(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getValue()I
    .locals 2

    iget v0, p0, Lorg/fdroid/fdroid/views/LiveSeekBarPreference;->value:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 93
    invoke-super {p0}, Landroidx/preference/SeekBarPreference;->getValue()I

    move-result v0

    iput v0, p0, Lorg/fdroid/fdroid/views/LiveSeekBarPreference;->value:I

    :cond_0
    iget v0, p0, Lorg/fdroid/fdroid/views/LiveSeekBarPreference;->value:I

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 42
    invoke-super {p0, p1}, Landroidx/preference/SeekBarPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    sget v0, Lorg/fdroid/fdroid/R$id;->seekbar_value:I

    .line 44
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lorg/fdroid/fdroid/R$id;->seekbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/views/SeekBarForegroundThumb;

    .line 48
    new-instance v1, Lorg/fdroid/fdroid/views/LiveSeekBarPreference$1;

    invoke-direct {v1, p0, p1}, Lorg/fdroid/fdroid/views/LiveSeekBarPreference$1;-><init>(Lorg/fdroid/fdroid/views/LiveSeekBarPreference;Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget p1, p0, Lorg/fdroid/fdroid/views/LiveSeekBarPreference;->value:I

    .line 75
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 77
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 78
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const p1, 0x3e99999a    # 0.3f

    .line 80
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method setSeekBarLiveUpdater(Lorg/fdroid/fdroid/views/LiveSeekBarPreference$SeekBarLiveUpdater;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/LiveSeekBarPreference;->seekBarLiveUpdater:Lorg/fdroid/fdroid/views/LiveSeekBarPreference$SeekBarLiveUpdater;

    return-void
.end method

.method public setValue(I)V
    .locals 0

    .line 86
    invoke-super {p0, p1}, Landroidx/preference/SeekBarPreference;->setValue(I)V

    iput p1, p0, Lorg/fdroid/fdroid/views/LiveSeekBarPreference;->value:I

    return-void
.end method
