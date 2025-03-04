.class public final Ljavax/jmdns/impl/DNSIncoming;
.super Ljavax/jmdns/impl/DNSMessage;
.source "DNSIncoming.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;
    }
.end annotation


# static fields
.field public static USE_DOMAIN_NAME_FORMAT_FOR_SRV_TARGET:Z

.field private static final _nibbleToHex:[C

.field private static logger:Lorg/slf4j/Logger;


# instance fields
.field private final _messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

.field private final _packet:Ljava/net/DatagramPacket;

.field private final _receivedTime:J

.field private _senderUDPPayload:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljavax/jmdns/impl/DNSIncoming;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    const/4 v0, 0x1

    sput-boolean v0, Ljavax/jmdns/impl/DNSIncoming;->USE_DOMAIN_NAME_FORMAT_FOR_SRV_TARGET:Z

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Ljavax/jmdns/impl/DNSIncoming;->_nibbleToHex:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>(IIZLjava/net/DatagramPacket;J)V
    .locals 0

    .line 281
    invoke-direct {p0, p1, p2, p3}, Ljavax/jmdns/impl/DNSMessage;-><init>(IIZ)V

    iput-object p4, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    .line 283
    new-instance p1, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {p4}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object p2

    invoke-virtual {p4}, Ljava/net/DatagramPacket;->getLength()I

    move-result p3

    invoke-direct {p1, p2, p3}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;-><init>([BI)V

    iput-object p1, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    iput-wide p5, p0, Ljavax/jmdns/impl/DNSIncoming;->_receivedTime:J

    return-void
.end method

.method public constructor <init>(Ljava/net/DatagramPacket;)V
    .locals 13

    const-string v0, "MessageInputStream close error"

    .line 192
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1

    sget v2, Ljavax/jmdns/impl/constants/DNSConstants;->MDNS_PORT:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-direct {p0, v4, v4, v1}, Ljavax/jmdns/impl/DNSMessage;-><init>(IIZ)V

    iput-object p1, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    .line 194
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 195
    new-instance v2, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v5

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v6

    invoke-direct {v2, v5, v6}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;-><init>([BI)V

    iput-object v2, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Ljavax/jmdns/impl/DNSIncoming;->_receivedTime:J

    const/16 v5, 0x5b4

    iput v5, p0, Ljavax/jmdns/impl/DNSIncoming;->_senderUDPPayload:I

    .line 200
    :try_start_0
    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v5

    invoke-virtual {p0, v5}, Ljavax/jmdns/impl/DNSMessage;->setId(I)V

    .line 201
    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v5

    invoke-virtual {p0, v5}, Ljavax/jmdns/impl/DNSMessage;->setFlags(I)V

    .line 202
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getOperationCode()I

    move-result v5

    if-gtz v5, :cond_a

    .line 205
    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v5

    .line 206
    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v6

    .line 207
    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v7

    .line 208
    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v2

    sget-object v8, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    const-string v9, "DNSIncoming() questions:{} answers:{} authorities:{} additionals:{}"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    .line 211
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v4

    .line 212
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v3

    .line 213
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v10, v12

    .line 214
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x3

    aput-object v11, v10, v12

    .line 210
    invoke-interface {v8, v9, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    mul-int/lit8 v8, v5, 0x5

    add-int v9, v6, v7

    add-int/2addr v9, v2

    mul-int/lit8 v9, v9, 0xb

    add-int/2addr v8, v9

    .line 220
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result p1

    if-gt v8, p1, :cond_9

    if-lez v5, :cond_1

    move p1, v4

    :goto_1
    if-ge p1, v5, :cond_1

    iget-object v8, p0, Ljavax/jmdns/impl/DNSMessage;->_questions:Ljava/util/List;

    .line 227
    invoke-direct {p0}, Ljavax/jmdns/impl/DNSIncoming;->readQuestion()Ljavax/jmdns/impl/DNSQuestion;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :catch_0
    move-exception p1

    goto/16 :goto_6

    :cond_1
    if-lez v6, :cond_3

    move p1, v4

    :goto_2
    if-ge p1, v6, :cond_3

    .line 234
    invoke-direct {p0, v1}, Ljavax/jmdns/impl/DNSIncoming;->readAnswer(Ljava/net/InetAddress;)Ljavax/jmdns/impl/DNSRecord;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v8, p0, Ljavax/jmdns/impl/DNSMessage;->_answers:Ljava/util/List;

    .line 237
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    if-lez v7, :cond_5

    move p1, v4

    :goto_3
    if-ge p1, v7, :cond_5

    .line 244
    invoke-direct {p0, v1}, Ljavax/jmdns/impl/DNSIncoming;->readAnswer(Ljava/net/InetAddress;)Ljavax/jmdns/impl/DNSRecord;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v6, p0, Ljavax/jmdns/impl/DNSMessage;->_authoritativeAnswers:Ljava/util/List;

    .line 247
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_5
    if-lez v2, :cond_7

    :goto_4
    if-ge v4, v2, :cond_7

    .line 254
    invoke-direct {p0, v1}, Ljavax/jmdns/impl/DNSIncoming;->readAnswer(Ljava/net/InetAddress;)Ljavax/jmdns/impl/DNSRecord;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v5, p0, Ljavax/jmdns/impl/DNSMessage;->_additionals:Ljava/util/List;

    .line 257
    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    iget-object p1, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    .line 262
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz p1, :cond_8

    :try_start_1
    iget-object p1, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    .line 273
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    sget-object p1, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    .line 275
    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :goto_5
    return-void

    .line 263
    :cond_8
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Received a message with the wrong length."

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 221
    :cond_9
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "questions:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " answers:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " authorities:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " additionals:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 203
    :cond_a
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Received a message with a non standard operation code. Currently unsupported in the specification."

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_6
    :try_start_3
    sget-object v1, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DNSIncoming() dump "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/DNSIncoming;->print(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    new-instance v1, Ljava/io/IOException;

    const-string v2, "DNSIncoming corrupted message"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 270
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_7
    :try_start_4
    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    .line 273
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    :catch_2
    sget-object v1, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    .line 275
    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 276
    :goto_8
    throw p1
.end method

.method private _hexString([B)Ljava/lang/String;
    .locals 5

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 612
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 613
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    sget-object v3, Ljavax/jmdns/impl/DNSIncoming;->_nibbleToHex:[C

    .line 614
    div-int/lit8 v4, v2, 0x10

    aget-char v4, v3, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 615
    rem-int/lit8 v2, v2, 0x10

    aget-char v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 618
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readAnswer(Ljava/net/InetAddress;)Ljavax/jmdns/impl/DNSRecord;
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    .line 315
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readName()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    .line 316
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v1

    invoke-static {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->typeForIndex(I)Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v1

    .line 317
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_IGNORE:Ljavax/jmdns/impl/constants/DNSRecordType;

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    sget-object v2, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    const-string v5, "Could not find record type. domain: {}\n{}"

    .line 318
    invoke-virtual {v0, v4}, Ljavax/jmdns/impl/DNSIncoming;->print(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v3, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v2, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    .line 320
    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v2

    .line 321
    sget-object v5, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_OPT:Ljavax/jmdns/impl/constants/DNSRecordType;

    if-ne v1, v5, :cond_1

    sget-object v6, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljavax/jmdns/impl/constants/DNSRecordClass;->classForIndex(I)Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v6

    .line 322
    :goto_0
    sget-object v7, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-ne v6, v7, :cond_2

    if-eq v1, v5, :cond_2

    sget-object v5, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v3, v7, v10

    aput-object v1, v7, v4

    .line 323
    invoke-virtual {v0, v4}, Ljavax/jmdns/impl/DNSIncoming;->print(Z)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    const-string v11, "Could not find record class. domain: {} type: {}\n{}"

    invoke-interface {v5, v11, v7}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    :cond_2
    invoke-virtual {v6, v2}, Ljavax/jmdns/impl/constants/DNSRecordClass;->isUnique(I)Z

    move-result v5

    iget-object v7, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    .line 326
    invoke-virtual {v7}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readInt()I

    move-result v7

    iget-object v11, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    .line 327
    invoke-virtual {v11}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v11

    .line 330
    sget-object v12, Ljavax/jmdns/impl/DNSIncoming$1;->$SwitchMap$javax$jmdns$impl$constants$DNSRecordType:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v12, v12, v13

    const-string v14, ""

    packed-switch v12, :pswitch_data_0

    sget-object v2, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    const-string v3, "DNSIncoming() unknown type: {}"

    .line 471
    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    int-to-long v2, v11

    .line 472
    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    goto/16 :goto_11

    .line 374
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/DNSMessage;->getFlags()I

    move-result v1

    invoke-static {v1, v7}, Ljavax/jmdns/impl/constants/DNSResultCode;->resultCodeForFlags(II)Ljavax/jmdns/impl/constants/DNSResultCode;

    move-result-object v1

    const/high16 v3, 0xff0000

    and-int/2addr v3, v7

    const/16 v5, 0x10

    shr-int/2addr v3, v5

    if-nez v3, :cond_12

    iput v2, v0, Ljavax/jmdns/impl/DNSIncoming;->_senderUDPPayload:I

    :cond_3
    :goto_1
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    .line 378
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_17

    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    .line 382
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    const-string v2, "There was a problem reading the OPT record. Ignoring."

    if-lt v1, v9, :cond_11

    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    .line 383
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v1

    .line 384
    invoke-static {v1}, Ljavax/jmdns/impl/constants/DNSOptionCode;->resultCodeForFlags(I)Ljavax/jmdns/impl/constants/DNSOptionCode;

    move-result-object v3

    iget-object v6, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    .line 390
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v6

    if-lt v6, v9, :cond_10

    iget-object v2, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    .line 391
    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v2

    new-array v6, v10, [B

    iget-object v7, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    .line 397
    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v7

    if-lt v7, v2, :cond_4

    iget-object v6, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    .line 398
    invoke-virtual {v6, v2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readBytes(I)[B

    move-result-object v6

    .line 402
    :cond_4
    sget-object v2, Ljavax/jmdns/impl/DNSIncoming$1;->$SwitchMap$javax$jmdns$impl$constants$DNSOptionCode:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v2, v2, v7

    const/4 v7, 0x5

    const/4 v11, 0x4

    if-eq v2, v4, :cond_8

    if-eq v2, v9, :cond_7

    if-eq v2, v8, :cond_7

    if-eq v2, v11, :cond_7

    if-eq v2, v7, :cond_5

    goto :goto_1

    :cond_5
    const v2, 0xfde9

    if-lt v1, v2, :cond_6

    const v2, 0xfffe

    if-gt v1, v2, :cond_6

    sget-object v2, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    .line 456
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v6}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v3

    const-string v6, "There was an OPT answer using an experimental/local option code: {} data: {}"

    invoke-interface {v2, v6, v1, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    sget-object v2, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    .line 458
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v6}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v3

    const-string v6, "There was an OPT answer. Not currently handled. Option code: {} data: {}"

    invoke-interface {v2, v6, v1, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    sget-object v1, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    .line 449
    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    const-string v2, "There was an OPT answer. Option code: {} data: {}"

    .line 450
    invoke-direct {v0, v6}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v2, v3, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_8
    const/4 v1, 0x7

    const/4 v2, 0x6

    .line 415
    :try_start_0
    aget-byte v3, v6, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 416
    :try_start_1
    aget-byte v12, v6, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    new-array v15, v2, [B

    .line 417
    aget-byte v16, v6, v9

    aput-byte v16, v15, v10

    aget-byte v16, v6, v8

    aput-byte v16, v15, v4

    aget-byte v16, v6, v11

    aput-byte v16, v15, v9

    aget-byte v16, v6, v7

    aput-byte v16, v15, v8

    aget-byte v16, v6, v2

    aput-byte v16, v15, v11

    aget-byte v16, v6, v1

    aput-byte v16, v15, v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 419
    :try_start_3
    array-length v13, v6

    const/16 v1, 0x8

    if-le v13, v1, :cond_9

    new-array v13, v2, [B

    .line 421
    aget-byte v17, v6, v1

    aput-byte v17, v13, v10

    const/16 v17, 0x9

    aget-byte v17, v6, v17

    aput-byte v17, v13, v4

    const/16 v17, 0xa

    aget-byte v17, v6, v17

    aput-byte v17, v13, v9

    const/16 v17, 0xb

    aget-byte v17, v6, v17

    aput-byte v17, v13, v8

    const/16 v17, 0xc

    aget-byte v17, v6, v17

    aput-byte v17, v13, v11

    const/16 v17, 0xd

    aget-byte v17, v6, v17

    aput-byte v17, v13, v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-object v13, v15

    :catch_1
    const/4 v2, 0x0

    goto :goto_5

    :cond_9
    move-object v13, v15

    .line 423
    :goto_2
    :try_start_4
    array-length v2, v6

    const/16 v18, 0x11

    const/16 v19, 0xf

    const/16 v20, 0xe

    const/16 v7, 0x12

    if-ne v2, v7, :cond_a

    new-array v2, v11, [B

    .line 425
    aget-byte v21, v6, v20

    aput-byte v21, v2, v10

    aget-byte v21, v6, v19

    aput-byte v21, v2, v4

    aget-byte v21, v6, v5

    aput-byte v21, v2, v9

    aget-byte v21, v6, v18

    aput-byte v21, v2, v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :cond_a
    const/4 v2, 0x0

    .line 427
    :goto_3
    :try_start_5
    array-length v11, v6

    const/16 v7, 0x16

    if-ne v11, v7, :cond_b

    new-array v1, v1, [B

    .line 429
    aget-byte v7, v6, v20

    aput-byte v7, v1, v10

    aget-byte v7, v6, v19

    aput-byte v7, v1, v4

    aget-byte v7, v6, v5

    aput-byte v7, v1, v9

    aget-byte v7, v6, v18

    aput-byte v7, v1, v8

    const/16 v7, 0x12

    aget-byte v7, v6, v7

    const/4 v11, 0x4

    aput-byte v7, v1, v11

    const/16 v7, 0x13

    aget-byte v7, v6, v7

    const/4 v11, 0x5

    aput-byte v7, v1, v11

    const/16 v7, 0x14

    aget-byte v7, v6, v7

    const/4 v11, 0x6

    aput-byte v7, v1, v11

    const/16 v7, 0x15

    aget-byte v7, v6, v7

    const/4 v11, 0x7

    aput-byte v7, v1, v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-object v2, v1

    goto :goto_6

    :catch_2
    :goto_4
    const/4 v2, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    goto :goto_5

    :catch_3
    move v12, v10

    goto :goto_4

    :catch_4
    move v3, v10

    move v12, v3

    goto :goto_4

    :catch_5
    :goto_5
    sget-object v1, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    const-string v7, "Malformed OPT answer. Option code: Owner data: {}"

    .line 432
    invoke-direct {v0, v6}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v7, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    :goto_6
    sget-object v1, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    .line 434
    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    .line 436
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v10

    .line 437
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v4

    .line 438
    invoke-direct {v0, v15}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v9

    if-eq v13, v15, :cond_c

    const-string v3, " wakeup MAC address: "

    goto :goto_7

    :cond_c
    move-object v3, v14

    :goto_7
    aput-object v3, v6, v8

    if-eq v13, v15, :cond_d

    .line 440
    invoke-direct {v0, v13}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v3

    :goto_8
    const/4 v7, 0x4

    goto :goto_9

    :cond_d
    move-object v3, v14

    goto :goto_8

    :goto_9
    aput-object v3, v6, v7

    if-eqz v2, :cond_e

    const-string v3, " password: "

    :goto_a
    const/4 v7, 0x5

    goto :goto_b

    :cond_e
    move-object v3, v14

    goto :goto_a

    :goto_b
    aput-object v3, v6, v7

    if-eqz v2, :cond_f

    .line 442
    invoke-direct {v0, v2}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v2

    :goto_c
    const/4 v3, 0x6

    goto :goto_d

    :cond_f
    move-object v2, v14

    goto :goto_c

    :goto_d
    aput-object v2, v6, v3

    const-string v2, "Unhandled Owner OPT version: {} sequence: {} MAC address: {} {}{} {}{}"

    .line 435
    invoke-interface {v1, v2, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_10
    sget-object v1, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    .line 393
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_11
    sget-object v1, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    .line 386
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_12
    sget-object v2, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    const-string v4, "There was an OPT answer. Wrong version number: {} result code: {}"

    .line 467
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v4, v3, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_11

    .line 366
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    .line 367
    invoke-virtual {v2, v11}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUTF(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    .line 368
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_13

    .line 369
    invoke-virtual {v1, v10, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_e

    :cond_13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_e
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    if-lez v2, :cond_14

    add-int/2addr v2, v4

    .line 370
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v14

    :cond_14
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 371
    new-instance v13, Ljavax/jmdns/impl/DNSRecord$HostInformation;

    move-object v2, v13

    move-object v4, v6

    move v6, v7

    move-object v7, v8

    move-object v8, v1

    invoke-direct/range {v2 .. v8}, Ljavax/jmdns/impl/DNSRecord$HostInformation;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    :pswitch_2
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    .line 351
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v1

    iget-object v2, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    .line 352
    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v8

    iget-object v2, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    .line 353
    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v9

    sget-boolean v2, Ljavax/jmdns/impl/DNSIncoming;->USE_DOMAIN_NAME_FORMAT_FOR_SRV_TARGET:Z

    if-eqz v2, :cond_15

    iget-object v2, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    .line 358
    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readName()Ljava/lang/String;

    move-result-object v2

    :goto_f
    move-object v10, v2

    goto :goto_10

    :cond_15
    iget-object v2, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    .line 361
    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readNonNameString()Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    .line 363
    :goto_10
    new-instance v13, Ljavax/jmdns/impl/DNSRecord$Service;

    move-object v2, v13

    move-object v4, v6

    move v6, v7

    move v7, v1

    invoke-direct/range {v2 .. v10}, Ljavax/jmdns/impl/DNSRecord$Service;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZIIIILjava/lang/String;)V

    goto :goto_12

    .line 348
    :pswitch_3
    new-instance v13, Ljavax/jmdns/impl/DNSRecord$Text;

    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v1, v11}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readBytes(I)[B

    move-result-object v1

    move-object v2, v13

    move-object v4, v6

    move v6, v7

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Ljavax/jmdns/impl/DNSRecord$Text;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V

    goto :goto_12

    :pswitch_4
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    .line 340
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readName()Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_16

    .line 342
    new-instance v13, Ljavax/jmdns/impl/DNSRecord$Pointer;

    move-object v2, v13

    move-object v4, v6

    move v6, v7

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Ljavax/jmdns/impl/DNSRecord$Pointer;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    goto :goto_12

    :cond_16
    sget-object v1, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    const-string v2, "PTR record of class: {}, there was a problem reading the service name of the answer for domain: {}"

    .line 344
    invoke-interface {v1, v2, v6, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    :goto_11
    const/4 v13, 0x0

    goto :goto_12

    .line 335
    :pswitch_5
    new-instance v13, Ljavax/jmdns/impl/DNSRecord$IPv6Address;

    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v1, v11}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readBytes(I)[B

    move-result-object v1

    move-object v2, v13

    move-object v4, v6

    move v6, v7

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Ljavax/jmdns/impl/DNSRecord$IPv6Address;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V

    goto :goto_12

    .line 332
    :pswitch_6
    new-instance v13, Ljavax/jmdns/impl/DNSRecord$IPv4Address;

    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v1, v11}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readBytes(I)[B

    move-result-object v1

    move-object v2, v13

    move-object v4, v6

    move v6, v7

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Ljavax/jmdns/impl/DNSRecord$IPv4Address;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V

    :goto_12
    if-eqz v13, :cond_18

    move-object/from16 v1, p1

    .line 476
    invoke-virtual {v13, v1}, Ljavax/jmdns/impl/DNSRecord;->setRecordSource(Ljava/net/InetAddress;)V

    :cond_18
    return-object v13

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readQuestion()Ljavax/jmdns/impl/DNSQuestion;
    .locals 5

    iget-object v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    .line 303
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    .line 304
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v1

    invoke-static {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->typeForIndex(I)Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v1

    .line 305
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_IGNORE:Ljavax/jmdns/impl/constants/DNSRecordType;

    if-ne v1, v2, :cond_0

    sget-object v2, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    const/4 v3, 0x1

    .line 306
    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/DNSIncoming;->print(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Could not find record type: {}"

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    .line 308
    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v2

    .line 309
    invoke-static {v2}, Ljavax/jmdns/impl/constants/DNSRecordClass;->classForIndex(I)Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v3

    .line 310
    invoke-virtual {v3, v2}, Ljavax/jmdns/impl/constants/DNSRecordClass;->isUnique(I)Z

    move-result v2

    .line 311
    invoke-static {v0, v1, v3, v2}, Ljavax/jmdns/impl/DNSQuestion;->newQuestion(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)Ljavax/jmdns/impl/DNSQuestion;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method append(Ljavax/jmdns/impl/DNSIncoming;)V
    .locals 2

    .line 577
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->isQuery()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->isTruncated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSMessage;->isQuery()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/DNSMessage;->_questions:Ljava/util/List;

    .line 578
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSMessage;->getQuestions()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Ljavax/jmdns/impl/DNSMessage;->_answers:Ljava/util/List;

    .line 579
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSMessage;->getAnswers()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Ljavax/jmdns/impl/DNSMessage;->_authoritativeAnswers:Ljava/util/List;

    .line 580
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSMessage;->getAuthorities()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Ljavax/jmdns/impl/DNSMessage;->_additionals:Ljava/util/List;

    .line 581
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSMessage;->getAdditionals()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 583
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->clone()Ljavax/jmdns/impl/DNSIncoming;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljavax/jmdns/impl/DNSIncoming;
    .locals 8

    .line 293
    new-instance v7, Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getFlags()I

    move-result v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getId()I

    move-result v2

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->isMulticast()Z

    move-result v3

    iget-object v4, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    iget-wide v5, p0, Ljavax/jmdns/impl/DNSIncoming;->_receivedTime:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/DNSIncoming;-><init>(IIZLjava/net/DatagramPacket;J)V

    iget v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_senderUDPPayload:I

    iput v0, v7, Ljavax/jmdns/impl/DNSIncoming;->_senderUDPPayload:I

    iget-object v0, v7, Ljavax/jmdns/impl/DNSMessage;->_questions:Ljava/util/List;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSMessage;->_questions:Ljava/util/List;

    .line 295
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v7, Ljavax/jmdns/impl/DNSMessage;->_answers:Ljava/util/List;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSMessage;->_answers:Ljava/util/List;

    .line 296
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v7, Ljavax/jmdns/impl/DNSMessage;->_authoritativeAnswers:Ljava/util/List;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSMessage;->_authoritativeAnswers:Ljava/util/List;

    .line 297
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v7, Ljavax/jmdns/impl/DNSMessage;->_additionals:Ljava/util/List;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSMessage;->_additionals:Ljava/util/List;

    .line 298
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v7
.end method

.method public elapseSinceArrival()I
    .locals 4

    .line 588
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ljavax/jmdns/impl/DNSIncoming;->_receivedTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getSenderUDPPayload()I
    .locals 1

    .line 0
    iget v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_senderUDPPayload:I

    return v0
.end method

.method print(Z)Ljava/lang/String;
    .locals 4

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 486
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    iget-object p1, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    .line 488
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result p1

    new-array v1, p1, [B

    iget-object v2, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    .line 489
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 490
    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSMessage;->print([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 498
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->isQuery()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "dns[query,"

    goto :goto_0

    :cond_0
    const-string v1, "dns[response,"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    .line 499
    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    .line 500
    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v1, 0x3a

    .line 502
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    .line 503
    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    .line 505
    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id=0x"

    .line 506
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getFlags()I

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ", flags=0x"

    .line 509
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getFlags()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getFlags()I

    move-result v1

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    const-string v1, ":r"

    .line 512
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    :cond_2
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_3

    const-string v1, ":aa"

    .line 515
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    :cond_3
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_4

    const-string v1, ":tc"

    .line 518
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    :cond_4
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfQuestions()I

    move-result v1

    if-lez v1, :cond_5

    const-string v1, ", questions="

    .line 522
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfQuestions()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 525
    :cond_5
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfAnswers()I

    move-result v1

    if-lez v1, :cond_6

    const-string v1, ", answers="

    .line 526
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfAnswers()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 529
    :cond_6
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfAuthorities()I

    move-result v1

    if-lez v1, :cond_7

    const-string v1, ", authorities="

    .line 530
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfAuthorities()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 533
    :cond_7
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfAdditionals()I

    move-result v1

    if-lez v1, :cond_8

    const-string v1, ", additionals="

    .line 534
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfAdditionals()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 537
    :cond_8
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfQuestions()I

    move-result v1

    const-string v2, "\n\t"

    if-lez v1, :cond_9

    const-string v1, "\nquestions:"

    .line 538
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSMessage;->_questions:Ljava/util/List;

    .line 539
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSQuestion;

    .line 540
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 544
    :cond_9
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfAnswers()I

    move-result v1

    if-lez v1, :cond_a

    const-string v1, "\nanswers:"

    .line 545
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSMessage;->_answers:Ljava/util/List;

    .line 546
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSRecord;

    .line 547
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 551
    :cond_a
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfAuthorities()I

    move-result v1

    if-lez v1, :cond_b

    const-string v1, "\nauthorities:"

    .line 552
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSMessage;->_authoritativeAnswers:Ljava/util/List;

    .line 553
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSRecord;

    .line 554
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 558
    :cond_b
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfAdditionals()I

    move-result v1

    if-lez v1, :cond_c

    const-string v1, "\nadditionals:"

    .line 559
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSMessage;->_additionals:Ljava/util/List;

    .line 560
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSRecord;

    .line 561
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_c
    const/16 v1, 0x5d

    .line 565
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
