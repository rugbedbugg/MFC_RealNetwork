.class public final Lorg/acra/data/CrashReportDataFactory$special$$inlined$sortedBy$1;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/acra/data/CrashReportDataFactory;-><init>(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/acra/data/CrashReportDataFactory;


# direct methods
.method public constructor <init>(Lorg/acra/data/CrashReportDataFactory;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/acra/data/CrashReportDataFactory$special$$inlined$sortedBy$1;->this$0:Lorg/acra/data/CrashReportDataFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 102
    check-cast p1, Lorg/acra/collector/Collector;

    iget-object v0, p0, Lorg/acra/data/CrashReportDataFactory$special$$inlined$sortedBy$1;->this$0:Lorg/acra/data/CrashReportDataFactory;

    .line 37
    invoke-static {v0, p1}, Lorg/acra/data/CrashReportDataFactory;->access$getSafeOrder(Lorg/acra/data/CrashReportDataFactory;Lorg/acra/collector/Collector;)Lorg/acra/collector/Collector$Order;

    move-result-object p1

    .line 102
    check-cast p2, Lorg/acra/collector/Collector;

    iget-object v0, p0, Lorg/acra/data/CrashReportDataFactory$special$$inlined$sortedBy$1;->this$0:Lorg/acra/data/CrashReportDataFactory;

    .line 37
    invoke-static {v0, p2}, Lorg/acra/data/CrashReportDataFactory;->access$getSafeOrder(Lorg/acra/data/CrashReportDataFactory;Lorg/acra/collector/Collector;)Lorg/acra/collector/Collector$Order;

    move-result-object p2

    .line 102
    invoke-static {p1, p2}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
