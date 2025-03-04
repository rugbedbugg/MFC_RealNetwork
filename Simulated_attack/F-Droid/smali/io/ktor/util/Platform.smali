.class public final enum Lio/ktor/util/Platform;
.super Ljava/lang/Enum;
.source "PlatformUtils.kt"


# static fields
.field private static final synthetic $VALUES:[Lio/ktor/util/Platform;

.field public static final enum Browser:Lio/ktor/util/Platform;

.field public static final enum Jvm:Lio/ktor/util/Platform;

.field public static final enum Native:Lio/ktor/util/Platform;

.field public static final enum Node:Lio/ktor/util/Platform;


# direct methods
.method private static final synthetic $values()[Lio/ktor/util/Platform;
    .locals 3

    .line 0
    const/4 v0, 0x4

    new-array v0, v0, [Lio/ktor/util/Platform;

    const/4 v1, 0x0

    sget-object v2, Lio/ktor/util/Platform;->Jvm:Lio/ktor/util/Platform;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lio/ktor/util/Platform;->Native:Lio/ktor/util/Platform;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lio/ktor/util/Platform;->Browser:Lio/ktor/util/Platform;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lio/ktor/util/Platform;->Node:Lio/ktor/util/Platform;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 24
    new-instance v0, Lio/ktor/util/Platform;

    const-string v1, "Jvm"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/ktor/util/Platform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/ktor/util/Platform;->Jvm:Lio/ktor/util/Platform;

    new-instance v0, Lio/ktor/util/Platform;

    const-string v1, "Native"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/ktor/util/Platform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/ktor/util/Platform;->Native:Lio/ktor/util/Platform;

    new-instance v0, Lio/ktor/util/Platform;

    const-string v1, "Browser"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/ktor/util/Platform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/ktor/util/Platform;->Browser:Lio/ktor/util/Platform;

    new-instance v0, Lio/ktor/util/Platform;

    const-string v1, "Node"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/ktor/util/Platform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/ktor/util/Platform;->Node:Lio/ktor/util/Platform;

    invoke-static {}, Lio/ktor/util/Platform;->$values()[Lio/ktor/util/Platform;

    move-result-object v0

    sput-object v0, Lio/ktor/util/Platform;->$VALUES:[Lio/ktor/util/Platform;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/ktor/util/Platform;
    .locals 1

    .line 0
    const-class v0, Lio/ktor/util/Platform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/ktor/util/Platform;

    return-object p0
.end method

.method public static values()[Lio/ktor/util/Platform;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/util/Platform;->$VALUES:[Lio/ktor/util/Platform;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/ktor/util/Platform;

    return-object v0
.end method
