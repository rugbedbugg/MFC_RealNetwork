.class final Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewApp$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RepoPreviewScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt;->RepoPreviewApp(Landroidx/compose/foundation/lazy/LazyItemScope;Lorg/fdroid/database/Repository;Lorg/fdroid/database/MinimalApp;Landroidx/core/os/LocaleListCompat;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $app:Lorg/fdroid/database/MinimalApp;

.field final synthetic $localeList:Landroidx/core/os/LocaleListCompat;

.field final synthetic $repo:Lorg/fdroid/database/Repository;

.field final synthetic $this_RepoPreviewApp:Landroidx/compose/foundation/lazy/LazyItemScope;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/LazyItemScope;Lorg/fdroid/database/Repository;Lorg/fdroid/database/MinimalApp;Landroidx/core/os/LocaleListCompat;I)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewApp$2;->$this_RepoPreviewApp:Landroidx/compose/foundation/lazy/LazyItemScope;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewApp$2;->$repo:Lorg/fdroid/database/Repository;

    iput-object p3, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewApp$2;->$app:Lorg/fdroid/database/MinimalApp;

    iput-object p4, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewApp$2;->$localeList:Landroidx/core/os/LocaleListCompat;

    iput p5, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewApp$2;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewApp$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewApp$2;->$this_RepoPreviewApp:Landroidx/compose/foundation/lazy/LazyItemScope;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewApp$2;->$repo:Lorg/fdroid/database/Repository;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewApp$2;->$app:Lorg/fdroid/database/MinimalApp;

    iget-object v3, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewApp$2;->$localeList:Landroidx/core/os/LocaleListCompat;

    iget p2, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewApp$2;->$$changed:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v5

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt;->RepoPreviewApp(Landroidx/compose/foundation/lazy/LazyItemScope;Lorg/fdroid/database/Repository;Lorg/fdroid/database/MinimalApp;Landroidx/core/os/LocaleListCompat;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method
