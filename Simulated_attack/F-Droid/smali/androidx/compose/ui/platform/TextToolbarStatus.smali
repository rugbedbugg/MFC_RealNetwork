.class public final enum Landroidx/compose/ui/platform/TextToolbarStatus;
.super Ljava/lang/Enum;
.source "TextToolbarStatus.kt"


# static fields
.field private static final synthetic $VALUES:[Landroidx/compose/ui/platform/TextToolbarStatus;

.field public static final enum Hidden:Landroidx/compose/ui/platform/TextToolbarStatus;

.field public static final enum Shown:Landroidx/compose/ui/platform/TextToolbarStatus;


# direct methods
.method private static final synthetic $values()[Landroidx/compose/ui/platform/TextToolbarStatus;
    .locals 3

    .line 0
    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/compose/ui/platform/TextToolbarStatus;

    const/4 v1, 0x0

    sget-object v2, Landroidx/compose/ui/platform/TextToolbarStatus;->Shown:Landroidx/compose/ui/platform/TextToolbarStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroidx/compose/ui/platform/TextToolbarStatus;->Hidden:Landroidx/compose/ui/platform/TextToolbarStatus;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Landroidx/compose/ui/platform/TextToolbarStatus;

    const-string v1, "Shown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/platform/TextToolbarStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/ui/platform/TextToolbarStatus;->Shown:Landroidx/compose/ui/platform/TextToolbarStatus;

    .line 30
    new-instance v0, Landroidx/compose/ui/platform/TextToolbarStatus;

    const-string v1, "Hidden"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/platform/TextToolbarStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/ui/platform/TextToolbarStatus;->Hidden:Landroidx/compose/ui/platform/TextToolbarStatus;

    invoke-static {}, Landroidx/compose/ui/platform/TextToolbarStatus;->$values()[Landroidx/compose/ui/platform/TextToolbarStatus;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/TextToolbarStatus;->$VALUES:[Landroidx/compose/ui/platform/TextToolbarStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/ui/platform/TextToolbarStatus;
    .locals 1

    .line 0
    const-class v0, Landroidx/compose/ui/platform/TextToolbarStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/platform/TextToolbarStatus;

    return-object p0
.end method

.method public static values()[Landroidx/compose/ui/platform/TextToolbarStatus;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/platform/TextToolbarStatus;->$VALUES:[Landroidx/compose/ui/platform/TextToolbarStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/ui/platform/TextToolbarStatus;

    return-object v0
.end method
