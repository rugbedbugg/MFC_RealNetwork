.class public Lorg/fdroid/fdroid/views/apps/AppListItemState;
.super Ljava/lang/Object;
.source "AppListItemState.java"


# instance fields
.field private actionButtonText:Ljava/lang/CharSequence;

.field private final app:Lorg/fdroid/fdroid/data/App;

.field private checkBoxChecked:Z

.field private mainText:Ljava/lang/CharSequence;

.field private progressCurrent:I

.field private progressMax:I

.field private secondaryButtonText:Ljava/lang/CharSequence;

.field private secondaryStatusText:Ljava/lang/CharSequence;

.field private showCheckBox:Z

.field private showInstallButton:Z

.field private statusText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lorg/fdroid/fdroid/data/App;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemState;->mainText:Ljava/lang/CharSequence;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemState;->actionButtonText:Ljava/lang/CharSequence;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemState;->secondaryButtonText:Ljava/lang/CharSequence;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemState;->statusText:Ljava/lang/CharSequence;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemState;->secondaryStatusText:Ljava/lang/CharSequence;

    const/4 v0, -0x1

    iput v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemState;->progressCurrent:I

    iput v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemState;->progressMax:I

    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemState;->app:Lorg/fdroid/fdroid/data/App;

    return-void
.end method


# virtual methods
.method public getActionButtonText()Ljava/lang/CharSequence;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemState;->actionButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getMainText()Ljava/lang/CharSequence;
    .locals 2

    iget-boolean v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemState;->showCheckBox:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemState;->app:Lorg/fdroid/fdroid/data/App;

    .line 70
    iget-object v0, v0, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemState;->mainText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemState;->app:Lorg/fdroid/fdroid/data/App;

    .line 74
    iget-object v1, v0, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    iget-object v0, v0, Lorg/fdroid/fdroid/data/App;->summary:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/fdroid/fdroid/Utils;->formatAppNameAndSummary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getProgressCurrent()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemState;->progressCurrent:I

    return v0
.end method

.method public getProgressMax()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemState;->progressMax:I

    return v0
.end method

.method public getSecondaryButtonText()Ljava/lang/CharSequence;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemState;->secondaryButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSecondaryStatusText()Ljava/lang/CharSequence;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemState;->secondaryStatusText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getStatusText()Ljava/lang/CharSequence;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemState;->statusText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isCheckBoxChecked()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemState;->checkBoxChecked:Z

    return v0
.end method

.method public isProgressIndeterminate()Z
    .locals 1

    .line 0
    iget v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemState;->progressMax:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCheckBoxStatus(Z)Lorg/fdroid/fdroid/views/apps/AppListItemState;
    .locals 1

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemState;->showCheckBox:Z

    iput-boolean p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemState;->checkBoxChecked:Z

    return-object p0
.end method

.method public setMainText(Ljava/lang/CharSequence;)Lorg/fdroid/fdroid/views/apps/AppListItemState;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemState;->mainText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setProgress(II)Lorg/fdroid/fdroid/views/apps/AppListItemState;
    .locals 0

    .line 0
    iput p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemState;->progressCurrent:I

    iput p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemState;->progressMax:I

    return-object p0
.end method

.method public setSecondaryStatusText(Ljava/lang/CharSequence;)Lorg/fdroid/fdroid/views/apps/AppListItemState;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemState;->secondaryStatusText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setShowInstallButton(Z)Lorg/fdroid/fdroid/views/apps/AppListItemState;
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemState;->showInstallButton:Z

    return-object p0
.end method

.method public setStatusText(Ljava/lang/CharSequence;)Lorg/fdroid/fdroid/views/apps/AppListItemState;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemState;->statusText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public shouldShowActionButton()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemState;->actionButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldShowCheckBox()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemState;->showCheckBox:Z

    return v0
.end method

.method public shouldShowInstall()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemState;->showInstallButton:Z

    return v0
.end method

.method public shouldShowSecondaryButton()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemState;->secondaryButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showActionButton(Ljava/lang/CharSequence;)Lorg/fdroid/fdroid/views/apps/AppListItemState;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemState;->actionButtonText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public showProgress()Z
    .locals 1

    .line 0
    iget v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemState;->progressCurrent:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showSecondaryButton(Ljava/lang/CharSequence;)Lorg/fdroid/fdroid/views/apps/AppListItemState;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemState;->secondaryButtonText:Ljava/lang/CharSequence;

    return-object p0
.end method
