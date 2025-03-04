.class public final enum Ljavax/jmdns/impl/JmDNSImpl$Operation;
.super Ljava/lang/Enum;
.source "JmDNSImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/JmDNSImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operation"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/jmdns/impl/JmDNSImpl$Operation;

.field public static final enum Add:Ljavax/jmdns/impl/JmDNSImpl$Operation;

.field public static final enum Noop:Ljavax/jmdns/impl/JmDNSImpl$Operation;

.field public static final enum RegisterServiceType:Ljavax/jmdns/impl/JmDNSImpl$Operation;

.field public static final enum Remove:Ljavax/jmdns/impl/JmDNSImpl$Operation;

.field public static final enum Update:Ljavax/jmdns/impl/JmDNSImpl$Operation;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 64
    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;

    const-string v1, "Remove"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavax/jmdns/impl/JmDNSImpl$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Remove:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    new-instance v1, Ljavax/jmdns/impl/JmDNSImpl$Operation;

    const-string v3, "Update"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljavax/jmdns/impl/JmDNSImpl$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Update:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    new-instance v3, Ljavax/jmdns/impl/JmDNSImpl$Operation;

    const-string v5, "Add"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljavax/jmdns/impl/JmDNSImpl$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Add:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    new-instance v5, Ljavax/jmdns/impl/JmDNSImpl$Operation;

    const-string v7, "RegisterServiceType"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljavax/jmdns/impl/JmDNSImpl$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ljavax/jmdns/impl/JmDNSImpl$Operation;->RegisterServiceType:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    new-instance v7, Ljavax/jmdns/impl/JmDNSImpl$Operation;

    const-string v9, "Noop"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljavax/jmdns/impl/JmDNSImpl$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Noop:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    const/4 v9, 0x5

    new-array v9, v9, [Ljavax/jmdns/impl/JmDNSImpl$Operation;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Ljavax/jmdns/impl/JmDNSImpl$Operation;->$VALUES:[Ljavax/jmdns/impl/JmDNSImpl$Operation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/jmdns/impl/JmDNSImpl$Operation;
    .locals 1

    const-class v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;

    .line 63
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljavax/jmdns/impl/JmDNSImpl$Operation;

    return-object p0
.end method

.method public static values()[Ljavax/jmdns/impl/JmDNSImpl$Operation;
    .locals 1

    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->$VALUES:[Ljavax/jmdns/impl/JmDNSImpl$Operation;

    .line 63
    invoke-virtual {v0}, [Ljavax/jmdns/impl/JmDNSImpl$Operation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/jmdns/impl/JmDNSImpl$Operation;

    return-object v0
.end method
