.class public final Lorg/fdroid/fdroid/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/Utils$KeyboardStateMonitor;,
        Lorg/fdroid/fdroid/Utils$Profiler;,
        Lorg/fdroid/fdroid/Utils$HtmlTagHandler;
    }
.end annotation


# static fields
.field private static final ANDROID_VERSION_NAMES:[Ljava/lang/String;

.field private static final BUFFER_SIZE:I = 0x1000

.field private static final FRIENDLY_SIZE_FORMAT:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Utils"

.field private static alwaysShowIconRequestOptions:Lcom/bumptech/glide/request/RequestOptions;

.field private static iconRequestOptions:Lcom/bumptech/glide/request/RequestOptions;

.field private static safePackageNamePattern:Ljava/util/regex/Pattern;

.field private static toastHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$IFkUmii_BXhkOG7DYI8NXzNW-mo(Ljava/lang/Runnable;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/fdroid/fdroid/Utils;->lambda$runOffUiThread$4(Ljava/lang/Runnable;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aIBG72RlFL_5XNR0-TjpFNQF3JI(Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/fdroid/fdroid/Utils;->lambda$runOffUiThread$3(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jn4xFXfzHqMJWBw34FxScW_mnVs(Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/fdroid/fdroid/Utils;->lambda$generateQrBitmap$2(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lKFxF0HU0Uw_BBzN0TkGYM7Pkto(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/fdroid/fdroid/Utils;->lambda$showToastFromService$0(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$oeCjGnKQoUb-WWmA_KkfOwqLRZw(Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/fdroid/fdroid/Utils;->lambda$runOffUiThread$5(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rjk0_THsaCqdLljliGPrytkGsmI(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/Utils;->lambda$generateQrBitmap$1(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 36

    .line 0
    const-string v0, "%.1f MiB"

    const-string v1, "%.2f GiB"

    const-string v2, "%.0f B"

    const-string v3, "%.0f KiB"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/fdroid/fdroid/Utils;->FRIENDLY_SIZE_FORMAT:[Ljava/lang/String;

    const-string v1, "?"

    const-string v2, "1.0"

    const-string v3, "1.1"

    const-string v4, "1.5"

    const-string v5, "1.6"

    const-string v6, "2.0"

    const-string v7, "2.0.1"

    const-string v8, "2.1"

    const-string v9, "2.2"

    const-string v10, "2.3"

    const-string v11, "2.3.3"

    const-string v12, "3.0"

    const-string v13, "3.1"

    const-string v14, "3.2"

    const-string v15, "4.0"

    const-string v16, "4.0.3"

    const-string v17, "4.1"

    const-string v18, "4.2"

    const-string v19, "4.3"

    const-string v20, "4.4"

    const-string v21, "4.4W"

    const-string v22, "5.0"

    const-string v23, "5.1"

    const-string v24, "6.0"

    const-string v25, "7.0"

    const-string v26, "7.1"

    const-string v27, "8.0"

    const-string v28, "8.1"

    const-string v29, "9"

    const-string v30, "10"

    const-string v31, "11"

    const-string v32, "12"

    const-string v33, "12.1"

    const-string v34, "13"

    const-string v35, "14"

    filled-new-array/range {v1 .. v35}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/fdroid/fdroid/Utils;->ANDROID_VERSION_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applySwipeLayoutColors(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V
    .locals 4

    .line 780
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 781
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010433

    const/4 v3, 0x1

    .line 782
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->data:I

    filled-new-array {v0}, [I

    move-result-object v0

    .line 783
    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    return-void
.end method

.method public static bytesToKb(J)I
    .locals 2

    const-wide/16 v0, 0x400

    .line 738
    div-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static calcFingerprint(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 393
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lorg/fdroid/fdroid/Utils;->calcFingerprint([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private static calcFingerprint([B)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 403
    :cond_0
    array-length v1, p0

    const/16 v2, 0x100

    const-string v3, "Utils"

    if-ge v1, v2, :cond_1

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key was shorter than 256 bytes ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), cannot be valid!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    :try_start_0
    const-string v1, "sha256"

    .line 410
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 411
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 412
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 413
    new-instance v1, Ljava/util/Formatter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 414
    array-length v2, p0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_2

    aget-byte v6, p0, v5

    const-string v7, "%02X"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 415
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v8, v4

    invoke-virtual {v1, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 417
    :cond_2
    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    invoke-virtual {v1}, Ljava/util/Formatter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string v1, "Unable to get certificate fingerprint"

    .line 420
    invoke-static {v3, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-object v0
.end method

.method public static canConnectToSocket(Ljava/lang/String;I)Z
    .locals 2

    .line 788
    :try_start_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 789
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/4 p0, 0x5

    invoke-virtual {v0, v1, p0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 790
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 277
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static consumeStream(Ljava/io/InputStream;)V
    .locals 3

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 248
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    :catch_0
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 224
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 230
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 228
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method private static copyQuietly(Ljava/io/File;Ljava/io/File;)Z
    .locals 3

    const/4 v0, 0x0

    .line 259
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 260
    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 261
    :try_start_2
    invoke-static {v1, p0}, Lorg/fdroid/fdroid/Utils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 267
    invoke-static {p0}, Lorg/fdroid/fdroid/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 268
    invoke-static {v1}, Lorg/fdroid/fdroid/Utils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, p0

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object v1, v0

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v1, v0

    :goto_0
    :try_start_3
    const-string p0, "Utils"

    const-string v2, "I/O error when copying a file"

    .line 264
    invoke-static {p0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 267
    invoke-static {v0}, Lorg/fdroid/fdroid/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 268
    invoke-static {v1}, Lorg/fdroid/fdroid/Utils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 p0, 0x0

    return p0

    .line 267
    :goto_1
    invoke-static {v0}, Lorg/fdroid/fdroid/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 268
    invoke-static {v1}, Lorg/fdroid/fdroid/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 269
    throw p1
.end method

.method public static copyToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget v0, Lorg/fdroid/fdroid/R$string;->copied_to_clipboard:I

    .line 921
    invoke-static {p0, p1, p2, v0}, Lorg/fdroid/fdroid/Utils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static copyToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "clipboard"

    .line 933
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-nez v0, :cond_0

    return-void

    .line 939
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x21

    if-ge p1, p2, :cond_1

    const/4 p1, 0x0

    .line 943
    invoke-static {p0, p3, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 947
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not copy to clipboard: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Utils"

    invoke-static {p1, p0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static daysSince(J)I
    .locals 2

    .line 603
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    .line 604
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static debugLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static debugLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static fileV2FromStrings(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/FileV2;",
            ">;"
        }
    .end annotation

    .line 866
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 867
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 868
    invoke-static {v1}, Lorg/fdroid/index/v2/FileV2;->deserialize(Ljava/lang/String;)Lorg/fdroid/index/v2/FileV2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static formatAppNameAndSummary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6

    if-eqz p1, :cond_0

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    .line 574
    :goto_0
    new-instance v0, Landroid/text/style/TypefaceSpan;

    const-string v1, "sans-serif"

    invoke-direct {v0, v1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 575
    new-instance v1, Landroid/text/style/TypefaceSpan;

    const-string v2, "sans-serif-light"

    invoke-direct {v1, v2}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 577
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 578
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x21

    invoke-virtual {v2, v0, v4, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 579
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v2, v1, p0, p1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v2
.end method

.method public static formatFingerprint(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 343
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 344
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_2

    const-string v0, ".*[^0-9a-fA-F].*"

    .line 345
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 348
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    const-string v0, " "

    .line 350
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    goto :goto_0

    .line 352
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    sget p1, Lorg/fdroid/fdroid/R$string;->bad_fingerprint:I

    .line 346
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatLastUpdated(Landroid/content/res/Resources;J)Ljava/lang/String;
    .locals 9

    .line 612
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    long-to-double p1, v0

    const-wide v0, 0x4194997000000000L    # 8.64E7

    div-double v0, p1, v0

    .line 613
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    const-wide v2, 0x41c2064200000000L    # 6.048E8

    div-double v2, p1, v2

    .line 614
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    const-wide v4, 0x41e34fd900000000L    # 2.592E9

    div-double v4, p1, v4

    .line 615
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    const-wide v6, 0x421d4a2b40000000L    # 3.14496E10

    div-double/2addr p1, v6

    .line 616
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    const-wide/16 v6, 0x1

    cmp-long v6, v0, v6

    if-gez v6, :cond_0

    sget p1, Lorg/fdroid/fdroid/R$string;->details_last_updated_today:I

    .line 619
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v6, 0x3

    cmp-long v6, v2, v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-gez v6, :cond_1

    sget p1, Lorg/fdroid/fdroid/R$plurals;->details_last_update_days:I

    long-to-int p2, v0

    new-array v2, v8, [Ljava/lang/Object;

    .line 621
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-virtual {p0, p1, p2, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/16 v0, 0x2

    cmp-long v6, v4, v0

    if-gez v6, :cond_2

    sget p1, Lorg/fdroid/fdroid/R$plurals;->details_last_update_weeks:I

    long-to-int p2, v2

    new-array v0, v8, [Ljava/lang/Object;

    .line 623
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    cmp-long v0, p1, v0

    if-gez v0, :cond_3

    sget p1, Lorg/fdroid/fdroid/R$plurals;->details_last_update_months:I

    long-to-int p2, v4

    new-array v0, v8, [Ljava/lang/Object;

    .line 625
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    sget v0, Lorg/fdroid/fdroid/R$plurals;->details_last_update_years:I

    long-to-int v1, p1

    new-array v2, v8, [Ljava/lang/Object;

    .line 627
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v7

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatLastUpdated(Landroid/content/res/Resources;Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .line 608
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lorg/fdroid/fdroid/Utils;->formatLastUpdated(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateQrBitmap(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Single;"
        }
    .end annotation

    .line 811
    new-instance v0, Lorg/fdroid/fdroid/Utils$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/fdroid/Utils$$ExternalSyntheticLambda5;-><init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    .line 821
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->computation()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    .line 822
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    const/4 p1, 0x1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 823
    invoke-static {p1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Single;->onErrorReturnItem(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    new-instance p1, Lorg/fdroid/fdroid/Utils$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lorg/fdroid/fdroid/Utils$$ExternalSyntheticLambda6;-><init>()V

    .line 824
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Single;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    return-object p0
.end method

.method public static getAlwaysShowIconRequestOptions()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2

    sget-object v0, Lorg/fdroid/fdroid/Utils;->alwaysShowIconRequestOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-nez v0, :cond_0

    .line 463
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    const/4 v1, 0x0

    .line 464
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sget v1, Lorg/fdroid/fdroid/R$drawable;->ic_repo_app_default:I

    .line 465
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sget v1, Lorg/fdroid/fdroid/R$drawable;->ic_repo_app_default:I

    .line 466
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->fallback(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sput-object v0, Lorg/fdroid/fdroid/Utils;->alwaysShowIconRequestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :cond_0
    sget-object v0, Lorg/fdroid/fdroid/Utils;->alwaysShowIconRequestOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-object v0
.end method

.method public static getAndroidVersionName(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-gez p0, :cond_0

    sget-object p0, Lorg/fdroid/fdroid/Utils;->ANDROID_VERSION_NAMES:[Ljava/lang/String;

    .line 333
    aget-object p0, p0, v0

    return-object p0

    :cond_0
    sget-object v1, Lorg/fdroid/fdroid/Utils;->ANDROID_VERSION_NAMES:[Ljava/lang/String;

    .line 335
    array-length v2, v1

    if-lt p0, v2, :cond_1

    .line 336
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v0

    const-string p0, "v%d"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 338
    :cond_1
    aget-object p0, v1, p0

    return-object p0
.end method

.method public static getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 702
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    .line 705
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 706
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 708
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get application label: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Utils"

    invoke-static {v0, p0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private static getDownloadRequest(Lorg/fdroid/database/Repository;Lorg/fdroid/IndexFile;)Lorg/fdroid/download/DownloadRequest;
    .locals 7

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 529
    :cond_0
    invoke-virtual {p0}, Lorg/fdroid/database/Repository;->getMirrors()Ljava/util/List;

    move-result-object v2

    .line 530
    invoke-static {}, Linfo/guardianproject/netcipher/NetCipher;->getProxy()Ljava/net/Proxy;

    move-result-object v3

    .line 531
    new-instance v6, Lorg/fdroid/download/DownloadRequest;

    invoke-virtual {p0}, Lorg/fdroid/database/Repository;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/fdroid/database/Repository;->getPassword()Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/fdroid/download/DownloadRequest;-><init>(Lorg/fdroid/IndexFile;Ljava/util/List;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method static getFileHexDigest(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 554
    :try_start_0
    invoke-static {p1}, Lvendored/org/apache/commons/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    invoke-static {p1, p0}, Lvendored/org/apache/commons/codec/digest/DigestUtils;->digest(Ljava/security/MessageDigest;Ljava/io/File;)[B

    move-result-object p1

    invoke-static {p1}, Lvendored/org/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 556
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "read failed: EIO (I/O error)"

    .line 557
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Utils"

    if-eqz v0, :cond_0

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "potential filesystem corruption while accessing "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, " ENOENT "

    .line 559
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " vanished: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFriendlySize(J)Ljava/lang/String;
    .locals 7

    long-to-double p0, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lorg/fdroid/fdroid/Utils;->FRIENDLY_SIZE_FORMAT:[Ljava/lang/String;

    .line 286
    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_0

    const-wide/high16 v5, 0x4090000000000000L    # 1024.0

    cmpl-double v3, p0, v5

    if-ltz v3, :cond_0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr p0, v2

    div-double/2addr p0, v5

    div-double/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    :cond_0
    aget-object v1, v2, v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGlideModel(Lorg/fdroid/database/Repository;Lorg/fdroid/IndexFile;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 519
    :cond_0
    invoke-static {p0}, Lorg/fdroid/fdroid/Utils;->getRepoAddress(Lorg/fdroid/database/Repository;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://"

    .line 520
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 523
    :cond_1
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/Utils;->getDownloadRequest(Lorg/fdroid/database/Repository;Lorg/fdroid/IndexFile;)Lorg/fdroid/download/DownloadRequest;

    move-result-object p0

    return-object p0

    .line 521
    :cond_2
    :goto_0
    invoke-interface {p1}, Lorg/fdroid/IndexFile;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/fdroid/fdroid/Utils;->getUri(Ljava/lang/String;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getImageCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->getPhotoCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 194
    new-instance v0, Ljava/io/File;

    const-string v1, "icons"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getImageCacheDirAvailableMemory(Landroid/content/Context;)J
    .locals 5

    .line 198
    invoke-static {p0}, Lorg/fdroid/fdroid/Utils;->getImageCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_0

    .line 199
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    const-wide/32 v0, 0x3200000

    return-wide v0

    .line 205
    :cond_1
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method public static getImageCacheDirTotalMemory(Landroid/content/Context;)J
    .locals 5

    .line 210
    invoke-static {p0}, Lorg/fdroid/fdroid/Utils;->getImageCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_0

    .line 211
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    const-wide/32 v0, 0x6400000

    return-wide v0

    .line 217
    :cond_1
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method public static getLocalRepoUri(Lorg/fdroid/database/Repository;)Landroid/net/Uri;
    .locals 2

    .line 357
    invoke-virtual {p0}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "http://wifi-not-enabled"

    .line 358
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 360
    :cond_0
    invoke-virtual {p0}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 362
    invoke-virtual {p0}, Lorg/fdroid/database/Repository;->getCertificate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 363
    invoke-virtual {p0}, Lorg/fdroid/database/Repository;->getCertificate()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lvendored/org/apache/commons/codec/digest/DigestUtils;->sha256Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "fingerprint"

    .line 364
    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 366
    :cond_1
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object p0

    invoke-virtual {p0}, Lorg/fdroid/fdroid/Preferences;->isLocalRepoHttpsEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "https"

    goto :goto_0

    :cond_2
    const-string p0, "http"

    .line 367
    :goto_0
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 368
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 1

    .line 724
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Utils"

    const-string v0, "Could not get PackageInfo: "

    .line 726
    invoke-static {p1, v0, p0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPackageSigner(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    .line 450
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 453
    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lvendored/org/apache/commons/codec/digest/DigestUtils;->sha256Hex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPercent(JJ)I
    .locals 2

    const-wide/16 v0, 0x64

    mul-long/2addr p0, v0

    .line 750
    div-long/2addr p0, p2

    long-to-int p0, p0

    return p0
.end method

.method public static getRepoAddress(Lorg/fdroid/database/Repository;)Ljava/lang/String;
    .locals 4

    .line 169
    invoke-virtual {p0}, Lorg/fdroid/database/Repository;->getMirrors()Ljava/util/List;

    move-result-object v0

    .line 172
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/download/Mirror;

    .line 173
    invoke-virtual {v1}, Lorg/fdroid/download/Mirror;->getUrl()Lio/ktor/http/Url;

    move-result-object v2

    invoke-virtual {v2}, Lio/ktor/http/Url;->getProtocol()Lio/ktor/http/URLProtocol;

    move-result-object v2

    invoke-virtual {v2}, Lio/ktor/http/URLProtocol;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 174
    invoke-virtual {v1}, Lorg/fdroid/download/Mirror;->getUrl()Lio/ktor/http/Url;

    move-result-object v2

    invoke-virtual {v2}, Lio/ktor/http/Url;->getProtocol()Lio/ktor/http/URLProtocol;

    move-result-object v2

    invoke-virtual {v2}, Lio/ktor/http/URLProtocol;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    :cond_1
    invoke-virtual {v1}, Lorg/fdroid/download/Mirror;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    .line 181
    invoke-virtual {p0}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    .line 182
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0

    :cond_4
    return-object v0
.end method

.method public static getSharingUri(Lorg/fdroid/database/Repository;)Landroid/net/Uri;
    .locals 3

    if-eqz p0, :cond_2

    .line 372
    invoke-virtual {p0}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 375
    :cond_0
    invoke-static {p0}, Lorg/fdroid/fdroid/Utils;->getLocalRepoUri(Lorg/fdroid/database/Repository;)Landroid/net/Uri;

    move-result-object p0

    .line 376
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 377
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string v1, "http"

    const-string v2, "fdroidrepo"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p0, "swap"

    const-string v1, "1"

    .line 378
    invoke-virtual {v0, p0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 379
    sget-object p0, Lorg/fdroid/fdroid/FDroidApp;->bssid:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "bssid"

    .line 380
    sget-object v1, Lorg/fdroid/fdroid/FDroidApp;->bssid:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 381
    sget-object p0, Lorg/fdroid/fdroid/FDroidApp;->ssid:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ssid"

    .line 382
    sget-object v1, Lorg/fdroid/fdroid/FDroidApp;->ssid:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 385
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "http://wifi-not-enabled"

    .line 373
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getUri(Ljava/lang/String;[Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    const-string v0, "content://"

    .line 147
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    array-length p0, p1

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v2, p1, v1

    const-string v3, "%2F"

    .line 150
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 155
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    .line 156
    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 157
    invoke-virtual {p0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 159
    :cond_2
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "F-Droid 1.21.1"

    return-object v0
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 693
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 694
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Utils"

    const-string v1, "Could not get client version name"

    .line 696
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static isFileMatchingHash(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 429
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 432
    :cond_0
    invoke-static {p0, p2}, Lorg/fdroid/fdroid/Utils;->getFileHexDigest(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isPortInUse(Ljava/lang/String;I)Z
    .locals 1

    .line 904
    :try_start_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p0, p1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 908
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSafePackageName(Ljava/lang/String;)Z
    .locals 1

    .line 590
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lorg/fdroid/fdroid/Utils;->safePackageNamePattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_1

    const-string v0, "[a-zA-Z0-9._]+"

    .line 594
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/fdroid/fdroid/Utils;->safePackageNamePattern:Ljava/util/regex/Pattern;

    :cond_1
    sget-object v0, Lorg/fdroid/fdroid/Utils;->safePackageNamePattern:Ljava/util/regex/Pattern;

    .line 596
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isServerSocketInUse(I)Z
    .locals 1

    .line 800
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p0}, Ljava/net/ServerSocket;-><init>(I)V

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$generateQrBitmap$1(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 813
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 812
    invoke-static {p0, v0}, Landroidx/core/view/DisplayCompat;->getMode(Landroid/content/Context;Landroid/view/Display;)Landroidx/core/view/DisplayCompat$ModeCompat;

    move-result-object p0

    .line 814
    invoke-virtual {p0}, Landroidx/core/view/DisplayCompat$ModeCompat;->getPhysicalWidth()I

    move-result v0

    .line 815
    invoke-virtual {p0}, Landroidx/core/view/DisplayCompat$ModeCompat;->getPhysicalHeight()I

    move-result p0

    .line 814
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 816
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "generating QRCode Bitmap of "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Utils"

    invoke-static {v0, p0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    new-instance p0, Lcom/google/zxing/encode/QRCodeEncoder;

    const/4 v3, 0x0

    const-string v4, "TEXT_TYPE"

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    .line 819
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/zxing/encode/QRCodeEncoder;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/google/zxing/encode/QRCodeEncoder;->encodeAsBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$generateQrBitmap$2(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "Utils"

    const-string v1, "Could not encode QR as bitmap"

    .line 824
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static synthetic lambda$runOffUiThread$3(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "Utils"

    const-string v1, "Error running off UiThread"

    .line 831
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static synthetic lambda$runOffUiThread$4(Ljava/lang/Runnable;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 837
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static synthetic lambda$runOffUiThread$5(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "Utils"

    const-string v1, "Error running off UiThread"

    .line 842
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static synthetic lambda$showToastFromService$0(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 776
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static loadWithGlide(Landroid/content/Context;JLorg/fdroid/IndexFile;Landroid/widget/ImageView;)V
    .locals 2

    if-nez p3, :cond_0

    .line 490
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    sget p0, Lorg/fdroid/fdroid/R$drawable;->ic_repo_app_default:I

    .line 491
    invoke-virtual {p4, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_0
    sget-object v0, Lorg/fdroid/fdroid/Utils;->iconRequestOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-nez v0, :cond_1

    .line 495
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v1, Lorg/fdroid/fdroid/R$drawable;->ic_repo_app_default:I

    .line 496
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sget v1, Lorg/fdroid/fdroid/R$drawable;->ic_repo_app_default:I

    .line 497
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->fallback(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sput-object v0, Lorg/fdroid/fdroid/Utils;->iconRequestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :cond_1
    sget-object v0, Lorg/fdroid/fdroid/Utils;->iconRequestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 500
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fdroid/fdroid/Preferences;->isBackgroundDownloadAllowed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 499
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 502
    invoke-static {p0}, Lorg/fdroid/fdroid/FDroidApp;->getRepoManager(Landroid/content/Context;)Lorg/fdroid/index/RepoManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/fdroid/index/RepoManager;->getRepository(J)Lorg/fdroid/database/Repository;

    move-result-object p1

    if-nez p1, :cond_2

    .line 504
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    return-void

    .line 507
    :cond_2
    invoke-static {p1, p3}, Lorg/fdroid/fdroid/Utils;->getGlideModel(Lorg/fdroid/database/Repository;Lorg/fdroid/IndexFile;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    .line 509
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    return-void

    .line 512
    :cond_3
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public static observeOnce(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Landroidx/core/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/core/util/Consumer;",
            ")V"
        }
    .end annotation

    .line 847
    new-instance v0, Lorg/fdroid/fdroid/Utils$1;

    invoke-direct {v0, p2, p0}, Lorg/fdroid/fdroid/Utils$1;-><init>(Landroidx/core/util/Consumer;Landroidx/lifecycle/LiveData;)V

    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public static parseJsonStringArray(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 962
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 963
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 964
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 965
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    .line 969
    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static runOffUiThread(Landroidx/core/util/Supplier;Landroidx/core/util/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/core/util/Supplier;",
            "Landroidx/core/util/Consumer;",
            ")",
            "Lio/reactivex/rxjava3/disposables/Disposable;"
        }
    .end annotation

    .line 828
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/fdroid/fdroid/Utils$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/Utils$$ExternalSyntheticLambda2;-><init>(Landroidx/core/util/Supplier;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    .line 829
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    .line 830
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    new-instance v0, Lorg/fdroid/fdroid/Utils$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/fdroid/fdroid/Utils$$ExternalSyntheticLambda3;-><init>()V

    .line 831
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Single;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    .line 832
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/fdroid/fdroid/Utils$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lorg/fdroid/fdroid/Utils$$ExternalSyntheticLambda4;-><init>(Landroidx/core/util/Consumer;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method public static runOffUiThread(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 1

    .line 836
    new-instance v0, Lorg/fdroid/fdroid/Utils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/Utils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    .line 840
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    .line 841
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    new-instance v0, Lorg/fdroid/fdroid/Utils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/fdroid/fdroid/Utils$$ExternalSyntheticLambda1;-><init>()V

    .line 842
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Single;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    .line 843
    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Single;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method public static setIconFromRepoOrPM(Lorg/fdroid/database/AppOverviewItem;Landroid/widget/ImageView;Landroid/content/Context;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 483
    invoke-virtual {p0}, Lorg/fdroid/database/AppOverviewItem;->getRepoId()J

    move-result-wide v0

    .line 484
    invoke-static {}, Lorg/fdroid/fdroid/data/App;->getLocales()Landroidx/core/os/LocaleListCompat;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/fdroid/database/AppOverviewItem;->getIcon(Landroidx/core/os/LocaleListCompat;)Lorg/fdroid/index/v2/FileV2;

    move-result-object p0

    .line 485
    invoke-static {p2, v0, v1, p0, p1}, Lorg/fdroid/fdroid/Utils;->loadWithGlide(Landroid/content/Context;JLorg/fdroid/IndexFile;Landroid/widget/ImageView;)V

    return-void
.end method

.method public static setIconFromRepoOrPM(Lorg/fdroid/fdroid/data/App;Landroid/widget/ImageView;Landroid/content/Context;)V
    .locals 2

    .line 478
    iget-wide v0, p0, Lorg/fdroid/fdroid/data/App;->repoId:J

    iget-object p0, p0, Lorg/fdroid/fdroid/data/App;->iconFile:Lorg/fdroid/index/v2/FileV2;

    invoke-static {p2, v0, v1, p0, p1}, Lorg/fdroid/fdroid/Utils;->loadWithGlide(Landroid/content/Context;JLorg/fdroid/IndexFile;Landroid/widget/ImageView;)V

    return-void
.end method

.method public static showToastFromService(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    sget-object v0, Lorg/fdroid/fdroid/Utils;->toastHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 774
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lorg/fdroid/fdroid/Utils;->toastHandler:Landroid/os/Handler;

    :cond_0
    sget-object v0, Lorg/fdroid/fdroid/Utils;->toastHandler:Landroid/os/Handler;

    .line 776
    new-instance v1, Lorg/fdroid/fdroid/Utils$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Lorg/fdroid/fdroid/Utils$$ExternalSyntheticLambda7;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static symlinkOrCopyFileQuietly(Lorg/fdroid/fdroid/data/SanitizedFile;Lorg/fdroid/fdroid/data/SanitizedFile;)Z
    .locals 1

    .line 237
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/compat/FileCompat;->symlink(Lorg/fdroid/fdroid/data/SanitizedFile;Lorg/fdroid/fdroid/data/SanitizedFile;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lorg/fdroid/fdroid/Utils;->copyQuietly(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static toJsonStringArray(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 953
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 954
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 955
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 957
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/FileV2;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 857
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    .line 858
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 859
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/index/v2/FileV2;

    .line 860
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV2;->serialize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
