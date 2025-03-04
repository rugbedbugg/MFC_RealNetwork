.class public abstract Ljavax/jmdns/impl/constants/DNSConstants;
.super Ljava/lang/Object;
.source "DNSConstants.java"


# static fields
.field public static final ANNOUNCED_RENEWAL_TTL_INTERVAL:I

.field public static final DNS_TTL:I

.field public static final MDNS_PORT:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "net.mdns.port"

    const/16 v1, 0x14e9

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Ljavax/jmdns/impl/constants/DNSConstants;->MDNS_PORT:I

    const-string v0, "net.dns.ttl"

    const/16 v1, 0xe10

    .line 20
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Ljavax/jmdns/impl/constants/DNSConstants;->DNS_TTL:I

    mul-int/lit16 v0, v0, 0x1f4

    sput v0, Ljavax/jmdns/impl/constants/DNSConstants;->ANNOUNCED_RENEWAL_TTL_INTERVAL:I

    return-void
.end method
