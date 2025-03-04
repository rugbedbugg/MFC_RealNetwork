.class public final enum Lorg/bouncycastle/its/ITSValidityPeriod$Unit;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/its/ITSValidityPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Unit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bouncycastle/its/ITSValidityPeriod$Unit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

.field public static final enum hours:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

.field public static final enum microseconds:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

.field public static final enum milliseconds:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

.field public static final enum minutes:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

.field public static final enum seconds:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

.field public static final enum sixtyHours:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

.field public static final enum years:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;


# instance fields
.field private final unitTag:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 0
    new-instance v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    const-string v1, "microseconds"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->microseconds:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    new-instance v1, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    const-string v3, "milliseconds"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->milliseconds:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    new-instance v3, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    const-string v5, "seconds"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->seconds:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    new-instance v5, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    const-string v7, "minutes"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->minutes:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    new-instance v7, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    const-string v9, "hours"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->hours:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    new-instance v9, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    const-string v11, "sixtyHours"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->sixtyHours:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    new-instance v11, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    const-string v13, "years"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->years:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    const/4 v13, 0x7

    new-array v13, v13, [Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->$VALUES:[Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->unitTag:I

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/its/ITSValidityPeriod$Unit;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->unitTag:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/its/ITSValidityPeriod$Unit;
    .locals 1

    .line 0
    const-class v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    return-object p0
.end method

.method public static values()[Lorg/bouncycastle/its/ITSValidityPeriod$Unit;
    .locals 1

    .line 0
    sget-object v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->$VALUES:[Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    invoke-virtual {v0}, [Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    return-object v0
.end method
