.class public final synthetic Lorg/fdroid/fdroid/work/FDroidMetricsWorker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$RawEvent;

    check-cast p2, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$RawEvent;

    invoke-static {p1, p2}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker;->$r8$lambda$eBUr6-vRMXASJpO23McZbEYZgSw(Lorg/fdroid/fdroid/work/FDroidMetricsWorker$RawEvent;Lorg/fdroid/fdroid/work/FDroidMetricsWorker$RawEvent;)I

    move-result p1

    return p1
.end method
