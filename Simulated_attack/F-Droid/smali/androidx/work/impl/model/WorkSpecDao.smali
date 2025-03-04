.class public interface abstract Landroidx/work/impl/model/WorkSpecDao;
.super Ljava/lang/Object;
.source "WorkSpecDao.kt"


# virtual methods
.method public abstract countNonFinishedContentUriTriggerWorkers()I
.end method

.method public abstract delete(Ljava/lang/String;)V
.end method

.method public abstract getAllEligibleWorkSpecsForScheduling(I)Ljava/util/List;
.end method

.method public abstract getEligibleWorkForScheduling(I)Ljava/util/List;
.end method

.method public abstract getEligibleWorkForSchedulingWithContentUris()Ljava/util/List;
.end method

.method public abstract getInputsFromPrerequisites(Ljava/lang/String;)Ljava/util/List;
.end method

.method public abstract getRecentlyCompletedWork(J)Ljava/util/List;
.end method

.method public abstract getRunningWork()Ljava/util/List;
.end method

.method public abstract getScheduledWork()Ljava/util/List;
.end method

.method public abstract getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;
.end method

.method public abstract getUnfinishedWorkWithName(Ljava/lang/String;)Ljava/util/List;
.end method

.method public abstract getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;
.end method

.method public abstract getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/List;
.end method

.method public abstract getWorkStatusPojoFlowForName(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
.end method

.method public abstract hasUnfinishedWork()Z
.end method

.method public abstract incrementPeriodCount(Ljava/lang/String;)V
.end method

.method public abstract incrementWorkSpecRunAttemptCount(Ljava/lang/String;)I
.end method

.method public abstract insertWorkSpec(Landroidx/work/impl/model/WorkSpec;)V
.end method

.method public abstract markWorkSpecScheduled(Ljava/lang/String;J)I
.end method

.method public abstract resetScheduledState()I
.end method

.method public abstract resetWorkSpecNextScheduleTimeOverride(Ljava/lang/String;I)V
.end method

.method public abstract resetWorkSpecRunAttemptCount(Ljava/lang/String;)I
.end method

.method public abstract setCancelledState(Ljava/lang/String;)I
.end method

.method public abstract setLastEnqueueTime(Ljava/lang/String;J)V
.end method

.method public abstract setOutput(Ljava/lang/String;Landroidx/work/Data;)V
.end method

.method public abstract setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I
.end method

.method public abstract setStopReason(Ljava/lang/String;I)V
.end method

.method public abstract updateWorkSpec(Landroidx/work/impl/model/WorkSpec;)V
.end method
