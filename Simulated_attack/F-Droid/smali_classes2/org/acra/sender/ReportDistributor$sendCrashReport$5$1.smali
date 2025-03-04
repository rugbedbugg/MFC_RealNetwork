.class final Lorg/acra/sender/ReportDistributor$sendCrashReport$5$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ReportDistributor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/acra/sender/ReportDistributor;->sendCrashReport(Lorg/acra/data/CrashReportData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lorg/acra/sender/ReportDistributor$sendCrashReport$5$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/acra/sender/ReportDistributor$sendCrashReport$5$1;

    invoke-direct {v0}, Lorg/acra/sender/ReportDistributor$sendCrashReport$5$1;-><init>()V

    sput-object v0, Lorg/acra/sender/ReportDistributor$sendCrashReport$5$1;->INSTANCE:Lorg/acra/sender/ReportDistributor$sendCrashReport$5$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/acra/config/RetryPolicy$FailedSender;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Lorg/acra/config/RetryPolicy$FailedSender;->getSender()Lorg/acra/sender/ReportSender;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getName(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 112
    check-cast p1, Lorg/acra/config/RetryPolicy$FailedSender;

    invoke-virtual {p0, p1}, Lorg/acra/sender/ReportDistributor$sendCrashReport$5$1;->invoke(Lorg/acra/config/RetryPolicy$FailedSender;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
