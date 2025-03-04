.class public final Lorg/acra/file/ReportLocator;
.super Ljava/lang/Object;
.source "ReportLocator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/acra/file/ReportLocator$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/acra/file/ReportLocator$Companion;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/acra/file/ReportLocator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/acra/file/ReportLocator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/acra/file/ReportLocator;->Companion:Lorg/acra/file/ReportLocator$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/acra/file/ReportLocator;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getApprovedFolder()Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lorg/acra/file/ReportLocator;->context:Landroid/content/Context;

    const-string v1, "ACRA-approved"

    const/4 v2, 0x0

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    const-string v1, "getDir(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getApprovedReports()[Ljava/io/File;
    .locals 3

    .line 35
    invoke-virtual {p0}, Lorg/acra/file/ReportLocator;->getApprovedFolder()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6442
    new-instance v2, Lorg/acra/file/ReportLocator$special$$inlined$sortedBy$1;

    invoke-direct {v2}, Lorg/acra/file/ReportLocator$special$$inlined$sortedBy$1;-><init>()V

    invoke-static {v0, v2}, Lkotlin/collections/ArraysKt;->sortedWith([Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v2, v1, [Ljava/io/File;

    .line 38
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 35
    check-cast v0, [Ljava/io/File;

    if-nez v0, :cond_1

    :cond_0
    new-array v0, v1, [Ljava/io/File;

    :cond_1
    return-object v0
.end method

.method public final getUnapprovedFolder()Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lorg/acra/file/ReportLocator;->context:Landroid/content/Context;

    const-string v1, "ACRA-unapproved"

    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    const-string v1, "getDir(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getUnapprovedReports()[Ljava/io/File;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/acra/file/ReportLocator;->getUnapprovedFolder()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    :cond_0
    return-object v0
.end method
