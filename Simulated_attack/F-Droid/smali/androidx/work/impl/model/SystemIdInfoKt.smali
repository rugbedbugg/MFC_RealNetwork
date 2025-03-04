.class public abstract Landroidx/work/impl/model/SystemIdInfoKt;
.super Ljava/lang/Object;
.source "SystemIdInfo.kt"


# direct methods
.method public static final systemIdInfo(Landroidx/work/impl/model/WorkGenerationalId;I)Landroidx/work/impl/model/SystemIdInfo;
    .locals 2

    const-string v0, "generationalId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v0, Landroidx/work/impl/model/SystemIdInfo;

    invoke-virtual {p0}, Landroidx/work/impl/model/WorkGenerationalId;->getWorkSpecId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/work/impl/model/WorkGenerationalId;->getGeneration()I

    move-result p0

    invoke-direct {v0, v1, p0, p1}, Landroidx/work/impl/model/SystemIdInfo;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method
