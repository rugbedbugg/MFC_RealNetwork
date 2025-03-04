.class public Lorg/fdroid/fdroid/Utils$Profiler;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Profiler"
.end annotation


# instance fields
.field public final logTag:Ljava/lang/String;

.field public final startTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/fdroid/fdroid/Utils$Profiler;->startTime:J

    iput-object p1, p0, Lorg/fdroid/fdroid/Utils$Profiler;->logTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 5

    .line 763
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/fdroid/fdroid/Utils$Profiler;->startTime:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lorg/fdroid/fdroid/Utils$Profiler;->logTag:Ljava/lang/String;

    .line 764
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms] "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
