.class public abstract Landroidx/compose/foundation/text/TextPointerIcon_androidKt;
.super Ljava/lang/Object;
.source "TextPointerIcon.android.kt"


# static fields
.field private static final textPointerIcon:Landroidx/compose/ui/input/pointer/PointerIcon;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3f0

    .line 22
    invoke-static {v0}, Landroidx/compose/ui/input/pointer/PointerIcon_androidKt;->PointerIcon(I)Landroidx/compose/ui/input/pointer/PointerIcon;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/text/TextPointerIcon_androidKt;->textPointerIcon:Landroidx/compose/ui/input/pointer/PointerIcon;

    return-void
.end method

.method public static final getTextPointerIcon()Landroidx/compose/ui/input/pointer/PointerIcon;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/foundation/text/TextPointerIcon_androidKt;->textPointerIcon:Landroidx/compose/ui/input/pointer/PointerIcon;

    return-object v0
.end method
