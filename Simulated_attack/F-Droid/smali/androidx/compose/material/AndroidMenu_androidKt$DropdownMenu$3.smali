.class final Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$3;
.super Lkotlin/jvm/internal/Lambda;
.source "AndroidMenu.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/AndroidMenu_androidKt;->DropdownMenu-4kj-_NE(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$default:I

.field final synthetic $content:Lkotlin/jvm/functions/Function3;

.field final synthetic $expanded:Z

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $offset:J

.field final synthetic $onDismissRequest:Lkotlin/jvm/functions/Function0;

.field final synthetic $properties:Landroidx/compose/ui/window/PopupProperties;

.field final synthetic $scrollState:Landroidx/compose/foundation/ScrollState;


# direct methods
.method constructor <init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function3;II)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$3;->$expanded:Z

    iput-object p2, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$3;->$onDismissRequest:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$3;->$modifier:Landroidx/compose/ui/Modifier;

    iput-wide p4, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$3;->$offset:J

    iput-object p6, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$3;->$scrollState:Landroidx/compose/foundation/ScrollState;

    iput-object p7, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$3;->$properties:Landroidx/compose/ui/window/PopupProperties;

    iput-object p8, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$3;->$content:Lkotlin/jvm/functions/Function3;

    iput p9, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$3;->$$changed:I

    iput p10, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$3;->$$default:I

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$3;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 11

    .line 0
    iget-boolean v0, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$3;->$expanded:Z

    iget-object v1, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$3;->$onDismissRequest:Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$3;->$modifier:Landroidx/compose/ui/Modifier;

    iget-wide v3, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$3;->$offset:J

    iget-object v5, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$3;->$scrollState:Landroidx/compose/foundation/ScrollState;

    iget-object v6, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$3;->$properties:Landroidx/compose/ui/window/PopupProperties;

    iget-object v7, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$3;->$content:Lkotlin/jvm/functions/Function3;

    iget p2, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$3;->$$changed:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v9

    iget v10, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$3;->$$default:I

    move-object v8, p1

    invoke-static/range {v0 .. v10}, Landroidx/compose/material/AndroidMenu_androidKt;->DropdownMenu-4kj-_NE(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method
