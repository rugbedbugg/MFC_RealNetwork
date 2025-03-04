.class public abstract enum Lorg/acra/data/StringFormat;
.super Ljava/lang/Enum;
.source "StringFormat.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/acra/data/StringFormat$JSON;,
        Lorg/acra/data/StringFormat$KEY_VALUE_LIST;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/acra/data/StringFormat;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J6\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0011j\u0002\u0008\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lorg/acra/data/StringFormat;",
        "",
        "matchingHttpContentType",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getMatchingHttpContentType",
        "()Ljava/lang/String;",
        "toFormattedString",
        "data",
        "Lorg/acra/data/CrashReportData;",
        "order",
        "",
        "Lorg/acra/ReportField;",
        "mainJoiner",
        "subJoiner",
        "urlEncode",
        "",
        "JSON",
        "KEY_VALUE_LIST",
        "acra-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lorg/acra/data/StringFormat;

.field public static final enum JSON:Lorg/acra/data/StringFormat;

.field public static final enum KEY_VALUE_LIST:Lorg/acra/data/StringFormat;


# instance fields
.field private final matchingHttpContentType:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lorg/acra/data/StringFormat;
    .locals 3

    .line 0
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/acra/data/StringFormat;

    const/4 v1, 0x0

    sget-object v2, Lorg/acra/data/StringFormat;->JSON:Lorg/acra/data/StringFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/acra/data/StringFormat;->KEY_VALUE_LIST:Lorg/acra/data/StringFormat;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Lorg/acra/data/StringFormat$JSON;

    const-string v1, "JSON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/acra/data/StringFormat$JSON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/data/StringFormat;->JSON:Lorg/acra/data/StringFormat;

    .line 47
    new-instance v0, Lorg/acra/data/StringFormat$KEY_VALUE_LIST;

    const-string v1, "KEY_VALUE_LIST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/acra/data/StringFormat$KEY_VALUE_LIST;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/data/StringFormat;->KEY_VALUE_LIST:Lorg/acra/data/StringFormat;

    invoke-static {}, Lorg/acra/data/StringFormat;->$values()[Lorg/acra/data/StringFormat;

    move-result-object v0

    sput-object v0, Lorg/acra/data/StringFormat;->$VALUES:[Lorg/acra/data/StringFormat;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lorg/acra/data/StringFormat;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/acra/data/StringFormat;->matchingHttpContentType:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/acra/data/StringFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries;"
        }
    .end annotation

    .line 0
    sget-object v0, Lorg/acra/data/StringFormat;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/acra/data/StringFormat;
    .locals 1

    .line 0
    const-class v0, Lorg/acra/data/StringFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/acra/data/StringFormat;

    return-object p0
.end method

.method public static values()[Lorg/acra/data/StringFormat;
    .locals 1

    .line 0
    sget-object v0, Lorg/acra/data/StringFormat;->$VALUES:[Lorg/acra/data/StringFormat;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/acra/data/StringFormat;

    return-object v0
.end method


# virtual methods
.method public final getMatchingHttpContentType()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/data/StringFormat;->matchingHttpContentType:Ljava/lang/String;

    return-object v0
.end method

.method public abstract toFormattedString(Lorg/acra/data/CrashReportData;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/acra/data/CrashReportData;",
            "Ljava/util/List<",
            "+",
            "Lorg/acra/ReportField;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
