.class public final Lorg/acra/builder/ReportBuilder;
.super Ljava/lang/Object;
.source "ReportBuilder.kt"


# instance fields
.field private final customData:Ljava/util/Map;

.field private exception:Ljava/lang/Throwable;

.field private isEndApplication:Z

.field private isSendSilently:Z

.field private message:Ljava/lang/String;

.field private uncaughtExceptionThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/acra/builder/ReportBuilder;->customData:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final build(Lorg/acra/builder/ReportExecutor;)V
    .locals 1

    const-string v0, "reportExecutor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/acra/builder/ReportBuilder;->message:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/acra/builder/ReportBuilder;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const-string v0, "Report requested by developer"

    iput-object v0, p0, Lorg/acra/builder/ReportBuilder;->message:Ljava/lang/String;

    .line 151
    :cond_0
    invoke-virtual {p1, p0}, Lorg/acra/builder/ReportExecutor;->execute(Lorg/acra/builder/ReportBuilder;)V

    return-void
.end method

.method public final customData(Ljava/util/Map;)Lorg/acra/builder/ReportBuilder;
    .locals 1

    const-string v0, "customData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/acra/builder/ReportBuilder;->customData:Ljava/util/Map;

    .line 98
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public final endApplication()Lorg/acra/builder/ReportBuilder;
    .locals 1

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/acra/builder/ReportBuilder;->isEndApplication:Z

    return-object p0
.end method

.method public final exception(Ljava/lang/Throwable;)Lorg/acra/builder/ReportBuilder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/acra/builder/ReportBuilder;->exception:Ljava/lang/Throwable;

    return-object p0
.end method

.method public final getCustomData()Ljava/util/Map;
    .locals 2

    .line 119
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/acra/builder/ReportBuilder;->customData:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final getException()Ljava/lang/Throwable;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/builder/ReportBuilder;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/builder/ReportBuilder;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getUncaughtExceptionThread()Ljava/lang/Thread;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/builder/ReportBuilder;->uncaughtExceptionThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public final isEndApplication()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/acra/builder/ReportBuilder;->isEndApplication:Z

    return v0
.end method

.method public final isSendSilently()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/acra/builder/ReportBuilder;->isSendSilently:Z

    return v0
.end method

.method public final uncaughtExceptionThread(Ljava/lang/Thread;)Lorg/acra/builder/ReportBuilder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/acra/builder/ReportBuilder;->uncaughtExceptionThread:Ljava/lang/Thread;

    return-object p0
.end method
