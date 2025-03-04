.class public abstract Lorg/fdroid/fdroid/nearby/httpish/Header;
.super Ljava/lang/Object;
.source "Header.java"


# static fields
.field private static final VALID_HEADERS:[Lorg/fdroid/fdroid/nearby/httpish/Header;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/fdroid/fdroid/nearby/httpish/Header;

    .line 7
    new-instance v1, Lorg/fdroid/fdroid/nearby/httpish/ContentLengthHeader;

    invoke-direct {v1}, Lorg/fdroid/fdroid/nearby/httpish/ContentLengthHeader;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/fdroid/fdroid/nearby/httpish/ETagHeader;

    invoke-direct {v1}, Lorg/fdroid/fdroid/nearby/httpish/ETagHeader;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lorg/fdroid/fdroid/nearby/httpish/Header;->VALID_HEADERS:[Lorg/fdroid/fdroid/nearby/httpish/Header;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static process(Lorg/fdroid/fdroid/nearby/httpish/FileDetails;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 17
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lorg/fdroid/fdroid/nearby/httpish/Header;->VALID_HEADERS:[Lorg/fdroid/fdroid/nearby/httpish/Header;

    .line 18
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 19
    invoke-virtual {v3}, Lorg/fdroid/fdroid/nearby/httpish/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 20
    invoke-virtual {v3, p0, p2}, Lorg/fdroid/fdroid/nearby/httpish/Header;->handle(Lorg/fdroid/fdroid/nearby/httpish/FileDetails;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method protected abstract getName()Ljava/lang/String;
.end method

.method protected abstract handle(Lorg/fdroid/fdroid/nearby/httpish/FileDetails;Ljava/lang/String;)V
.end method
