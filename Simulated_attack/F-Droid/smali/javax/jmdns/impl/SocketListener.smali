.class Ljavax/jmdns/impl/SocketListener;
.super Ljava/lang/Thread;
.source "SocketListener.java"


# static fields
.field static logger:Lorg/slf4j/Logger;


# instance fields
.field private final _jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljavax/jmdns/impl/SocketListener;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/SocketListener;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocketListener("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    iput-object p1, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, ".run() exception "

    const/16 v1, 0x230c

    :try_start_0
    new-array v2, v1, [B

    .line 38
    new-instance v3, Ljava/net/DatagramPacket;

    invoke-direct {v3, v2, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    :cond_0
    :goto_0
    iget-object v2, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    .line 39
    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_7

    .line 40
    invoke-virtual {v3, v1}, Ljava/net/DatagramPacket;->setLength(I)V

    iget-object v2, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    .line 41
    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->getSocket()Ljava/net/MulticastSocket;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    iget-object v2, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    .line 42
    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->isClosing()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->isClosed()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_1

    goto/16 :goto_3

    :cond_1
    :try_start_1
    iget-object v2, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    .line 46
    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljavax/jmdns/impl/HostInfo;->shouldIgnorePacket(Ljava/net/DatagramPacket;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 50
    :cond_2
    new-instance v2, Ljavax/jmdns/impl/DNSIncoming;

    invoke-direct {v2, v3}, Ljavax/jmdns/impl/DNSIncoming;-><init>(Ljava/net/DatagramPacket;)V

    .line 51
    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSMessage;->isValidResponseCode()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    sget-object v4, Ljavax/jmdns/impl/SocketListener;->logger:Lorg/slf4j/Logger;

    .line 52
    invoke-interface {v4}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Ljavax/jmdns/impl/SocketListener;->logger:Lorg/slf4j/Logger;

    const-string v6, "{}.run() JmDNS in:{}"

    .line 53
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5}, Ljavax/jmdns/impl/DNSIncoming;->print(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v6, v7, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    .line 55
    :cond_3
    :goto_1
    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSMessage;->isQuery()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 56
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getPort()I

    move-result v4

    sget v5, Ljavax/jmdns/impl/constants/DNSConstants;->MDNS_PORT:I

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    .line 57
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getPort()I

    move-result v7

    invoke-virtual {v4, v2, v6, v7}, Ljavax/jmdns/impl/JmDNSImpl;->handleQuery(Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;I)V

    :cond_4
    iget-object v4, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    .line 59
    invoke-virtual {v4}, Ljavax/jmdns/impl/JmDNSImpl;->getGroup()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v4, v2, v6, v5}, Ljavax/jmdns/impl/JmDNSImpl;->handleQuery(Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;I)V

    goto/16 :goto_0

    :cond_5
    iget-object v4, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    .line 61
    invoke-virtual {v4, v2}, Ljavax/jmdns/impl/JmDNSImpl;->handleResponse(Ljavax/jmdns/impl/DNSIncoming;)V

    goto/16 :goto_0

    :cond_6
    sget-object v4, Ljavax/jmdns/impl/SocketListener;->logger:Lorg/slf4j/Logger;

    .line 64
    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Ljavax/jmdns/impl/SocketListener;->logger:Lorg/slf4j/Logger;

    const-string v6, "{}.run() JmDNS in message with error code: {}"

    .line 65
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5}, Ljavax/jmdns/impl/DNSIncoming;->print(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v6, v7, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :goto_2
    :try_start_2
    sget-object v4, Ljavax/jmdns/impl/SocketListener;->logger:Lorg/slf4j/Logger;

    .line 69
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    iget-object v2, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    .line 73
    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->isClosing()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Ljavax/jmdns/impl/SocketListener;->logger:Lorg/slf4j/Logger;

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    .line 75
    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->recover()V

    :cond_7
    :goto_3
    sget-object v0, Ljavax/jmdns/impl/SocketListener;->logger:Lorg/slf4j/Logger;

    const-string v1, "{}.run() exiting."

    .line 78
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
