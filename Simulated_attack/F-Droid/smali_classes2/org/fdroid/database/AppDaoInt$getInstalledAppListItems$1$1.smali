.class final Lorg/fdroid/database/AppDaoInt$getInstalledAppListItems$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AppDao.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/AppDaoInt$DefaultImpls;->getInstalledAppListItems(Lorg/fdroid/database/AppDaoInt;Landroid/content/pm/PackageManager;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $this_apply:Lorg/fdroid/database/AppDaoInt$AppListLiveData;

.field final synthetic this$0:Lorg/fdroid/database/AppDaoInt;


# direct methods
.method constructor <init>(Lorg/fdroid/database/AppDaoInt$AppListLiveData;Lorg/fdroid/database/AppDaoInt;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/database/AppDaoInt$getInstalledAppListItems$1$1;->$this_apply:Lorg/fdroid/database/AppDaoInt$AppListLiveData;

    iput-object p2, p0, Lorg/fdroid/database/AppDaoInt$getInstalledAppListItems$1$1;->this$0:Lorg/fdroid/database/AppDaoInt;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 602
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/fdroid/database/AppDaoInt$getInstalledAppListItems$1$1;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt$getInstalledAppListItems$1$1;->$this_apply:Lorg/fdroid/database/AppDaoInt$AppListLiveData;

    iget-object v1, p0, Lorg/fdroid/database/AppDaoInt$getInstalledAppListItems$1$1;->this$0:Lorg/fdroid/database/AppDaoInt;

    .line 602
    invoke-interface {v1, p1}, Lorg/fdroid/database/AppDaoInt;->getAppListItems(Ljava/util/List;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/fdroid/database/AppDaoInt$AppListLiveData;->addSource(Landroidx/lifecycle/LiveData;)V

    return-void
.end method
