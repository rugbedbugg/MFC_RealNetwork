.class final Lorg/fdroid/UpdateChecker$getSuggestedVersion$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "UpdateChecker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/UpdateChecker;->getSuggestedVersion(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function0;)Lorg/fdroid/index/v2/PackageVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $it:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/UpdateChecker$getSuggestedVersion$1$1;->$it:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lorg/fdroid/UpdateChecker$getSuggestedVersion$1$1;->invoke()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/UpdateChecker$getSuggestedVersion$1$1;->$it:Ljava/lang/String;

    .line 68
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
