.class final Lorg/acra/sender/ReportDistributor$sendCrashReport$4;
.super Lkotlin/jvm/internal/Lambda;
.source "ReportDistributor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/acra/sender/ReportDistributor;->sendCrashReport(Lorg/acra/data/CrashReportData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lorg/acra/sender/ReportDistributor$sendCrashReport$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/acra/sender/ReportDistributor$sendCrashReport$4;

    invoke-direct {v0}, Lorg/acra/sender/ReportDistributor$sendCrashReport$4;-><init>()V

    sput-object v0, Lorg/acra/sender/ReportDistributor$sendCrashReport$4;->INSTANCE:Lorg/acra/sender/ReportDistributor$sendCrashReport$4;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lorg/acra/sender/ReportDistributor$sendCrashReport$4;->invoke()Lorg/acra/config/RetryPolicy;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/acra/config/RetryPolicy;
    .locals 1

    .line 109
    new-instance v0, Lorg/acra/config/DefaultRetryPolicy;

    invoke-direct {v0}, Lorg/acra/config/DefaultRetryPolicy;-><init>()V

    return-object v0
.end method
