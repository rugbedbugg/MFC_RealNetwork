.class final Lorg/fdroid/database/AppDaoInt$AppListLiveData;
.super Landroidx/lifecycle/MediatorLiveData;
.source "AppDao.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/database/AppDaoInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AppListLiveData"
.end annotation


# instance fields
.field private final list:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 607
    invoke-direct {p0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    .line 608
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fdroid/database/AppDaoInt$AppListLiveData;->list:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$getList$p(Lorg/fdroid/database/AppDaoInt$AppListLiveData;)Ljava/util/ArrayList;
    .locals 0

    .line 607
    iget-object p0, p0, Lorg/fdroid/database/AppDaoInt$AppListLiveData;->list:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public final addSource(Landroidx/lifecycle/LiveData;)V
    .locals 2

    const-string v0, "liveData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt$AppListLiveData;->list:Ljava/util/ArrayList;

    .line 615
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    new-instance v0, Lorg/fdroid/database/AppDaoInt$AppListLiveData$addSource$1;

    invoke-direct {v0, p0}, Lorg/fdroid/database/AppDaoInt$AppListLiveData$addSource$1;-><init>(Lorg/fdroid/database/AppDaoInt$AppListLiveData;)V

    new-instance v1, Lorg/fdroid/database/AppDaoKt$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v1, v0}, Lorg/fdroid/database/AppDaoKt$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, p1, v1}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method
