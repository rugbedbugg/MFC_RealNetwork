.class public Lkellinwood/security/zipsigner/ProgressHelper;
.super Ljava/lang/Object;
.source "ProgressHelper.java"


# instance fields
.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lkellinwood/security/zipsigner/ProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private progressCurrentItem:I

.field private progressEvent:Lkellinwood/security/zipsigner/ProgressEvent;

.field private progressTotalItems:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lkellinwood/security/zipsigner/ProgressHelper;->progressTotalItems:I

    iput v0, p0, Lkellinwood/security/zipsigner/ProgressHelper;->progressCurrentItem:I

    .line 25
    new-instance v0, Lkellinwood/security/zipsigner/ProgressEvent;

    invoke-direct {v0}, Lkellinwood/security/zipsigner/ProgressEvent;-><init>()V

    iput-object v0, p0, Lkellinwood/security/zipsigner/ProgressHelper;->progressEvent:Lkellinwood/security/zipsigner/ProgressEvent;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkellinwood/security/zipsigner/ProgressHelper;->listeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public declared-synchronized addProgressListener(Lkellinwood/security/zipsigner/ProgressListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkellinwood/security/zipsigner/ProgressHelper;->listeners:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 70
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lkellinwood/security/zipsigner/ProgressHelper;->listeners:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getProgressCurrentItem()I
    .locals 1

    .line 0
    iget v0, p0, Lkellinwood/security/zipsigner/ProgressHelper;->progressCurrentItem:I

    return v0
.end method

.method public getProgressTotalItems()I
    .locals 1

    .line 0
    iget v0, p0, Lkellinwood/security/zipsigner/ProgressHelper;->progressTotalItems:I

    return v0
.end method

.method public initProgress()V
    .locals 1

    .line 0
    const/16 v0, 0x2710

    iput v0, p0, Lkellinwood/security/zipsigner/ProgressHelper;->progressTotalItems:I

    const/4 v0, 0x0

    iput v0, p0, Lkellinwood/security/zipsigner/ProgressHelper;->progressCurrentItem:I

    return-void
.end method

.method public progress(ILjava/lang/String;)V
    .locals 4

    iget v0, p0, Lkellinwood/security/zipsigner/ProgressHelper;->progressCurrentItem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkellinwood/security/zipsigner/ProgressHelper;->progressCurrentItem:I

    iget v1, p0, Lkellinwood/security/zipsigner/ProgressHelper;->progressTotalItems:I

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x64

    .line 54
    div-int/2addr v0, v1

    :goto_0
    iget-object v1, p0, Lkellinwood/security/zipsigner/ProgressHelper;->listeners:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkellinwood/security/zipsigner/ProgressListener;

    iget-object v3, p0, Lkellinwood/security/zipsigner/ProgressHelper;->progressEvent:Lkellinwood/security/zipsigner/ProgressEvent;

    .line 58
    invoke-virtual {v3, p2}, Lkellinwood/security/zipsigner/ProgressEvent;->setMessage(Ljava/lang/String;)V

    iget-object v3, p0, Lkellinwood/security/zipsigner/ProgressHelper;->progressEvent:Lkellinwood/security/zipsigner/ProgressEvent;

    .line 59
    invoke-virtual {v3, v0}, Lkellinwood/security/zipsigner/ProgressEvent;->setPercentDone(I)V

    iget-object v3, p0, Lkellinwood/security/zipsigner/ProgressHelper;->progressEvent:Lkellinwood/security/zipsigner/ProgressEvent;

    .line 60
    invoke-virtual {v3, p1}, Lkellinwood/security/zipsigner/ProgressEvent;->setPriority(I)V

    iget-object v3, p0, Lkellinwood/security/zipsigner/ProgressHelper;->progressEvent:Lkellinwood/security/zipsigner/ProgressEvent;

    .line 61
    invoke-interface {v2, v3}, Lkellinwood/security/zipsigner/ProgressListener;->onProgress(Lkellinwood/security/zipsigner/ProgressEvent;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public declared-synchronized removeProgressListener(Lkellinwood/security/zipsigner/ProgressListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkellinwood/security/zipsigner/ProgressHelper;->listeners:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 77
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput-object v0, p0, Lkellinwood/security/zipsigner/ProgressHelper;->listeners:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProgressCurrentItem(I)V
    .locals 0

    .line 0
    iput p1, p0, Lkellinwood/security/zipsigner/ProgressHelper;->progressCurrentItem:I

    return-void
.end method

.method public setProgressTotalItems(I)V
    .locals 0

    .line 0
    iput p1, p0, Lkellinwood/security/zipsigner/ProgressHelper;->progressTotalItems:I

    return-void
.end method
