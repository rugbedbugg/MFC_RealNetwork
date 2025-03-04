.class public abstract Landroidx/activity/ViewTreeFullyDrawnReporterOwner;
.super Ljava/lang/Object;
.source "ViewTreeFullyLoadedReporterOwner.kt"


# direct methods
.method public static final set(Landroid/view/View;Landroidx/activity/FullyDrawnReporterOwner;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullyDrawnReporterOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroidx/activity/R$id;->report_drawn:I

    .line 36
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
