.class final Landroidx/compose/material/MaterialTheme_androidKt$PlatformMaterialTheme$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MaterialTheme.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/MaterialTheme_androidKt;->PlatformMaterialTheme(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $content:Lkotlin/jvm/functions/Function2;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;I)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material/MaterialTheme_androidKt$PlatformMaterialTheme$1;->$content:Lkotlin/jvm/functions/Function2;

    iput p2, p0, Landroidx/compose/material/MaterialTheme_androidKt$PlatformMaterialTheme$1;->$$changed:I

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/MaterialTheme_androidKt$PlatformMaterialTheme$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 1

    .line 0
    iget-object p2, p0, Landroidx/compose/material/MaterialTheme_androidKt$PlatformMaterialTheme$1;->$content:Lkotlin/jvm/functions/Function2;

    iget v0, p0, Landroidx/compose/material/MaterialTheme_androidKt$PlatformMaterialTheme$1;->$$changed:I

    or-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p2, p1, v0}, Landroidx/compose/material/MaterialTheme_androidKt;->PlatformMaterialTheme(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method
