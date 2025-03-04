.class public final Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app3$1;
.super Ljava/lang/Object;
.source "RepoPreviewScreen.kt"

# interfaces
.implements Lorg/fdroid/database/MinimalApp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt;->RepoPreviewScreenFetchingPreview(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u0003X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0005R\u0014\u0010\u0008\u001a\u00020\tX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\u0003X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0005\u00a8\u0006\u0012"
    }
    d2 = {
        "org/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app3$1",
        "Lorg/fdroid/database/MinimalApp;",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "packageName",
        "getPackageName",
        "repoId",
        "",
        "getRepoId",
        "()J",
        "summary",
        "getSummary",
        "getIcon",
        "Lorg/fdroid/index/v2/FileV2;",
        "localeList",
        "Landroidx/core/os/LocaleListCompat;",
        "app_fullRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final repoId:J

.field private final summary:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "net.example"

    iput-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app3$1;->packageName:Ljava/lang/String;

    const-string v0, "App 3"

    iput-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app3$1;->name:Ljava/lang/String;

    const-string v0, "short summary"

    iput-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app3$1;->summary:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIcon(Landroidx/core/os/LocaleListCompat;)Lorg/fdroid/index/v2/FileV2;
    .locals 1

    .line 0
    const-string v0, "localeList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app3$1;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app3$1;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRepoId()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app3$1;->repoId:J

    return-wide v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app3$1;->summary:Ljava/lang/String;

    return-object v0
.end method
