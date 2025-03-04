.class public abstract Landroidx/compose/foundation/layout/CrossAxisAlignment;
.super Ljava/lang/Object;
.source "RowColumnImpl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/layout/CrossAxisAlignment$CenterCrossAxisAlignment;,
        Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;,
        Landroidx/compose/foundation/layout/CrossAxisAlignment$EndCrossAxisAlignment;,
        Landroidx/compose/foundation/layout/CrossAxisAlignment$HorizontalCrossAxisAlignment;,
        Landroidx/compose/foundation/layout/CrossAxisAlignment$StartCrossAxisAlignment;,
        Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;
    }
.end annotation


# static fields
.field private static final Center:Landroidx/compose/foundation/layout/CrossAxisAlignment;

.field public static final Companion:Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;

.field private static final End:Landroidx/compose/foundation/layout/CrossAxisAlignment;

.field private static final Start:Landroidx/compose/foundation/layout/CrossAxisAlignment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/layout/CrossAxisAlignment;->Companion:Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;

    .line 180
    sget-object v0, Landroidx/compose/foundation/layout/CrossAxisAlignment$CenterCrossAxisAlignment;->INSTANCE:Landroidx/compose/foundation/layout/CrossAxisAlignment$CenterCrossAxisAlignment;

    sput-object v0, Landroidx/compose/foundation/layout/CrossAxisAlignment;->Center:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 187
    sget-object v0, Landroidx/compose/foundation/layout/CrossAxisAlignment$StartCrossAxisAlignment;->INSTANCE:Landroidx/compose/foundation/layout/CrossAxisAlignment$StartCrossAxisAlignment;

    sput-object v0, Landroidx/compose/foundation/layout/CrossAxisAlignment;->Start:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 194
    sget-object v0, Landroidx/compose/foundation/layout/CrossAxisAlignment$EndCrossAxisAlignment;->INSTANCE:Landroidx/compose/foundation/layout/CrossAxisAlignment$EndCrossAxisAlignment;

    sput-object v0, Landroidx/compose/foundation/layout/CrossAxisAlignment;->End:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/compose/foundation/layout/CrossAxisAlignment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract align$foundation_layout_release(ILandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/layout/Placeable;I)I
.end method

.method public calculateAlignmentLinePosition$foundation_layout_release(Landroidx/compose/ui/layout/Placeable;)Ljava/lang/Integer;
    .locals 1

    .line 0
    const-string v0, "placeable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public isRelative$foundation_layout_release()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method
