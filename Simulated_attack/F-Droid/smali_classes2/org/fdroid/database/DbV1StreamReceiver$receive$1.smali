.class final Lorg/fdroid/database/DbV1StreamReceiver$receive$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DbV1StreamReceiver.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/DbV1StreamReceiver;->receive(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/database/DbV1StreamReceiver;


# direct methods
.method constructor <init>(Lorg/fdroid/database/DbV1StreamReceiver;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/database/DbV1StreamReceiver$receive$1;->this$0:Lorg/fdroid/database/DbV1StreamReceiver;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/fdroid/index/v2/PackageVersionV2;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/database/DbV1StreamReceiver$receive$1;->this$0:Lorg/fdroid/database/DbV1StreamReceiver;

    .line 38
    invoke-static {v0}, Lorg/fdroid/database/DbV1StreamReceiver;->access$getCompatibilityChecker$p(Lorg/fdroid/database/DbV1StreamReceiver;)Lorg/fdroid/CompatibilityChecker;

    move-result-object v0

    invoke-virtual {p1}, Lorg/fdroid/index/v2/PackageVersionV2;->getManifest()Lorg/fdroid/index/v2/ManifestV2;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/fdroid/CompatibilityChecker;->isCompatible(Lorg/fdroid/index/v2/PackageManifest;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p1, Lorg/fdroid/index/v2/PackageVersionV2;

    invoke-virtual {p0, p1}, Lorg/fdroid/database/DbV1StreamReceiver$receive$1;->invoke(Lorg/fdroid/index/v2/PackageVersionV2;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
