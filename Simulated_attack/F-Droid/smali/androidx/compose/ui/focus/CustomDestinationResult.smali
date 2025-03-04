.class public final enum Landroidx/compose/ui/focus/CustomDestinationResult;
.super Ljava/lang/Enum;
.source "FocusTransactions.kt"


# static fields
.field private static final synthetic $VALUES:[Landroidx/compose/ui/focus/CustomDestinationResult;

.field public static final enum Cancelled:Landroidx/compose/ui/focus/CustomDestinationResult;

.field public static final enum None:Landroidx/compose/ui/focus/CustomDestinationResult;

.field public static final enum RedirectCancelled:Landroidx/compose/ui/focus/CustomDestinationResult;

.field public static final enum Redirected:Landroidx/compose/ui/focus/CustomDestinationResult;


# direct methods
.method private static final synthetic $values()[Landroidx/compose/ui/focus/CustomDestinationResult;
    .locals 3

    .line 0
    const/4 v0, 0x4

    new-array v0, v0, [Landroidx/compose/ui/focus/CustomDestinationResult;

    const/4 v1, 0x0

    sget-object v2, Landroidx/compose/ui/focus/CustomDestinationResult;->None:Landroidx/compose/ui/focus/CustomDestinationResult;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroidx/compose/ui/focus/CustomDestinationResult;->Cancelled:Landroidx/compose/ui/focus/CustomDestinationResult;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroidx/compose/ui/focus/CustomDestinationResult;->Redirected:Landroidx/compose/ui/focus/CustomDestinationResult;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroidx/compose/ui/focus/CustomDestinationResult;->RedirectCancelled:Landroidx/compose/ui/focus/CustomDestinationResult;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 245
    new-instance v0, Landroidx/compose/ui/focus/CustomDestinationResult;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/focus/CustomDestinationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/ui/focus/CustomDestinationResult;->None:Landroidx/compose/ui/focus/CustomDestinationResult;

    new-instance v0, Landroidx/compose/ui/focus/CustomDestinationResult;

    const-string v1, "Cancelled"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/focus/CustomDestinationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/ui/focus/CustomDestinationResult;->Cancelled:Landroidx/compose/ui/focus/CustomDestinationResult;

    new-instance v0, Landroidx/compose/ui/focus/CustomDestinationResult;

    const-string v1, "Redirected"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/focus/CustomDestinationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/ui/focus/CustomDestinationResult;->Redirected:Landroidx/compose/ui/focus/CustomDestinationResult;

    new-instance v0, Landroidx/compose/ui/focus/CustomDestinationResult;

    const-string v1, "RedirectCancelled"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/focus/CustomDestinationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/ui/focus/CustomDestinationResult;->RedirectCancelled:Landroidx/compose/ui/focus/CustomDestinationResult;

    invoke-static {}, Landroidx/compose/ui/focus/CustomDestinationResult;->$values()[Landroidx/compose/ui/focus/CustomDestinationResult;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/focus/CustomDestinationResult;->$VALUES:[Landroidx/compose/ui/focus/CustomDestinationResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 245
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/ui/focus/CustomDestinationResult;
    .locals 1

    .line 0
    const-class v0, Landroidx/compose/ui/focus/CustomDestinationResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/focus/CustomDestinationResult;

    return-object p0
.end method

.method public static values()[Landroidx/compose/ui/focus/CustomDestinationResult;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/focus/CustomDestinationResult;->$VALUES:[Landroidx/compose/ui/focus/CustomDestinationResult;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/ui/focus/CustomDestinationResult;

    return-object v0
.end method
