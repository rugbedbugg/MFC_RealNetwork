.class final Lorg/fdroid/fdroid/compose/ComposeUtils$FDroidButton$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ComposeUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/compose/ComposeUtils;->FDroidButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;II)V
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

.field final synthetic $imageVector:Landroidx/compose/ui/graphics/vector/ImageVector;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $text:Ljava/lang/String;

.field final synthetic $tmp0_rcvr:Lorg/fdroid/fdroid/compose/ComposeUtils;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/compose/ComposeUtils;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/vector/ImageVector;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/fdroid/compose/ComposeUtils;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/graphics/vector/ImageVector;",
            "II)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/compose/ComposeUtils$FDroidButton$2;->$tmp0_rcvr:Lorg/fdroid/fdroid/compose/ComposeUtils;

    iput-object p2, p0, Lorg/fdroid/fdroid/compose/ComposeUtils$FDroidButton$2;->$text:Ljava/lang/String;

    iput-object p3, p0, Lorg/fdroid/fdroid/compose/ComposeUtils$FDroidButton$2;->$onClick:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lorg/fdroid/fdroid/compose/ComposeUtils$FDroidButton$2;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p5, p0, Lorg/fdroid/fdroid/compose/ComposeUtils$FDroidButton$2;->$imageVector:Landroidx/compose/ui/graphics/vector/ImageVector;

    iput p6, p0, Lorg/fdroid/fdroid/compose/ComposeUtils$FDroidButton$2;->$$changed:I

    iput p7, p0, Lorg/fdroid/fdroid/compose/ComposeUtils$FDroidButton$2;->$$default:I

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

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/compose/ComposeUtils$FDroidButton$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 8

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/compose/ComposeUtils$FDroidButton$2;->$tmp0_rcvr:Lorg/fdroid/fdroid/compose/ComposeUtils;

    iget-object v1, p0, Lorg/fdroid/fdroid/compose/ComposeUtils$FDroidButton$2;->$text:Ljava/lang/String;

    iget-object v2, p0, Lorg/fdroid/fdroid/compose/ComposeUtils$FDroidButton$2;->$onClick:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Lorg/fdroid/fdroid/compose/ComposeUtils$FDroidButton$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v4, p0, Lorg/fdroid/fdroid/compose/ComposeUtils$FDroidButton$2;->$imageVector:Landroidx/compose/ui/graphics/vector/ImageVector;

    iget p2, p0, Lorg/fdroid/fdroid/compose/ComposeUtils$FDroidButton$2;->$$changed:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v6

    iget v7, p0, Lorg/fdroid/fdroid/compose/ComposeUtils$FDroidButton$2;->$$default:I

    move-object v5, p1

    invoke-virtual/range {v0 .. v7}, Lorg/fdroid/fdroid/compose/ComposeUtils;->FDroidButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method
