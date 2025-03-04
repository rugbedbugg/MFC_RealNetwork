.class public final Landroidx/work/OneTimeWorkRequest;
.super Landroidx/work/WorkRequest;
.source "OneTimeWorkRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/OneTimeWorkRequest$Builder;,
        Landroidx/work/OneTimeWorkRequest$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/work/OneTimeWorkRequest$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Landroidx/work/OneTimeWorkRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/work/OneTimeWorkRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/work/OneTimeWorkRequest;->Companion:Landroidx/work/OneTimeWorkRequest$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/work/OneTimeWorkRequest$Builder;)V
    .locals 2

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Landroidx/work/WorkRequest$Builder;->getId$work_runtime_release()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/work/WorkRequest$Builder;->getWorkSpec$work_runtime_release()Landroidx/work/impl/model/WorkSpec;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/work/WorkRequest$Builder;->getTags$work_runtime_release()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Landroidx/work/WorkRequest;-><init>(Ljava/util/UUID;Landroidx/work/impl/model/WorkSpec;Ljava/util/Set;)V

    return-void
.end method

.method public static final from(Ljava/lang/Class;)Landroidx/work/OneTimeWorkRequest;
    .locals 1

    .line 0
    sget-object v0, Landroidx/work/OneTimeWorkRequest;->Companion:Landroidx/work/OneTimeWorkRequest$Companion;

    invoke-virtual {v0, p0}, Landroidx/work/OneTimeWorkRequest$Companion;->from(Ljava/lang/Class;)Landroidx/work/OneTimeWorkRequest;

    move-result-object p0

    return-object p0
.end method
