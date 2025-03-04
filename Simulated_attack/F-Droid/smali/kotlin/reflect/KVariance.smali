.class public final enum Lkotlin/reflect/KVariance;
.super Ljava/lang/Enum;
.source "KVariance.kt"


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lkotlin/reflect/KVariance;

.field public static final enum IN:Lkotlin/reflect/KVariance;

.field public static final enum INVARIANT:Lkotlin/reflect/KVariance;

.field public static final enum OUT:Lkotlin/reflect/KVariance;


# direct methods
.method private static final synthetic $values()[Lkotlin/reflect/KVariance;
    .locals 3

    .line 0
    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/reflect/KVariance;

    const/4 v1, 0x0

    sget-object v2, Lkotlin/reflect/KVariance;->INVARIANT:Lkotlin/reflect/KVariance;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lkotlin/reflect/KVariance;->IN:Lkotlin/reflect/KVariance;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lkotlin/reflect/KVariance;->OUT:Lkotlin/reflect/KVariance;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Lkotlin/reflect/KVariance;

    const-string v1, "INVARIANT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/KVariance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/KVariance;->INVARIANT:Lkotlin/reflect/KVariance;

    .line 28
    new-instance v0, Lkotlin/reflect/KVariance;

    const-string v1, "IN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/KVariance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/KVariance;->IN:Lkotlin/reflect/KVariance;

    .line 33
    new-instance v0, Lkotlin/reflect/KVariance;

    const-string v1, "OUT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/KVariance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/KVariance;->OUT:Lkotlin/reflect/KVariance;

    invoke-static {}, Lkotlin/reflect/KVariance;->$values()[Lkotlin/reflect/KVariance;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/KVariance;->$VALUES:[Lkotlin/reflect/KVariance;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/KVariance;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/KVariance;
    .locals 1

    .line 0
    const-class v0, Lkotlin/reflect/KVariance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/KVariance;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/KVariance;
    .locals 1

    .line 0
    sget-object v0, Lkotlin/reflect/KVariance;->$VALUES:[Lkotlin/reflect/KVariance;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/KVariance;

    return-object v0
.end method
