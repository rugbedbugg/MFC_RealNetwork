.class public final enum Ljavax/jmdns/impl/constants/DNSState;
.super Ljava/lang/Enum;
.source "DNSState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/constants/DNSState$StateClass;
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum ANNOUNCED:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum ANNOUNCING_1:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum ANNOUNCING_2:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum CANCELED:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum CANCELING_1:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum CANCELING_2:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum CANCELING_3:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum CLOSED:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum CLOSING:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum PROBING_1:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum PROBING_2:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum PROBING_3:Ljavax/jmdns/impl/constants/DNSState;


# instance fields
.field private final _name:Ljava/lang/String;

.field private final _state:Ljavax/jmdns/impl/constants/DNSState$StateClass;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 17
    new-instance v0, Ljavax/jmdns/impl/constants/DNSState;

    sget-object v1, Ljavax/jmdns/impl/constants/DNSState$StateClass;->probing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    const-string v2, "PROBING_1"

    const/4 v3, 0x0

    const-string v4, "probing 1"

    invoke-direct {v0, v2, v3, v4, v1}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSState;->PROBING_1:Ljavax/jmdns/impl/constants/DNSState;

    .line 21
    new-instance v2, Ljavax/jmdns/impl/constants/DNSState;

    const-string v4, "probing 2"

    const-string v5, "PROBING_2"

    const/4 v6, 0x1

    invoke-direct {v2, v5, v6, v4, v1}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    sput-object v2, Ljavax/jmdns/impl/constants/DNSState;->PROBING_2:Ljavax/jmdns/impl/constants/DNSState;

    .line 25
    new-instance v4, Ljavax/jmdns/impl/constants/DNSState;

    const-string v5, "probing 3"

    const-string v7, "PROBING_3"

    const/4 v8, 0x2

    invoke-direct {v4, v7, v8, v5, v1}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    sput-object v4, Ljavax/jmdns/impl/constants/DNSState;->PROBING_3:Ljavax/jmdns/impl/constants/DNSState;

    .line 29
    new-instance v1, Ljavax/jmdns/impl/constants/DNSState;

    sget-object v5, Ljavax/jmdns/impl/constants/DNSState$StateClass;->announcing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    const-string v7, "ANNOUNCING_1"

    const/4 v9, 0x3

    const-string v10, "announcing 1"

    invoke-direct {v1, v7, v9, v10, v5}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    sput-object v1, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCING_1:Ljavax/jmdns/impl/constants/DNSState;

    .line 33
    new-instance v7, Ljavax/jmdns/impl/constants/DNSState;

    const-string v10, "announcing 2"

    const-string v11, "ANNOUNCING_2"

    const/4 v12, 0x4

    invoke-direct {v7, v11, v12, v10, v5}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    sput-object v7, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCING_2:Ljavax/jmdns/impl/constants/DNSState;

    .line 37
    new-instance v5, Ljavax/jmdns/impl/constants/DNSState;

    const-string v10, "announced"

    sget-object v11, Ljavax/jmdns/impl/constants/DNSState$StateClass;->announced:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    const-string v13, "ANNOUNCED"

    const/4 v14, 0x5

    invoke-direct {v5, v13, v14, v10, v11}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    sput-object v5, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCED:Ljavax/jmdns/impl/constants/DNSState;

    .line 41
    new-instance v10, Ljavax/jmdns/impl/constants/DNSState;

    sget-object v11, Ljavax/jmdns/impl/constants/DNSState$StateClass;->canceling:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    const-string v13, "CANCELING_1"

    const/4 v15, 0x6

    const-string v14, "canceling 1"

    invoke-direct {v10, v13, v15, v14, v11}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    sput-object v10, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_1:Ljavax/jmdns/impl/constants/DNSState;

    .line 45
    new-instance v13, Ljavax/jmdns/impl/constants/DNSState;

    const-string v14, "canceling 2"

    const-string v15, "CANCELING_2"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14, v11}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    sput-object v13, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_2:Ljavax/jmdns/impl/constants/DNSState;

    .line 49
    new-instance v14, Ljavax/jmdns/impl/constants/DNSState;

    const-string v15, "canceling 3"

    const-string v12, "CANCELING_3"

    const/16 v9, 0x8

    invoke-direct {v14, v12, v9, v15, v11}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    sput-object v14, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_3:Ljavax/jmdns/impl/constants/DNSState;

    .line 53
    new-instance v11, Ljavax/jmdns/impl/constants/DNSState;

    const-string v12, "canceled"

    sget-object v15, Ljavax/jmdns/impl/constants/DNSState$StateClass;->canceled:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    const-string v9, "CANCELED"

    const/16 v8, 0x9

    invoke-direct {v11, v9, v8, v12, v15}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    sput-object v11, Ljavax/jmdns/impl/constants/DNSState;->CANCELED:Ljavax/jmdns/impl/constants/DNSState;

    .line 57
    new-instance v9, Ljavax/jmdns/impl/constants/DNSState;

    const-string v12, "closing"

    sget-object v15, Ljavax/jmdns/impl/constants/DNSState$StateClass;->closing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    const-string v8, "CLOSING"

    const/16 v6, 0xa

    invoke-direct {v9, v8, v6, v12, v15}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    sput-object v9, Ljavax/jmdns/impl/constants/DNSState;->CLOSING:Ljavax/jmdns/impl/constants/DNSState;

    .line 61
    new-instance v8, Ljavax/jmdns/impl/constants/DNSState;

    const-string v12, "closed"

    sget-object v15, Ljavax/jmdns/impl/constants/DNSState$StateClass;->closed:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    const-string v6, "CLOSED"

    const/16 v3, 0xb

    invoke-direct {v8, v6, v3, v12, v15}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    sput-object v8, Ljavax/jmdns/impl/constants/DNSState;->CLOSED:Ljavax/jmdns/impl/constants/DNSState;

    const/16 v6, 0xc

    new-array v6, v6, [Ljavax/jmdns/impl/constants/DNSState;

    const/4 v12, 0x0

    aput-object v0, v6, v12

    const/4 v0, 0x1

    aput-object v2, v6, v0

    const/4 v0, 0x2

    aput-object v4, v6, v0

    const/4 v0, 0x3

    aput-object v1, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    const/4 v0, 0x6

    aput-object v10, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v14, v6, v0

    const/16 v0, 0x9

    aput-object v11, v6, v0

    const/16 v0, 0xa

    aput-object v9, v6, v0

    aput-object v8, v6, v3

    sput-object v6, Ljavax/jmdns/impl/constants/DNSState;->$VALUES:[Ljavax/jmdns/impl/constants/DNSState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ljavax/jmdns/impl/constants/DNSState;->_name:Ljava/lang/String;

    iput-object p4, p0, Ljavax/jmdns/impl/constants/DNSState;->_state:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/jmdns/impl/constants/DNSState;
    .locals 1

    const-class v0, Ljavax/jmdns/impl/constants/DNSState;

    .line 12
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljavax/jmdns/impl/constants/DNSState;

    return-object p0
.end method

.method public static values()[Ljavax/jmdns/impl/constants/DNSState;
    .locals 1

    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->$VALUES:[Ljavax/jmdns/impl/constants/DNSState;

    .line 12
    invoke-virtual {v0}, [Ljavax/jmdns/impl/constants/DNSState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/jmdns/impl/constants/DNSState;

    return-object v0
.end method


# virtual methods
.method public final advance()Ljavax/jmdns/impl/constants/DNSState;
    .locals 2

    .line 91
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState$1;->$SwitchMap$javax$jmdns$impl$constants$DNSState:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    return-object p0

    :pswitch_0
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->CLOSED:Ljavax/jmdns/impl/constants/DNSState;

    return-object v0

    :pswitch_1
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->CLOSED:Ljavax/jmdns/impl/constants/DNSState;

    return-object v0

    :pswitch_2
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->CANCELED:Ljavax/jmdns/impl/constants/DNSState;

    return-object v0

    :pswitch_3
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->CANCELED:Ljavax/jmdns/impl/constants/DNSState;

    return-object v0

    :pswitch_4
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_3:Ljavax/jmdns/impl/constants/DNSState;

    return-object v0

    :pswitch_5
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_2:Ljavax/jmdns/impl/constants/DNSState;

    return-object v0

    :pswitch_6
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCED:Ljavax/jmdns/impl/constants/DNSState;

    return-object v0

    :pswitch_7
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCED:Ljavax/jmdns/impl/constants/DNSState;

    return-object v0

    :pswitch_8
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCING_2:Ljavax/jmdns/impl/constants/DNSState;

    return-object v0

    :pswitch_9
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCING_1:Ljavax/jmdns/impl/constants/DNSState;

    return-object v0

    :pswitch_a
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->PROBING_3:Ljavax/jmdns/impl/constants/DNSState;

    return-object v0

    :pswitch_b
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->PROBING_2:Ljavax/jmdns/impl/constants/DNSState;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isAnnounced()Z
    .locals 2

    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSState;->_state:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    .line 176
    sget-object v1, Ljavax/jmdns/impl/constants/DNSState$StateClass;->announced:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isAnnouncing()Z
    .locals 2

    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSState;->_state:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    .line 167
    sget-object v1, Ljavax/jmdns/impl/constants/DNSState$StateClass;->announcing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCanceled()Z
    .locals 2

    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSState;->_state:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    .line 194
    sget-object v1, Ljavax/jmdns/impl/constants/DNSState$StateClass;->canceled:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCanceling()Z
    .locals 2

    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSState;->_state:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    .line 185
    sget-object v1, Ljavax/jmdns/impl/constants/DNSState$StateClass;->canceling:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isClosed()Z
    .locals 2

    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSState;->_state:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    .line 212
    sget-object v1, Ljavax/jmdns/impl/constants/DNSState$StateClass;->closed:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isClosing()Z
    .locals 2

    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSState;->_state:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    .line 203
    sget-object v1, Ljavax/jmdns/impl/constants/DNSState$StateClass;->closing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isProbing()Z
    .locals 2

    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSState;->_state:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    .line 158
    sget-object v1, Ljavax/jmdns/impl/constants/DNSState$StateClass;->probing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final revert()Ljavax/jmdns/impl/constants/DNSState;
    .locals 2

    .line 128
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState$1;->$SwitchMap$javax$jmdns$impl$constants$DNSState:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    return-object p0

    :pswitch_0
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->CLOSED:Ljavax/jmdns/impl/constants/DNSState;

    return-object v0

    :pswitch_1
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->CLOSING:Ljavax/jmdns/impl/constants/DNSState;

    return-object v0

    :pswitch_2
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->CANCELED:Ljavax/jmdns/impl/constants/DNSState;

    return-object v0

    :pswitch_3
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_1:Ljavax/jmdns/impl/constants/DNSState;

    return-object v0

    :pswitch_4
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->PROBING_1:Ljavax/jmdns/impl/constants/DNSState;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSState;->_name:Ljava/lang/String;

    return-object v0
.end method
