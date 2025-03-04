.class final Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RepoChooser.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt;->RepoChooser(Ljava/util/List;JJLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
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

.field final synthetic $currentRepoId:J

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onPreferredRepoChanged:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $onRepoChanged:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $preferredRepoId:J

.field final synthetic $repos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/database/Repository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;JJLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Repository;",
            ">;JJ",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            "Landroidx/compose/ui/Modifier;",
            "II)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$1;->$repos:Ljava/util/List;

    iput-wide p2, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$1;->$currentRepoId:J

    iput-wide p4, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$1;->$preferredRepoId:J

    iput-object p6, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$1;->$onRepoChanged:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$1;->$onPreferredRepoChanged:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$1;->$modifier:Landroidx/compose/ui/Modifier;

    iput p9, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$1;->$$changed:I

    iput p10, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$1;->$$default:I

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

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 11

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$1;->$repos:Ljava/util/List;

    iget-wide v1, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$1;->$currentRepoId:J

    iget-wide v3, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$1;->$preferredRepoId:J

    iget-object v5, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$1;->$onRepoChanged:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$1;->$onPreferredRepoChanged:Lkotlin/jvm/functions/Function1;

    iget-object v7, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$1;->$modifier:Landroidx/compose/ui/Modifier;

    iget p2, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$1;->$$changed:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v9

    iget v10, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$1;->$$default:I

    move-object v8, p1

    invoke-static/range {v0 .. v10}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt;->RepoChooser(Ljava/util/List;JJLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method
