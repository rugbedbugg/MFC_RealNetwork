.class final Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$TimedRunnable;
.super Ljava/lang/Object;
.source "TrampolineScheduler.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimedRunnable"
.end annotation


# instance fields
.field final count:I

.field volatile disposed:Z

.field final execTime:J

.field final run:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/Long;I)V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$TimedRunnable;->run:Ljava/lang/Runnable;

    .line 158
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$TimedRunnable;->execTime:J

    iput p3, p0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$TimedRunnable;->count:I

    return-void
.end method


# virtual methods
.method public compareTo(Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$TimedRunnable;)I
    .locals 4

    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$TimedRunnable;->execTime:J

    .line 164
    iget-wide v2, p1, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$TimedRunnable;->execTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$TimedRunnable;->count:I

    .line 166
    iget p1, p1, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$TimedRunnable;->count:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 149
    check-cast p1, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$TimedRunnable;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$TimedRunnable;->compareTo(Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$TimedRunnable;)I

    move-result p1

    return p1
.end method
