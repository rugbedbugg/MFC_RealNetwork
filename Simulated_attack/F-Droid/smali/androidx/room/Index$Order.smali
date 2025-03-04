.class public final enum Landroidx/room/Index$Order;
.super Ljava/lang/Enum;
.source "Index.kt"


# static fields
.field private static final synthetic $VALUES:[Landroidx/room/Index$Order;

.field public static final enum ASC:Landroidx/room/Index$Order;

.field public static final enum DESC:Landroidx/room/Index$Order;


# direct methods
.method private static final synthetic $values()[Landroidx/room/Index$Order;
    .locals 3

    .line 0
    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/room/Index$Order;

    const/4 v1, 0x0

    sget-object v2, Landroidx/room/Index$Order;->ASC:Landroidx/room/Index$Order;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroidx/room/Index$Order;->DESC:Landroidx/room/Index$Order;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 102
    new-instance v0, Landroidx/room/Index$Order;

    const-string v1, "ASC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/room/Index$Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/room/Index$Order;->ASC:Landroidx/room/Index$Order;

    .line 109
    new-instance v0, Landroidx/room/Index$Order;

    const-string v1, "DESC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/room/Index$Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/room/Index$Order;->DESC:Landroidx/room/Index$Order;

    invoke-static {}, Landroidx/room/Index$Order;->$values()[Landroidx/room/Index$Order;

    move-result-object v0

    sput-object v0, Landroidx/room/Index$Order;->$VALUES:[Landroidx/room/Index$Order;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/room/Index$Order;
    .locals 1

    .line 0
    const-class v0, Landroidx/room/Index$Order;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/room/Index$Order;

    return-object p0
.end method

.method public static values()[Landroidx/room/Index$Order;
    .locals 1

    .line 0
    sget-object v0, Landroidx/room/Index$Order;->$VALUES:[Landroidx/room/Index$Order;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/room/Index$Order;

    return-object v0
.end method
