.class public Lorg/acra/startup/UnapprovedStartupProcessor;
.super Ljava/lang/Object;
.source "UnapprovedStartupProcessor.kt"

# interfaces
.implements Lorg/acra/startup/StartupProcessor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0008\u0017\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lorg/acra/startup/UnapprovedStartupProcessor;",
        "Lorg/acra/startup/StartupProcessor;",
        "()V",
        "processReports",
        "",
        "context",
        "Landroid/content/Context;",
        "config",
        "Lorg/acra/config/CoreConfiguration;",
        "reports",
        "",
        "Lorg/acra/startup/Report;",
        "acra-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic enabled(Lorg/acra/config/CoreConfiguration;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/acra/plugins/Plugin$-CC;->$default$enabled(Lorg/acra/plugins/Plugin;Lorg/acra/config/CoreConfiguration;)Z

    move-result p1

    return p1
.end method

.method public processReports(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/acra/config/CoreConfiguration;",
            "Ljava/util/List<",
            "Lorg/acra/startup/Report;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "config"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "reports"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2}, Lorg/acra/config/CoreConfiguration;->getDeleteUnapprovedReportsOnApplicationStart()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/acra/startup/Report;

    .line 33
    invoke-virtual {p3}, Lorg/acra/startup/Report;->getApproved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    const/4 p3, 0x1

    xor-int/2addr p2, p3

    if-eqz p2, :cond_4

    .line 1002
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, p3, :cond_2

    new-instance p2, Lorg/acra/startup/UnapprovedStartupProcessor$processReports$$inlined$sortBy$1;

    invoke-direct {p2}, Lorg/acra/startup/UnapprovedStartupProcessor$processReports$$inlined$sortBy$1;-><init>()V

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 39
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, p3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_3

    .line 40
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/acra/startup/Report;

    invoke-virtual {v1, p3}, Lorg/acra/startup/Report;->setDelete(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 42
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, p3

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/acra/startup/Report;

    invoke-virtual {p1, p3}, Lorg/acra/startup/Report;->setApprove(Z)V

    :cond_4
    return-void
.end method
