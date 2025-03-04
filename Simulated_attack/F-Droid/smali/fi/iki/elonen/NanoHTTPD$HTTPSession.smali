.class public Lfi/iki/elonen/NanoHTTPD$HTTPSession;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Lfi/iki/elonen/NanoHTTPD$IHTTPSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HTTPSession"
.end annotation


# instance fields
.field private cookies:Lfi/iki/elonen/NanoHTTPD$CookieHandler;

.field private headers:Ljava/util/Map;

.field private final inputStream:Ljava/io/BufferedInputStream;

.field private method:Lfi/iki/elonen/NanoHTTPD$Method;

.field private final outputStream:Ljava/io/OutputStream;

.field private parms:Ljava/util/Map;

.field private protocolVersion:Ljava/lang/String;

.field private queryParameterString:Ljava/lang/String;

.field private remoteHostname:Ljava/lang/String;

.field private remoteIp:Ljava/lang/String;

.field private rlen:I

.field private splitbyte:I

.field private final tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

.field final synthetic this$0:Lfi/iki/elonen/NanoHTTPD;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD;Lfi/iki/elonen/NanoHTTPD$TempFileManager;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;)V
    .locals 0

    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->this$0:Lfi/iki/elonen/NanoHTTPD;

    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    .line 649
    new-instance p1, Ljava/io/BufferedInputStream;

    const/16 p2, 0x2000

    invoke-direct {p1, p3, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    iput-object p4, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    .line 651
    invoke-virtual {p5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p5}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "127.0.0.1"

    :goto_1
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->remoteIp:Ljava/lang/String;

    .line 652
    invoke-virtual {p5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p5}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p5}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_3
    :goto_2
    const-string p1, "localhost"

    :goto_3
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->remoteHostname:Ljava/lang/String;

    .line 653
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    return-void
.end method

.method private decodeHeader(Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5

    .line 662
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 667
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 668
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "method"

    .line 672
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 678
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3f

    .line 681
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_1

    add-int/lit8 v4, v2, 0x1

    .line 683
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p3}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->decodeParms(Ljava/lang/String;Ljava/util/Map;)V

    .line 684
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    .line 686
    :cond_1
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 693
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 694
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->protocolVersion:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v0, "HTTP/1.1"

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->protocolVersion:Ljava/lang/String;

    .line 697
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$200()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "no protocol version specified, strange. Assuming HTTP/1.1."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 699
    :goto_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_4

    .line 700
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x3a

    .line 701
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_3

    .line 703
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    :cond_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string p1, "uri"

    .line 708
    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 675
    :cond_5
    new-instance p1, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object p2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string p3, "BAD REQUEST: Missing URI. Usage: GET /example/file.html"

    invoke-direct {p1, p2, p3}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw p1

    .line 669
    :cond_6
    new-instance p1, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object p2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string p3, "BAD REQUEST: Syntax error. Usage: GET /example/file.html"

    invoke-direct {p1, p2, p3}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    :goto_3
    new-instance p2, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object p3, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p3, p4, p1}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method private decodeMultipartFormData(Lfi/iki/elonen/NanoHTTPD$ContentType;Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/util/Map;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 720
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lfi/iki/elonen/NanoHTTPD$ContentType;->getBoundary()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->getBoundaryPositions(Ljava/nio/ByteBuffer;[B)[I

    move-result-object v4

    .line 721
    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_10

    const/16 v5, 0x400

    new-array v7, v5, [B

    const/4 v8, 0x0

    move v9, v8

    move v10, v9

    .line 726
    :goto_0
    array-length v11, v4

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    if-ge v9, v11, :cond_f

    .line 727
    aget v11, v4, v9

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 728
    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->remaining()I

    move-result v11

    if-ge v11, v5, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->remaining()I

    move-result v11

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_b

    :catch_1
    move-exception v0

    goto/16 :goto_c

    :cond_0
    move v11, v5

    .line 729
    :goto_1
    invoke-virtual {v0, v7, v8, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 730
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    new-instance v15, Ljava/io/ByteArrayInputStream;

    invoke-direct {v15, v7, v8, v11}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-virtual/range {p1 .. p1}, Lfi/iki/elonen/NanoHTTPD$ContentType;->getEncoding()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v14, v15, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v13, v14, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 735
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 737
    invoke-virtual/range {p1 .. p1}, Lfi/iki/elonen/NanoHTTPD$ContentType;->getBoundary()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 743
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    const/4 v14, 0x0

    move/from16 v17, v6

    move-object v15, v14

    move-object/from16 v16, v15

    :goto_2
    if-eqz v5, :cond_7

    .line 745
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_7

    .line 746
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$300()Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 747
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 748
    invoke-virtual {v8, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 749
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$400()Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 750
    :goto_3
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 751
    invoke-virtual {v6, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    const-string v12, "name"

    .line 752
    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x2

    .line 753
    invoke-virtual {v6, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    :goto_4
    move-object v14, v8

    goto :goto_5

    :cond_1
    const-string v12, "filename"

    .line 754
    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x2

    .line 755
    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 758
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    if-lez v10, :cond_2

    .line 760
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v10, 0x1

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v15, v12

    move v10, v14

    goto :goto_4

    :cond_2
    add-int/lit8 v10, v10, 0x1

    :cond_3
    move-object v15, v12

    :cond_4
    :goto_5
    const/4 v12, 0x1

    goto :goto_3

    .line 767
    :cond_5
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$500()Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 768
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v12, 0x2

    .line 769
    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v16, v5

    goto :goto_6

    :cond_6
    const/4 v12, 0x2

    .line 771
    :goto_6
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v17, v17, 0x1

    move v6, v12

    const/4 v8, 0x0

    const/4 v12, 0x1

    goto/16 :goto_2

    :cond_7
    move v12, v6

    const/4 v5, 0x0

    :goto_7
    add-int/lit8 v6, v17, -0x1

    if-lez v17, :cond_8

    .line 776
    invoke-direct {v1, v7, v5}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->scipOverNewLine([BI)I

    move-result v5

    move/from16 v17, v6

    goto :goto_7

    :cond_8
    add-int/lit8 v11, v11, -0x4

    if-ge v5, v11, :cond_d

    .line 782
    aget v6, v4, v9

    add-int/2addr v6, v5

    add-int/lit8 v9, v9, 0x1

    .line 783
    aget v5, v4, v9

    add-int/lit8 v5, v5, -0x4

    .line 785
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 787
    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-nez v8, :cond_9

    .line 789
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 790
    invoke-interface {v2, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    if-nez v16, :cond_a

    sub-int/2addr v5, v6

    .line 795
    new-array v5, v5, [B

    .line 796
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 798
    new-instance v6, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lfi/iki/elonen/NanoHTTPD$ContentType;->getEncoding()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v5, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_a
    sub-int/2addr v5, v6

    .line 801
    invoke-direct {v1, v0, v6, v5, v15}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->saveTmpFile(Ljava/nio/ByteBuffer;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 802
    invoke-interface {v3, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 803
    invoke-interface {v3, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_b
    move v6, v12

    .line 806
    :goto_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 809
    :cond_c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    :goto_9
    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a
    move v6, v12

    const/16 v5, 0x400

    const/4 v8, 0x0

    goto/16 :goto_0

    .line 780
    :cond_d
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v3, "Multipart header size exceeds MAX_HEADER_SIZE."

    invoke-direct {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v0

    .line 738
    :cond_e
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v3, "BAD REQUEST: Content type is multipart/form-data but chunk does not start with boundary."

    invoke-direct {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v0

    :cond_f
    return-void

    .line 722
    :cond_10
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v3, "BAD REQUEST: Content type is multipart/form-data but contains less than two boundary strings."

    invoke-direct {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    :goto_b
    new-instance v2, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v3, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v2

    .line 815
    :goto_c
    throw v0
.end method

.method private decodeParms(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4

    const-string v0, ""

    if-nez p1, :cond_0

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->queryParameterString:Ljava/lang/String;

    return-void

    :cond_0
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->queryParameterString:Ljava/lang/String;

    .line 840
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "&"

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 842
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x3d

    .line 843
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_1

    const/4 v3, 0x0

    .line 848
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    .line 849
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 851
    :cond_1
    invoke-static {p1}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object p1, v0

    .line 855
    :goto_1
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_2

    .line 857
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 858
    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    :cond_2
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private findHeaderEnd([BI)I
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    if-ge v2, p2, :cond_2

    .line 997
    aget-byte v3, p1, v1

    const/16 v4, 0xd

    const/16 v5, 0xa

    if-ne v3, v4, :cond_0

    aget-byte v6, p1, v2

    if-ne v6, v5, :cond_0

    add-int/lit8 v6, v1, 0x3

    if-ge v6, p2, :cond_0

    add-int/lit8 v7, v1, 0x2

    aget-byte v7, p1, v7

    if-ne v7, v4, :cond_0

    aget-byte v4, p1, v6

    if-ne v4, v5, :cond_0

    add-int/lit8 v1, v1, 0x4

    return v1

    :cond_0
    if-ne v3, v5, :cond_1

    .line 1002
    aget-byte v3, p1, v2

    if-ne v3, v5, :cond_1

    add-int/lit8 v1, v1, 0x2

    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    return v0
.end method

.method private getBoundaryPositions(Ljava/nio/ByteBuffer;[B)[I
    .locals 10

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 1017
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    array-length v3, p2

    if-ge v2, v3, :cond_0

    return-object v1

    .line 1022
    :cond_0
    array-length v2, p2

    add-int/lit16 v2, v2, 0x1000

    new-array v3, v2, [B

    .line 1024
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    if-ge v4, v2, :cond_1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v2

    .line 1025
    :goto_0
    invoke-virtual {p1, v3, v0, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1026
    array-length v5, p2

    sub-int/2addr v4, v5

    move v5, v0

    :cond_2
    move v6, v0

    :goto_1
    if-ge v6, v4, :cond_6

    move v7, v0

    .line 1031
    :goto_2
    array-length v8, p2

    if-ge v7, v8, :cond_5

    add-int v8, v6, v7

    .line 1032
    aget-byte v8, v3, v8

    aget-byte v9, p2, v7

    if-eq v8, v9, :cond_3

    goto :goto_3

    .line 1034
    :cond_3
    array-length v8, p2

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_4

    array-length v8, v1

    add-int/lit8 v8, v8, 0x1

    .line 1036
    new-array v8, v8, [I

    array-length v9, v1

    .line 1037
    invoke-static {v1, v0, v8, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int v9, v5, v6

    .line 1038
    aput v9, v8, v1

    move-object v1, v8

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    add-int/2addr v5, v4

    .line 1046
    array-length v4, p2

    sub-int v4, v2, v4

    array-length v6, p2

    invoke-static {v3, v4, v3, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1049
    array-length v4, p2

    sub-int v4, v2, v4

    .line 1050
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    if-ge v6, v4, :cond_7

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    .line 1051
    :cond_7
    array-length v6, p2

    invoke-virtual {p1, v3, v6, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    if-gtz v4, :cond_2

    return-object v1
.end method

.method private getTmpBucket()Ljava/io/RandomAccessFile;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    const/4 v1, 0x0

    .line 1102
    invoke-interface {v0, v1}, Lfi/iki/elonen/NanoHTTPD$TempFileManager;->createTempFile(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$TempFile;

    move-result-object v0

    .line 1103
    new-instance v1, Ljava/io/RandomAccessFile;

    invoke-interface {v0}, Lfi/iki/elonen/NanoHTTPD$TempFile;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 1105
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private saveTmpFile(Ljava/nio/ByteBuffer;IILjava/lang/String;)Ljava/lang/String;
    .locals 3

    if-lez p3, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    .line 1204
    invoke-interface {v1, p4}, Lfi/iki/elonen/NanoHTTPD$TempFileManager;->createTempFile(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$TempFile;

    move-result-object p4

    .line 1205
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 1206
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-interface {p4}, Lfi/iki/elonen/NanoHTTPD$TempFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1207
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 1208
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    add-int/2addr p2, p3

    invoke-virtual {v2, p2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 1209
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1210
    invoke-interface {p4}, Lfi/iki/elonen/NanoHTTPD$TempFile;->getName()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1214
    invoke-static {v1}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1212
    :goto_0
    :try_start_2
    new-instance p2, Ljava/lang/Error;

    invoke-direct {p2, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1214
    :goto_1
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    throw p1

    :cond_0
    const-string p1, ""

    :goto_2
    return-object p1
.end method

.method private scipOverNewLine([BI)I
    .locals 2

    .line 822
    :goto_0
    aget-byte v0, p1, p2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    return p2
.end method


# virtual methods
.method public execute()V
    .locals 10

    const-string v0, "method"

    const-string v1, "text/plain"

    const-string v2, "NanoHttpd Shutdown"

    const/16 v3, 0x2000

    const/4 v4, 0x0

    :try_start_0
    new-array v5, v3, [B

    const/4 v6, 0x0

    iput v6, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->splitbyte:I

    iput v6, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    iget-object v7, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    .line 879
    invoke-virtual {v7, v3}, Ljava/io/BufferedInputStream;->mark(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v7, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    .line 881
    invoke-virtual {v7, v5, v6, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, -0x1

    if-eq v3, v7, :cond_b

    :goto_0
    if-lez v3, :cond_1

    :try_start_2
    iget v7, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    add-int/2addr v7, v3

    iput v7, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    .line 897
    invoke-direct {p0, v5, v7}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->findHeaderEnd([BI)I

    move-result v3

    iput v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->splitbyte:I

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    iget v7, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    rsub-int v8, v7, 0x2000

    .line 901
    invoke-virtual {v3, v5, v7, v8}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :catch_1
    move-exception v0

    goto/16 :goto_7

    :catch_2
    move-exception v0

    goto/16 :goto_8

    :catch_3
    move-exception v0

    goto/16 :goto_a

    :catch_4
    move-exception v0

    goto/16 :goto_b

    :cond_1
    :goto_1
    iget v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->splitbyte:I

    iget v7, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    if-ge v3, v7, :cond_2

    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    .line 905
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->reset()V

    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    iget v7, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->splitbyte:I

    int-to-long v7, v7

    .line 906
    invoke-virtual {v3, v7, v8}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 909
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    if-nez v3, :cond_3

    .line 911
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    goto :goto_2

    .line 913
    :cond_3
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 917
    :goto_2
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    iget v9, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    invoke-direct {v8, v5, v6, v9}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 920
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object v7, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    iget-object v8, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    .line 921
    invoke-direct {p0, v3, v5, v7, v8}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->decodeHeader(Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->remoteIp:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v7, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v8, "remote-addr"

    .line 924
    invoke-interface {v7, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v7, "http-client-ip"

    iget-object v8, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->remoteIp:Ljava/lang/String;

    .line 925
    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    :cond_4
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lfi/iki/elonen/NanoHTTPD$Method;->lookup(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Method;

    move-result-object v3

    iput-object v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->method:Lfi/iki/elonen/NanoHTTPD$Method;

    if-eqz v3, :cond_a

    const-string v0, "uri"

    .line 933
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->uri:Ljava/lang/String;

    .line 935
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$CookieHandler;

    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->this$0:Lfi/iki/elonen/NanoHTTPD;

    iget-object v5, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    invoke-direct {v0, v3, v5}, Lfi/iki/elonen/NanoHTTPD$CookieHandler;-><init>(Lfi/iki/elonen/NanoHTTPD;Ljava/util/Map;)V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->cookies:Lfi/iki/elonen/NanoHTTPD$CookieHandler;

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v3, "connection"

    .line 937
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "HTTP/1.1"

    iget-object v5, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->protocolVersion:Ljava/lang/String;

    .line 938
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_6

    if-eqz v0, :cond_5

    const-string v3, "(?i).*close.*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    move v0, v5

    goto :goto_3

    :cond_6
    move v0, v6

    :goto_3
    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->this$0:Lfi/iki/elonen/NanoHTTPD;

    .line 945
    invoke-virtual {v3, p0}, Lfi/iki/elonen/NanoHTTPD;->serve(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v7, "accept-encoding"

    .line 952
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v7, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->cookies:Lfi/iki/elonen/NanoHTTPD$CookieHandler;

    .line 953
    invoke-virtual {v7, v4}, Lfi/iki/elonen/NanoHTTPD$CookieHandler;->unloadQueue(Lfi/iki/elonen/NanoHTTPD$Response;)V

    iget-object v7, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->method:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 954
    invoke-virtual {v4, v7}, Lfi/iki/elonen/NanoHTTPD$Response;->setRequestMethod(Lfi/iki/elonen/NanoHTTPD$Method;)V

    iget-object v7, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->this$0:Lfi/iki/elonen/NanoHTTPD;

    .line 955
    invoke-virtual {v7, v4}, Lfi/iki/elonen/NanoHTTPD;->useGzipWhenAccepted(Lfi/iki/elonen/NanoHTTPD$Response;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v3, :cond_7

    const-string v7, "gzip"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v6, v5

    :cond_7
    invoke-virtual {v4, v6}, Lfi/iki/elonen/NanoHTTPD$Response;->setGzipEncoding(Z)V

    .line 956
    invoke-virtual {v4, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->setKeepAlive(Z)V

    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    .line 957
    invoke-virtual {v4, v3}, Lfi/iki/elonen/NanoHTTPD$Response;->send(Ljava/io/OutputStream;)V

    if-eqz v0, :cond_8

    .line 959
    invoke-virtual {v4}, Lfi/iki/elonen/NanoHTTPD$Response;->isCloseConnection()Z

    move-result v0
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_8

    .line 983
    :goto_4
    invoke-static {v4}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    .line 984
    invoke-interface {v0}, Lfi/iki/elonen/NanoHTTPD$TempFileManager;->clear()V

    goto/16 :goto_9

    .line 960
    :cond_8
    :try_start_3
    new-instance v0, Ljava/net/SocketException;

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 950
    :cond_9
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v3, "SERVER INTERNAL ERROR: Serve() returned a null response."

    invoke-direct {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v0

    .line 930
    :cond_a
    new-instance v2, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v3, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BAD REQUEST: Syntax error. HTTP verb "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " unhandled."

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v2

    :cond_b
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    .line 891
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    .line 892
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 893
    new-instance v0, Ljava/net/SocketException;

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    .line 885
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    .line 886
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 887
    new-instance v0, Ljava/net/SocketException;

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 883
    :goto_5
    throw v0
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 979
    :goto_6
    :try_start_4
    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD$ResponseException;->getStatus()Lfi/iki/elonen/NanoHTTPD$Response$Status;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    .line 980
    invoke-virtual {v0, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->send(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    .line 981
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    goto :goto_4

    .line 975
    :goto_7
    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    .line 976
    invoke-virtual {v0, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->send(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    .line 977
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 971
    :goto_8
    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSL PROTOCOL FAILURE: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    .line 972
    invoke-virtual {v0, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->send(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    .line 973
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    goto/16 :goto_4

    :goto_9
    return-void

    .line 969
    :goto_a
    throw v0

    .line 964
    :goto_b
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 983
    :goto_c
    invoke-static {v4}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    .line 984
    invoke-interface {v1}, Lfi/iki/elonen/NanoHTTPD$TempFileManager;->clear()V

    throw v0
.end method

.method public getBodySize()J
    .locals 2

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v1, "content-length"

    .line 1119
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    .line 1120
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->splitbyte:I

    iget v1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    if-ge v0, v1, :cond_1

    sub-int/2addr v1, v0

    int-to-long v0, v1

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 1

    .line 0
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public final getMethod()Lfi/iki/elonen/NanoHTTPD$Method;
    .locals 1

    .line 0
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->method:Lfi/iki/elonen/NanoHTTPD$Method;

    return-object v0
.end method

.method public final getParms()Ljava/util/Map;
    .locals 5

    .line 1082
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    .line 1083
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    .line 1084
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public parseBody(Ljava/util/Map;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x0

    .line 1131
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->getBodySize()J

    move-result-wide v3

    const-wide/16 v5, 0x400

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    .line 1137
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1138
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v7, v6

    move-object v6, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 1140
    :cond_0
    invoke-direct/range {p0 .. p0}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->getTmpBucket()Ljava/io/RandomAccessFile;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v2

    move-object v7, v6

    :goto_0
    const/16 v8, 0x200

    :try_start_1
    new-array v8, v8, [B

    :cond_1
    :goto_1
    iget v9, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    if-ltz v9, :cond_2

    cmp-long v9, v3, v10

    if-lez v9, :cond_2

    iget-object v9, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    const-wide/16 v10, 0x200

    .line 1147
    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v10, v10

    invoke-virtual {v9, v8, v12, v10}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v9

    iput v9, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    int-to-long v10, v9

    sub-long/2addr v3, v10

    if-lez v9, :cond_1

    .line 1150
    invoke-interface {v7, v8, v12, v9}, Ljava/io/DataOutput;->write([BII)V

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v6

    goto/16 :goto_4

    :cond_2
    if-eqz v5, :cond_3

    .line 1156
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-static {v3, v12, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto :goto_2

    .line 1158
    :cond_3
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v13

    sget-object v14, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v15, 0x0

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v17

    invoke-virtual/range {v13 .. v18}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v3

    .line 1159
    invoke-virtual {v6, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1164
    :goto_2
    sget-object v4, Lfi/iki/elonen/NanoHTTPD$Method;->POST:Lfi/iki/elonen/NanoHTTPD$Method;

    iget-object v5, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->method:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1165
    new-instance v2, Lfi/iki/elonen/NanoHTTPD$ContentType;

    iget-object v4, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v5, "content-type"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, v4}, Lfi/iki/elonen/NanoHTTPD$ContentType;-><init>(Ljava/lang/String;)V

    .line 1166
    invoke-virtual {v2}, Lfi/iki/elonen/NanoHTTPD$ContentType;->isMultipart()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1167
    invoke-virtual {v2}, Lfi/iki/elonen/NanoHTTPD$ContentType;->getBoundary()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    .line 1172
    invoke-direct {v1, v2, v3, v4, v0}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->decodeMultipartFormData(Lfi/iki/elonen/NanoHTTPD$ContentType;Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_3

    .line 1169
    :cond_4
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v3, "BAD REQUEST: Content type is multipart/form-data but boundary missing. Usage: GET /example/file.html"

    invoke-direct {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v0

    .line 1174
    :cond_5
    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    new-array v4, v4, [B

    .line 1175
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1176
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Lfi/iki/elonen/NanoHTTPD$ContentType;->getEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "application/x-www-form-urlencoded"

    .line 1178
    invoke-virtual {v2}, Lfi/iki/elonen/NanoHTTPD$ContentType;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    .line 1179
    invoke-direct {v1, v3, v0}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->decodeParms(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3

    .line 1180
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "postData"

    .line 1184
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1187
    :cond_7
    sget-object v4, Lfi/iki/elonen/NanoHTTPD$Method;->PUT:Lfi/iki/elonen/NanoHTTPD$Method;

    iget-object v5, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->method:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "content"

    .line 1188
    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    move-result v5

    invoke-direct {v1, v3, v12, v5, v2}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->saveTmpFile(Ljava/nio/ByteBuffer;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1191
    :cond_8
    :goto_3
    invoke-static {v6}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    return-void

    :goto_4
    invoke-static {v2}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    throw v0
.end method
