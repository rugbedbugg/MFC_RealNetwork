.class public final Ljavax/jmdns/impl/DNSOutgoing;
.super Ljavax/jmdns/impl/DNSMessage;
.source "DNSOutgoing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;
    }
.end annotation


# static fields
.field public static USE_DOMAIN_NAME_COMPRESSION:Z = true


# instance fields
.field private final _additionalsAnswersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

.field private final _answersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

.field private final _authoritativeAnswersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

.field private _destination:Ljava/net/InetSocketAddress;

.field private _maxUDPPayload:I

.field _names:Ljava/util/Map;

.field private final _questionsBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x5b4

    .line 199
    invoke-direct {p0, p1, v0, v1}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    return-void
.end method

.method public constructor <init>(IZI)V
    .locals 1

    const/4 v0, 0x0

    .line 221
    invoke-direct {p0, p1, v0, p2}, Ljavax/jmdns/impl/DNSMessage;-><init>(IIZ)V

    .line 222
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_names:Ljava/util/Map;

    if-lez p3, :cond_0

    move p1, p3

    goto :goto_0

    :cond_0
    const/16 p1, 0x5b4

    :goto_0
    iput p1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_maxUDPPayload:I

    .line 224
    new-instance p1, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    invoke-direct {p1, p3, p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;)V

    iput-object p1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_questionsBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    .line 225
    new-instance p1, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    invoke-direct {p1, p3, p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;)V

    iput-object p1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_answersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    .line 226
    new-instance p1, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    invoke-direct {p1, p3, p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;)V

    iput-object p1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_authoritativeAnswersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    .line 227
    new-instance p1, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    invoke-direct {p1, p3, p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;)V

    iput-object p1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_additionalsAnswersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    return-void
.end method


# virtual methods
.method public addAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 285
    invoke-virtual {p2, p1}, Ljavax/jmdns/impl/DNSRecord;->suppressedBy(Ljavax/jmdns/impl/DNSIncoming;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    .line 286
    invoke-virtual {p0, p2, v0, v1}, Ljavax/jmdns/impl/DNSOutgoing;->addAnswer(Ljavax/jmdns/impl/DNSRecord;J)V

    :cond_1
    return-void
.end method

.method public addAnswer(Ljavax/jmdns/impl/DNSRecord;J)V
    .locals 2

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p1, p2, p3}, Ljavax/jmdns/impl/DNSRecord;->isExpired(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 300
    :cond_0
    new-instance v0, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1, p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;)V

    .line 301
    invoke-virtual {v0, p1, p2, p3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeRecord(Ljavax/jmdns/impl/DNSRecord;J)V

    .line 302
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 303
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 304
    array-length p3, p2

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->availableSpace()I

    move-result v0

    if-ge p3, v0, :cond_1

    iget-object p3, p0, Ljavax/jmdns/impl/DNSMessage;->_answers:Ljava/util/List;

    .line 305
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_answersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    const/4 p3, 0x0

    .line 306
    array-length v0, p2

    invoke-virtual {p1, p2, p3, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 308
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "message full"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public addAuthorativeAnswer(Ljavax/jmdns/impl/DNSRecord;)V
    .locals 3

    .line 321
    new-instance v0, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1, p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;)V

    const-wide/16 v1, 0x0

    .line 322
    invoke-virtual {v0, p1, v1, v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeRecord(Ljavax/jmdns/impl/DNSRecord;J)V

    .line 323
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 324
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 325
    array-length v0, v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->availableSpace()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/DNSMessage;->_authoritativeAnswers:Ljava/util/List;

    .line 326
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_authoritativeAnswersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    const/4 v0, 0x0

    .line 327
    array-length v2, v1

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    return-void

    .line 329
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "message full"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addQuestion(Ljavax/jmdns/impl/DNSQuestion;)V
    .locals 3

    .line 265
    new-instance v0, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1, p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;)V

    .line 266
    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeQuestion(Ljavax/jmdns/impl/DNSQuestion;)V

    .line 267
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 268
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 269
    array-length v0, v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->availableSpace()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/DNSMessage;->_questions:Ljava/util/List;

    .line 270
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_questionsBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    const/4 v0, 0x0

    .line 271
    array-length v2, v1

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    return-void

    .line 273
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "message full"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public availableSpace()I
    .locals 2

    iget v0, p0, Ljavax/jmdns/impl/DNSOutgoing;->_maxUDPPayload:I

    add-int/lit8 v0, v0, -0xc

    iget-object v1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_questionsBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    .line 255
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_answersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_authoritativeAnswersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_additionalsAnswersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public data()[B
    .locals 5

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Ljavax/jmdns/impl/DNSOutgoing;->_names:Ljava/util/Map;

    .line 360
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 362
    new-instance v2, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    iget v3, p0, Ljavax/jmdns/impl/DNSOutgoing;->_maxUDPPayload:I

    invoke-direct {v2, v3, p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;)V

    iget-boolean v3, p0, Ljavax/jmdns/impl/DNSMessage;->_multicast:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 363
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getId()I

    move-result v3

    :goto_0
    invoke-virtual {v2, v3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 364
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getFlags()I

    move-result v3

    invoke-virtual {v2, v3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 365
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfQuestions()I

    move-result v3

    invoke-virtual {v2, v3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 366
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfAnswers()I

    move-result v3

    invoke-virtual {v2, v3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 367
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfAuthorities()I

    move-result v3

    invoke-virtual {v2, v3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 368
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfAdditionals()I

    move-result v3

    invoke-virtual {v2, v3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    iget-object v3, p0, Ljavax/jmdns/impl/DNSMessage;->_questions:Ljava/util/List;

    .line 369
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/jmdns/impl/DNSQuestion;

    .line 370
    invoke-virtual {v2, v4}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeQuestion(Ljavax/jmdns/impl/DNSQuestion;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Ljavax/jmdns/impl/DNSMessage;->_answers:Ljava/util/List;

    .line 372
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/jmdns/impl/DNSRecord;

    .line 373
    invoke-virtual {v2, v4, v0, v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeRecord(Ljavax/jmdns/impl/DNSRecord;J)V

    goto :goto_2

    :cond_2
    iget-object v3, p0, Ljavax/jmdns/impl/DNSMessage;->_authoritativeAnswers:Ljava/util/List;

    .line 375
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/jmdns/impl/DNSRecord;

    .line 376
    invoke-virtual {v2, v4, v0, v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeRecord(Ljavax/jmdns/impl/DNSRecord;J)V

    goto :goto_3

    :cond_3
    iget-object v3, p0, Ljavax/jmdns/impl/DNSMessage;->_additionals:Ljava/util/List;

    .line 378
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/jmdns/impl/DNSRecord;

    .line 379
    invoke-virtual {v2, v4, v0, v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeRecord(Ljavax/jmdns/impl/DNSRecord;J)V

    goto :goto_4

    .line 381
    :cond_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 383
    :try_start_0
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public getDestination()Ljava/net/InetSocketAddress;
    .locals 1

    .line 0
    iget-object v0, p0, Ljavax/jmdns/impl/DNSOutgoing;->_destination:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getMaxUDPPayload()I
    .locals 1

    .line 0
    iget v0, p0, Ljavax/jmdns/impl/DNSOutgoing;->_maxUDPPayload:I

    return v0
.end method

.method public setDestination(Ljava/net/InetSocketAddress;)V
    .locals 0

    .line 0
    iput-object p1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_destination:Ljava/net/InetSocketAddress;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->isQuery()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "dns[query:"

    goto :goto_0

    :cond_0
    const-string v1, "dns[response:"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " id=0x"

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getFlags()I

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ", flags=0x"

    .line 407
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getFlags()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->isResponse()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ":r"

    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    :cond_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->isAuthoritativeAnswer()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ":aa"

    .line 413
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    :cond_2
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->isTruncated()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ":tc"

    .line 416
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    :cond_3
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfQuestions()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, ", questions="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfQuestions()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 423
    :cond_4
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfAnswers()I

    move-result v1

    if-lez v1, :cond_5

    const-string v1, ", answers="

    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfAnswers()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 427
    :cond_5
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfAuthorities()I

    move-result v1

    if-lez v1, :cond_6

    const-string v1, ", authorities="

    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfAuthorities()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 431
    :cond_6
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfAdditionals()I

    move-result v1

    if-lez v1, :cond_7

    const-string v1, ", additionals="

    .line 432
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfAdditionals()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 435
    :cond_7
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfQuestions()I

    move-result v1

    const-string v2, "\n\t"

    if-lez v1, :cond_8

    const-string v1, "\nquestions:"

    .line 436
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSMessage;->_questions:Ljava/util/List;

    .line 437
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSQuestion;

    .line 438
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 442
    :cond_8
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfAnswers()I

    move-result v1

    if-lez v1, :cond_9

    const-string v1, "\nanswers:"

    .line 443
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSMessage;->_answers:Ljava/util/List;

    .line 444
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSRecord;

    .line 445
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 449
    :cond_9
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfAuthorities()I

    move-result v1

    if-lez v1, :cond_a

    const-string v1, "\nauthorities:"

    .line 450
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSMessage;->_authoritativeAnswers:Ljava/util/List;

    .line 451
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSRecord;

    .line 452
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 456
    :cond_a
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfAdditionals()I

    move-result v1

    if-lez v1, :cond_b

    const-string v1, "\nadditionals:"

    .line 457
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSMessage;->_additionals:Ljava/util/List;

    .line 458
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSRecord;

    .line 459
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_b
    const-string v1, "\nnames="

    .line 463
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_names:Ljava/util/Map;

    .line 464
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 465
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
