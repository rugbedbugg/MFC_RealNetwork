.class final Lorg/acra/data/CrashReportData$toMap$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CrashReportData.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/acra/data/CrashReportData;->toMap()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/acra/data/CrashReportData;


# direct methods
.method constructor <init>(Lorg/acra/data/CrashReportData;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/acra/data/CrashReportData$toMap$1;->this$0:Lorg/acra/data/CrashReportData;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 190
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/acra/data/CrashReportData$toMap$1;->invoke(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)Lkotlin/Pair;
    .locals 1

    iget-object v0, p0, Lorg/acra/data/CrashReportData$toMap$1;->this$0:Lorg/acra/data/CrashReportData;

    .line 190
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lorg/acra/data/CrashReportData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method
