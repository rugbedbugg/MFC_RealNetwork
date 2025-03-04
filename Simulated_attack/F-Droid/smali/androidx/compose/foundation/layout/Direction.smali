.class public final enum Landroidx/compose/foundation/layout/Direction;
.super Ljava/lang/Enum;
.source "Size.kt"


# static fields
.field private static final synthetic $VALUES:[Landroidx/compose/foundation/layout/Direction;

.field public static final enum Both:Landroidx/compose/foundation/layout/Direction;

.field public static final enum Horizontal:Landroidx/compose/foundation/layout/Direction;

.field public static final enum Vertical:Landroidx/compose/foundation/layout/Direction;


# direct methods
.method private static final synthetic $values()[Landroidx/compose/foundation/layout/Direction;
    .locals 3

    .line 0
    const/4 v0, 0x3

    new-array v0, v0, [Landroidx/compose/foundation/layout/Direction;

    const/4 v1, 0x0

    sget-object v2, Landroidx/compose/foundation/layout/Direction;->Vertical:Landroidx/compose/foundation/layout/Direction;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroidx/compose/foundation/layout/Direction;->Horizontal:Landroidx/compose/foundation/layout/Direction;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroidx/compose/foundation/layout/Direction;->Both:Landroidx/compose/foundation/layout/Direction;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1108
    new-instance v0, Landroidx/compose/foundation/layout/Direction;

    const-string v1, "Vertical"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/layout/Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/foundation/layout/Direction;->Vertical:Landroidx/compose/foundation/layout/Direction;

    new-instance v0, Landroidx/compose/foundation/layout/Direction;

    const-string v1, "Horizontal"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/layout/Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/foundation/layout/Direction;->Horizontal:Landroidx/compose/foundation/layout/Direction;

    new-instance v0, Landroidx/compose/foundation/layout/Direction;

    const-string v1, "Both"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/layout/Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/foundation/layout/Direction;->Both:Landroidx/compose/foundation/layout/Direction;

    invoke-static {}, Landroidx/compose/foundation/layout/Direction;->$values()[Landroidx/compose/foundation/layout/Direction;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/layout/Direction;->$VALUES:[Landroidx/compose/foundation/layout/Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/foundation/layout/Direction;
    .locals 1

    .line 0
    const-class v0, Landroidx/compose/foundation/layout/Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/layout/Direction;

    return-object p0
.end method

.method public static values()[Landroidx/compose/foundation/layout/Direction;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/foundation/layout/Direction;->$VALUES:[Landroidx/compose/foundation/layout/Direction;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/foundation/layout/Direction;

    return-object v0
.end method
