.class final enum Ljavax/jmdns/impl/constants/DNSState$StateClass;
.super Ljava/lang/Enum;
.source "DNSState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/constants/DNSState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StateClass"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/jmdns/impl/constants/DNSState$StateClass;

.field public static final enum announced:Ljavax/jmdns/impl/constants/DNSState$StateClass;

.field public static final enum announcing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

.field public static final enum canceled:Ljavax/jmdns/impl/constants/DNSState$StateClass;

.field public static final enum canceling:Ljavax/jmdns/impl/constants/DNSState$StateClass;

.field public static final enum closed:Ljavax/jmdns/impl/constants/DNSState$StateClass;

.field public static final enum closing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

.field public static final enum probing:Ljavax/jmdns/impl/constants/DNSState$StateClass;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 64
    new-instance v0, Ljavax/jmdns/impl/constants/DNSState$StateClass;

    const-string v1, "probing"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavax/jmdns/impl/constants/DNSState$StateClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSState$StateClass;->probing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    new-instance v1, Ljavax/jmdns/impl/constants/DNSState$StateClass;

    const-string v3, "announcing"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljavax/jmdns/impl/constants/DNSState$StateClass;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljavax/jmdns/impl/constants/DNSState$StateClass;->announcing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    new-instance v3, Ljavax/jmdns/impl/constants/DNSState$StateClass;

    const-string v5, "announced"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljavax/jmdns/impl/constants/DNSState$StateClass;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ljavax/jmdns/impl/constants/DNSState$StateClass;->announced:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    new-instance v5, Ljavax/jmdns/impl/constants/DNSState$StateClass;

    const-string v7, "canceling"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljavax/jmdns/impl/constants/DNSState$StateClass;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ljavax/jmdns/impl/constants/DNSState$StateClass;->canceling:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    new-instance v7, Ljavax/jmdns/impl/constants/DNSState$StateClass;

    const-string v9, "canceled"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljavax/jmdns/impl/constants/DNSState$StateClass;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ljavax/jmdns/impl/constants/DNSState$StateClass;->canceled:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    new-instance v9, Ljavax/jmdns/impl/constants/DNSState$StateClass;

    const-string v11, "closing"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ljavax/jmdns/impl/constants/DNSState$StateClass;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ljavax/jmdns/impl/constants/DNSState$StateClass;->closing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    new-instance v11, Ljavax/jmdns/impl/constants/DNSState$StateClass;

    const-string v13, "closed"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ljavax/jmdns/impl/constants/DNSState$StateClass;-><init>(Ljava/lang/String;I)V

    sput-object v11, Ljavax/jmdns/impl/constants/DNSState$StateClass;->closed:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    const/4 v13, 0x7

    new-array v13, v13, [Ljavax/jmdns/impl/constants/DNSState$StateClass;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Ljavax/jmdns/impl/constants/DNSState$StateClass;->$VALUES:[Ljavax/jmdns/impl/constants/DNSState$StateClass;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/jmdns/impl/constants/DNSState$StateClass;
    .locals 1

    const-class v0, Ljavax/jmdns/impl/constants/DNSState$StateClass;

    .line 63
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljavax/jmdns/impl/constants/DNSState$StateClass;

    return-object p0
.end method

.method public static values()[Ljavax/jmdns/impl/constants/DNSState$StateClass;
    .locals 1

    sget-object v0, Ljavax/jmdns/impl/constants/DNSState$StateClass;->$VALUES:[Ljavax/jmdns/impl/constants/DNSState$StateClass;

    .line 63
    invoke-virtual {v0}, [Ljavax/jmdns/impl/constants/DNSState$StateClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/jmdns/impl/constants/DNSState$StateClass;

    return-object v0
.end method
