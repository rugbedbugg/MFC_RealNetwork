.class Lorg/fdroid/fdroid/work/FDroidMetricsWorker$CleanInsightsReport;
.super Ljava/lang/Object;
.source "FDroidMetricsWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/work/FDroidMetricsWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CleanInsightsReport"
.end annotation


# instance fields
.field events:[Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;

.field final idsite:J

.field final lang:Ljava/lang/String;

.field final ua:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mgetJsonString(Lorg/fdroid/fdroid/work/FDroidMetricsWorker$CleanInsightsReport;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$CleanInsightsReport;->getJsonString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 2

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;

    iput-object v0, p0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$CleanInsightsReport;->events:[Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;

    const-wide/16 v0, 0x3

    iput-wide v0, p0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$CleanInsightsReport;->idsite:J

    .line 272
    invoke-static {}, Lorg/fdroid/fdroid/compat/LocaleCompat;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$CleanInsightsReport;->lang:Ljava/lang/String;

    .line 273
    invoke-static {}, Lorg/fdroid/fdroid/Utils;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$CleanInsightsReport;->ua:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lorg/fdroid/fdroid/work/FDroidMetricsWorker$CleanInsightsReport-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$CleanInsightsReport;-><init>()V

    return-void
.end method

.method private getJsonString()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 276
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 277
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$CleanInsightsReport;->events:[Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;

    .line 278
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 279
    invoke-static {v5}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->-$$Nest$mgetJSONObject(Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "events"

    .line 281
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "idsite"

    const-wide/16 v2, 0x3

    .line 282
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "lang"

    iget-object v2, p0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$CleanInsightsReport;->lang:Ljava/lang/String;

    .line 283
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ua"

    iget-object v2, p0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$CleanInsightsReport;->ua:Ljava/lang/String;

    .line 284
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x2

    .line 285
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
