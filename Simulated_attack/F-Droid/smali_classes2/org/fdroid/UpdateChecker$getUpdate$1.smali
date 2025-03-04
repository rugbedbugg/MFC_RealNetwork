.class final Lorg/fdroid/UpdateChecker$getUpdate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "UpdateChecker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/UpdateChecker;->getUpdate(Ljava/util/List;Landroid/content/pm/PackageInfo;Ljava/util/List;ZLkotlin/jvm/functions/Function0;)Lorg/fdroid/index/v2/PackageVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $packageInfo:Landroid/content/pm/PackageInfo;


# direct methods
.method constructor <init>(Landroid/content/pm/PackageInfo;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/UpdateChecker$getUpdate$1;->$packageInfo:Landroid/content/pm/PackageInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lorg/fdroid/UpdateChecker$getUpdate$1;->invoke()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Set;
    .locals 7

    iget-object v0, p0, Lorg/fdroid/UpdateChecker$getUpdate$1;->$packageInfo:Landroid/content/pm/PackageInfo;

    .line 42
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_1

    .line 11065
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11400
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 42
    sget-object v5, Lorg/fdroid/index/IndexUtils;->INSTANCE:Lorg/fdroid/index/IndexUtils;

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    const-string v6, "toByteArray(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lorg/fdroid/index/IndexUtils;->getPackageSigner([B)Ljava/lang/String;

    move-result-object v4

    .line 11401
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 42
    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method
