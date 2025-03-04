.class Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;
.super Ljava/lang/Object;
.source "FDroidMetricsWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/work/FDroidMetricsWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MatomoEvent"
.end annotation


# instance fields
.field action:Ljava/lang/String;

.field category:Ljava/lang/String;

.field name:Ljava/lang/String;

.field final period_end:J

.field final period_start:J

.field times:J


# direct methods
.method static bridge synthetic -$$Nest$mgetJSONObject(Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;)Lorg/json/JSONObject;
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(J)V
    .locals 2

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->times:J

    .line 342
    invoke-static {p1, p2}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker;->toCleanInsightsTimestamp(J)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->period_end:J

    const-wide/32 v0, 0x93a80

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->period_start:J

    return-void
.end method

.method constructor <init>(Lorg/fdroid/fdroid/work/FDroidMetricsWorker$RawEvent;)V
    .locals 2

    .line 347
    iget-wide v0, p1, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$RawEvent;->timestamp:J

    invoke-direct {p0, v0, v1}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;-><init>(J)V

    const-string v0, "package"

    iput-object v0, p0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->category:Ljava/lang/String;

    .line 349
    iget-object v0, p1, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$RawEvent;->action:Ljava/lang/String;

    iput-object v0, p0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->action:Ljava/lang/String;

    .line 350
    iget-object p1, p1, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$RawEvent;->applicationId:Ljava/lang/String;

    iput-object p1, p0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->name:Ljava/lang/String;

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->times:J

    return-void
.end method

.method private getJSONObject()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 355
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "category"

    iget-object v2, p0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->category:Ljava/lang/String;

    .line 356
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "action"

    iget-object v2, p0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->action:Ljava/lang/String;

    .line 357
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "name"

    iget-object v2, p0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->name:Ljava/lang/String;

    .line 358
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "period_start"

    iget-wide v2, p0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->period_start:J

    .line 359
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "period_end"

    iget-wide v2, p0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->period_end:J

    .line 360
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "times"

    iget-wide v2, p0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->times:J

    .line 361
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 368
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 369
    :cond_1
    check-cast p1, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;

    iget-wide v2, p0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->period_start:J

    .line 370
    iget-wide v4, p1, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->period_start:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->period_end:J

    iget-wide v4, p1, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->period_end:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->category:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->category:Ljava/lang/String;

    .line 372
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->action:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->action:Ljava/lang/String;

    .line 373
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->name:Ljava/lang/String;

    iget-object p1, p1, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->name:Ljava/lang/String;

    .line 374
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->category:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->action:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-wide v1, p0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->period_start:J

    .line 379
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->period_end:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->times:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
