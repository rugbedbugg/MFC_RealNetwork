.class final Lorg/fdroid/database/AppPrefsDaoInt$getAppPrefs$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AppPrefsDao.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/AppPrefsDaoInt$DefaultImpls;->getAppPrefs(Lorg/fdroid/database/AppPrefsDaoInt;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/database/AppPrefsDaoInt$getAppPrefs$1;->$packageName:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Lorg/fdroid/database/AppPrefs;

    invoke-virtual {p0, p1}, Lorg/fdroid/database/AppPrefsDaoInt$getAppPrefs$1;->invoke(Lorg/fdroid/database/AppPrefs;)Lorg/fdroid/database/AppPrefs;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lorg/fdroid/database/AppPrefs;)Lorg/fdroid/database/AppPrefs;
    .locals 8

    if-nez p1, :cond_0

    .line 22
    new-instance p1, Lorg/fdroid/database/AppPrefs;

    iget-object v1, p0, Lorg/fdroid/database/AppPrefsDaoInt$getAppPrefs$1;->$packageName:Ljava/lang/String;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lorg/fdroid/database/AppPrefs;-><init>(Ljava/lang/String;JLjava/lang/Long;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    return-object p1
.end method
