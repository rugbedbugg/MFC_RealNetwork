.class public final Lkotlinx/serialization/json/internal/JavaStreamSerialReader;
.super Ljava/lang/Object;
.source "JvmJsonStreams.kt"

# interfaces
.implements Lkotlinx/serialization/json/internal/SerialReader;


# instance fields
.field private final reader:Ljava/io/InputStreamReader;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 1

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lkotlinx/serialization/json/internal/JavaStreamSerialReader;->reader:Ljava/io/InputStreamReader;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 252
    sget-object p2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 250
    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/JavaStreamSerialReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method


# virtual methods
.method public read([CII)I
    .locals 1

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JavaStreamSerialReader;->reader:Ljava/io/InputStreamReader;

    .line 257
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStreamReader;->read([CII)I

    move-result p1

    return p1
.end method
