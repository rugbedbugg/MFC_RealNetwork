.class final Lorg/fdroid/database/AppDaoInt$AppListLiveData$addSource$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AppDao.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/AppDaoInt$AppListLiveData$addSource$1;->invoke(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lorg/fdroid/database/AppDaoInt$AppListLiveData$addSource$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/fdroid/database/AppDaoInt$AppListLiveData$addSource$1$1;

    invoke-direct {v0}, Lorg/fdroid/database/AppDaoInt$AppListLiveData$addSource$1$1;-><init>()V

    sput-object v0, Lorg/fdroid/database/AppDaoInt$AppListLiveData$addSource$1$1;->INSTANCE:Lorg/fdroid/database/AppDaoInt$AppListLiveData$addSource$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/fdroid/database/AppListItem;Lorg/fdroid/database/AppListItem;)Ljava/lang/Integer;
    .locals 1

    .line 626
    invoke-virtual {p1}, Lorg/fdroid/database/AppListItem;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    .line 627
    :cond_0
    invoke-virtual {p2}, Lorg/fdroid/database/AppListItem;->getName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    const/4 p2, 0x1

    .line 628
    invoke-static {p1, v0, p2}, Lkotlin/text/StringsKt;->compareTo(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 624
    check-cast p1, Lorg/fdroid/database/AppListItem;

    check-cast p2, Lorg/fdroid/database/AppListItem;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/database/AppDaoInt$AppListLiveData$addSource$1$1;->invoke(Lorg/fdroid/database/AppListItem;Lorg/fdroid/database/AppListItem;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
