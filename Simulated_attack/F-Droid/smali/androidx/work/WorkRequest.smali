.class public abstract Landroidx/work/WorkRequest;
.super Ljava/lang/Object;
.source "WorkRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/WorkRequest$Builder;,
        Landroidx/work/WorkRequest$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/work/WorkRequest$Companion;


# instance fields
.field private final id:Ljava/util/UUID;

.field private final tags:Ljava/util/Set;

.field private final workSpec:Landroidx/work/impl/model/WorkSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Landroidx/work/WorkRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/work/WorkRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/work/WorkRequest;->Companion:Landroidx/work/WorkRequest$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Landroidx/work/impl/model/WorkSpec;Ljava/util/Set;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workSpec"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkRequest;->id:Ljava/util/UUID;

    iput-object p2, p0, Landroidx/work/WorkRequest;->workSpec:Landroidx/work/impl/model/WorkSpec;

    iput-object p3, p0, Landroidx/work/WorkRequest;->tags:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getId()Ljava/util/UUID;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/work/WorkRequest;->id:Ljava/util/UUID;

    return-object v0
.end method

.method public final getStringId()Ljava/lang/String;
    .locals 2

    .line 60
    invoke-virtual {p0}, Landroidx/work/WorkRequest;->getId()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getTags()Ljava/util/Set;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/work/WorkRequest;->tags:Ljava/util/Set;

    return-object v0
.end method

.method public final getWorkSpec()Landroidx/work/impl/model/WorkSpec;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/work/WorkRequest;->workSpec:Landroidx/work/impl/model/WorkSpec;

    return-object v0
.end method
