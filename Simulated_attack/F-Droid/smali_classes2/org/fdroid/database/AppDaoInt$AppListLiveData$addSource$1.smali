.class final Lorg/fdroid/database/AppDaoInt$AppListLiveData$addSource$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AppDao.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/AppDaoInt$AppListLiveData;->addSource(Landroidx/lifecycle/LiveData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/database/AppDaoInt$AppListLiveData;


# direct methods
.method public static synthetic $r8$lambda$jHsX6b5OCUA0mwbErNBLhTw-Hs4(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/fdroid/database/AppDaoInt$AppListLiveData$addSource$1;->invoke$lambda$2(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method constructor <init>(Lorg/fdroid/database/AppDaoInt$AppListLiveData;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/database/AppDaoInt$AppListLiveData$addSource$1;->this$0:Lorg/fdroid/database/AppDaoInt$AppListLiveData;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$2(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 624
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 616
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/fdroid/database/AppDaoInt$AppListLiveData$addSource$1;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 3

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt$AppListLiveData$addSource$1;->this$0:Lorg/fdroid/database/AppDaoInt$AppListLiveData;

    .line 618
    invoke-static {p1}, Lorg/fdroid/database/AppDaoInt$AppListLiveData;->access$getList$p(Lorg/fdroid/database/AppDaoInt$AppListLiveData;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1446
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1447
    check-cast v2, Landroidx/lifecycle/LiveData;

    .line 619
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    .line 621
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v1, 0x0

    .line 619
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1448
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt$AppListLiveData$addSource$1;->this$0:Lorg/fdroid/database/AppDaoInt$AppListLiveData;

    sget-object v1, Lorg/fdroid/database/AppDaoInt$AppListLiveData$addSource$1$1;->INSTANCE:Lorg/fdroid/database/AppDaoInt$AppListLiveData$addSource$1$1;

    .line 624
    new-instance v2, Lorg/fdroid/database/AppDaoInt$AppListLiveData$addSource$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lorg/fdroid/database/AppDaoInt$AppListLiveData$addSource$1$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
