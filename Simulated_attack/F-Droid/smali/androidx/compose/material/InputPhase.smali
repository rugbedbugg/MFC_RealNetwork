.class final enum Landroidx/compose/material/InputPhase;
.super Ljava/lang/Enum;
.source "TextFieldImpl.kt"


# static fields
.field private static final synthetic $VALUES:[Landroidx/compose/material/InputPhase;

.field public static final enum Focused:Landroidx/compose/material/InputPhase;

.field public static final enum UnfocusedEmpty:Landroidx/compose/material/InputPhase;

.field public static final enum UnfocusedNotEmpty:Landroidx/compose/material/InputPhase;


# direct methods
.method private static final synthetic $values()[Landroidx/compose/material/InputPhase;
    .locals 3

    .line 0
    const/4 v0, 0x3

    new-array v0, v0, [Landroidx/compose/material/InputPhase;

    const/4 v1, 0x0

    sget-object v2, Landroidx/compose/material/InputPhase;->Focused:Landroidx/compose/material/InputPhase;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroidx/compose/material/InputPhase;->UnfocusedEmpty:Landroidx/compose/material/InputPhase;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroidx/compose/material/InputPhase;->UnfocusedNotEmpty:Landroidx/compose/material/InputPhase;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 350
    new-instance v0, Landroidx/compose/material/InputPhase;

    const-string v1, "Focused"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/material/InputPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/material/InputPhase;->Focused:Landroidx/compose/material/InputPhase;

    .line 353
    new-instance v0, Landroidx/compose/material/InputPhase;

    const-string v1, "UnfocusedEmpty"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/material/InputPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/material/InputPhase;->UnfocusedEmpty:Landroidx/compose/material/InputPhase;

    .line 356
    new-instance v0, Landroidx/compose/material/InputPhase;

    const-string v1, "UnfocusedNotEmpty"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/compose/material/InputPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/material/InputPhase;->UnfocusedNotEmpty:Landroidx/compose/material/InputPhase;

    invoke-static {}, Landroidx/compose/material/InputPhase;->$values()[Landroidx/compose/material/InputPhase;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/InputPhase;->$VALUES:[Landroidx/compose/material/InputPhase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 348
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/material/InputPhase;
    .locals 1

    .line 0
    const-class v0, Landroidx/compose/material/InputPhase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/compose/material/InputPhase;

    return-object p0
.end method

.method public static values()[Landroidx/compose/material/InputPhase;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/material/InputPhase;->$VALUES:[Landroidx/compose/material/InputPhase;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/material/InputPhase;

    return-object v0
.end method
