.class public abstract Landroidx/work/impl/model/WorkTagDao$DefaultImpls;
.super Ljava/lang/Object;
.source "WorkTagDao.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/model/WorkTagDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static insertTags(Landroidx/work/impl/model/WorkTagDao;Ljava/lang/String;Ljava/util/Set;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-static {p0, p1, p2}, Landroidx/work/impl/model/WorkTagDao$-CC;->access$insertTags$jd(Landroidx/work/impl/model/WorkTagDao;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method
