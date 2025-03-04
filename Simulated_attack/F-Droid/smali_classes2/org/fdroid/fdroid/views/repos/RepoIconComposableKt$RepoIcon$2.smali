.class final Lorg/fdroid/fdroid/views/repos/RepoIconComposableKt$RepoIcon$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RepoIconComposable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/repos/RepoIconComposableKt;->RepoIcon(Lorg/fdroid/database/Repository;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
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

.field final synthetic $$default:I

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $repo:Lorg/fdroid/database/Repository;


# direct methods
.method constructor <init>(Lorg/fdroid/database/Repository;Landroidx/compose/ui/Modifier;II)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoIconComposableKt$RepoIcon$2;->$repo:Lorg/fdroid/database/Repository;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/repos/RepoIconComposableKt$RepoIcon$2;->$modifier:Landroidx/compose/ui/Modifier;

    iput p3, p0, Lorg/fdroid/fdroid/views/repos/RepoIconComposableKt$RepoIcon$2;->$$changed:I

    iput p4, p0, Lorg/fdroid/fdroid/views/repos/RepoIconComposableKt$RepoIcon$2;->$$default:I

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

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/repos/RepoIconComposableKt$RepoIcon$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 3

    .line 0
    iget-object p2, p0, Lorg/fdroid/fdroid/views/repos/RepoIconComposableKt$RepoIcon$2;->$repo:Lorg/fdroid/database/Repository;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoIconComposableKt$RepoIcon$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget v1, p0, Lorg/fdroid/fdroid/views/repos/RepoIconComposableKt$RepoIcon$2;->$$changed:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v1

    iget v2, p0, Lorg/fdroid/fdroid/views/repos/RepoIconComposableKt$RepoIcon$2;->$$default:I

    invoke-static {p2, v0, p1, v1, v2}, Lorg/fdroid/fdroid/views/repos/RepoIconComposableKt;->RepoIcon(Lorg/fdroid/database/Repository;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method
