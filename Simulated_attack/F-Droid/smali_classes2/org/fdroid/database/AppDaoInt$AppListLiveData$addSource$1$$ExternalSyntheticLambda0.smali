.class public final synthetic Lorg/fdroid/database/AppDaoInt$AppListLiveData$addSource$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/database/AppDaoInt$AppListLiveData$addSource$1$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt$AppListLiveData$addSource$1$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p1, p2}, Lorg/fdroid/database/AppDaoInt$AppListLiveData$addSource$1;->$r8$lambda$jHsX6b5OCUA0mwbErNBLhTw-Hs4(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
