.class public final Lorg/acra/util/StreamReader;
.super Ljava/lang/Object;
.source "StreamReader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/acra/util/StreamReader$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/acra/util/StreamReader$Companion;

.field private static final newline:Lkotlin/text/Regex;


# instance fields
.field private filter:Lkotlin/jvm/functions/Function1;

.field private final inputStream:Ljava/io/InputStream;

.field private limit:I

.field private timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/acra/util/StreamReader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/acra/util/StreamReader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/acra/util/StreamReader;->Companion:Lorg/acra/util/StreamReader$Companion;

    .line 95
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\\r?\\n"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/acra/util/StreamReader;->newline:Lkotlin/text/Regex;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 8

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/acra/util/StreamReader;-><init>(Ljava/io/InputStream;IILkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IILkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "inputStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/acra/util/StreamReader;->inputStream:Ljava/io/InputStream;

    iput p2, p0, Lorg/acra/util/StreamReader;->limit:I

    iput p3, p0, Lorg/acra/util/StreamReader;->timeout:I

    iput-object p4, p0, Lorg/acra/util/StreamReader;->filter:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/InputStream;IILkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, -0x1

    if-eqz p6, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 31
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/acra/util/StreamReader;-><init>(Ljava/io/InputStream;IILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "filename"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/acra/util/StreamReader;-><init>(Ljava/io/File;)V

    return-void
.end method

.method private final readFully()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/acra/util/StreamReader;->inputStream:Ljava/io/InputStream;

    .line 64
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    instance-of v0, v2, Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    check-cast v2, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v1, 0x2000

    invoke-direct {v0, v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v2, v0

    :goto_0
    :try_start_0
    invoke-static {v2}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final readUntil(Ljava/io/InputStream;[BJ)I
    .locals 3

    const/4 v0, 0x0

    .line 83
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    cmp-long v1, v1, p3

    if-gez v1, :cond_0

    array-length v1, p2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/acra/util/StreamReader;->inputStream:Ljava/io/InputStream;

    .line 84
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    array-length v2, p2

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private final readWithTimeout()Ljava/lang/String;
    .locals 7

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lorg/acra/util/StreamReader;->timeout:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lorg/acra/util/StreamReader;->inputStream:Ljava/io/InputStream;

    .line 70
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x2000

    new-array v4, v4, [B

    .line 73
    :goto_0
    invoke-direct {p0, v2, v4, v0, v1}, Lorg/acra/util/StreamReader;->readUntil(Ljava/io/InputStream;[BJ)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    const/4 v6, 0x0

    .line 74
    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 76
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 69
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string v1, "use(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :goto_1
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final read()Ljava/lang/String;
    .locals 15

    iget v0, p0, Lorg/acra/util/StreamReader;->timeout:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 53
    invoke-direct {p0}, Lorg/acra/util/StreamReader;->readFully()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/acra/util/StreamReader;->readWithTimeout()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lorg/acra/util/StreamReader;->filter:Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    sget-object v4, Lorg/acra/util/StreamReader;->newline:Lkotlin/text/Regex;

    .line 55
    invoke-virtual {v4, v0, v3}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v4

    .line 766
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget v2, p0, Lorg/acra/util/StreamReader;->limit:I

    if-ne v2, v1, :cond_3

    :goto_2
    move-object v6, v5

    goto :goto_3

    .line 55
    :cond_3
    invoke-static {v5, v2}, Lkotlin/collections/CollectionsKt;->takeLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object v5

    goto :goto_2

    :goto_3
    const-string v7, "\n"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x3e

    const/4 v14, 0x0

    invoke-static/range {v6 .. v14}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    move-object v0, v2

    goto :goto_5

    :cond_5
    :goto_4
    iget v2, p0, Lorg/acra/util/StreamReader;->limit:I

    if-ne v2, v1, :cond_6

    goto :goto_5

    :cond_6
    sget-object v1, Lorg/acra/util/StreamReader;->newline:Lkotlin/text/Regex;

    .line 59
    invoke-virtual {v1, v0, v3}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/acra/util/StreamReader;->limit:I

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->takeLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    const-string v3, "\n"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    return-object v0
.end method

.method public final setFilter(Lkotlin/jvm/functions/Function1;)Lorg/acra/util/StreamReader;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/acra/util/StreamReader;->filter:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final setLimit(I)Lorg/acra/util/StreamReader;
    .locals 0

    .line 0
    iput p1, p0, Lorg/acra/util/StreamReader;->limit:I

    return-object p0
.end method

.method public final setTimeout(I)Lorg/acra/util/StreamReader;
    .locals 0

    .line 0
    iput p1, p0, Lorg/acra/util/StreamReader;->timeout:I

    return-object p0
.end method
