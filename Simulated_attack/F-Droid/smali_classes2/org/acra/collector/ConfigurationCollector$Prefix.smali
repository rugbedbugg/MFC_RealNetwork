.class public final enum Lorg/acra/collector/ConfigurationCollector$Prefix;
.super Ljava/lang/Enum;
.source "ConfigurationCollector.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/acra/collector/ConfigurationCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Prefix"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/acra/collector/ConfigurationCollector$Prefix;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/acra/collector/ConfigurationCollector$Prefix;",
        "",
        "text",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getText",
        "()Ljava/lang/String;",
        "UI_MODE",
        "TOUCHSCREEN",
        "SCREENLAYOUT",
        "ORIENTATION",
        "NAVIGATIONHIDDEN",
        "NAVIGATION",
        "KEYBOARDHIDDEN",
        "KEYBOARD",
        "HARDKEYBOARDHIDDEN",
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

.field private static final synthetic $VALUES:[Lorg/acra/collector/ConfigurationCollector$Prefix;

.field public static final enum HARDKEYBOARDHIDDEN:Lorg/acra/collector/ConfigurationCollector$Prefix;

.field public static final enum KEYBOARD:Lorg/acra/collector/ConfigurationCollector$Prefix;

.field public static final enum KEYBOARDHIDDEN:Lorg/acra/collector/ConfigurationCollector$Prefix;

.field public static final enum NAVIGATION:Lorg/acra/collector/ConfigurationCollector$Prefix;

.field public static final enum NAVIGATIONHIDDEN:Lorg/acra/collector/ConfigurationCollector$Prefix;

.field public static final enum ORIENTATION:Lorg/acra/collector/ConfigurationCollector$Prefix;

.field public static final enum SCREENLAYOUT:Lorg/acra/collector/ConfigurationCollector$Prefix;

.field public static final enum TOUCHSCREEN:Lorg/acra/collector/ConfigurationCollector$Prefix;

.field public static final enum UI_MODE:Lorg/acra/collector/ConfigurationCollector$Prefix;


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lorg/acra/collector/ConfigurationCollector$Prefix;
    .locals 3

    .line 0
    const/16 v0, 0x9

    new-array v0, v0, [Lorg/acra/collector/ConfigurationCollector$Prefix;

    const/4 v1, 0x0

    sget-object v2, Lorg/acra/collector/ConfigurationCollector$Prefix;->UI_MODE:Lorg/acra/collector/ConfigurationCollector$Prefix;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/acra/collector/ConfigurationCollector$Prefix;->TOUCHSCREEN:Lorg/acra/collector/ConfigurationCollector$Prefix;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/acra/collector/ConfigurationCollector$Prefix;->SCREENLAYOUT:Lorg/acra/collector/ConfigurationCollector$Prefix;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/acra/collector/ConfigurationCollector$Prefix;->ORIENTATION:Lorg/acra/collector/ConfigurationCollector$Prefix;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/acra/collector/ConfigurationCollector$Prefix;->NAVIGATIONHIDDEN:Lorg/acra/collector/ConfigurationCollector$Prefix;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/acra/collector/ConfigurationCollector$Prefix;->NAVIGATION:Lorg/acra/collector/ConfigurationCollector$Prefix;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/acra/collector/ConfigurationCollector$Prefix;->KEYBOARDHIDDEN:Lorg/acra/collector/ConfigurationCollector$Prefix;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/acra/collector/ConfigurationCollector$Prefix;->KEYBOARD:Lorg/acra/collector/ConfigurationCollector$Prefix;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/acra/collector/ConfigurationCollector$Prefix;->HARDKEYBOARDHIDDEN:Lorg/acra/collector/ConfigurationCollector$Prefix;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 187
    new-instance v0, Lorg/acra/collector/ConfigurationCollector$Prefix;

    const/4 v1, 0x0

    const-string v2, "UI_MODE_"

    const-string v3, "UI_MODE"

    invoke-direct {v0, v3, v1, v2}, Lorg/acra/collector/ConfigurationCollector$Prefix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/acra/collector/ConfigurationCollector$Prefix;->UI_MODE:Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 188
    new-instance v0, Lorg/acra/collector/ConfigurationCollector$Prefix;

    const/4 v1, 0x1

    const-string v2, "TOUCHSCREEN_"

    const-string v3, "TOUCHSCREEN"

    invoke-direct {v0, v3, v1, v2}, Lorg/acra/collector/ConfigurationCollector$Prefix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/acra/collector/ConfigurationCollector$Prefix;->TOUCHSCREEN:Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 189
    new-instance v0, Lorg/acra/collector/ConfigurationCollector$Prefix;

    const/4 v1, 0x2

    const-string v2, "SCREENLAYOUT_"

    const-string v3, "SCREENLAYOUT"

    invoke-direct {v0, v3, v1, v2}, Lorg/acra/collector/ConfigurationCollector$Prefix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/acra/collector/ConfigurationCollector$Prefix;->SCREENLAYOUT:Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 190
    new-instance v0, Lorg/acra/collector/ConfigurationCollector$Prefix;

    const/4 v1, 0x3

    const-string v2, "ORIENTATION_"

    const-string v3, "ORIENTATION"

    invoke-direct {v0, v3, v1, v2}, Lorg/acra/collector/ConfigurationCollector$Prefix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/acra/collector/ConfigurationCollector$Prefix;->ORIENTATION:Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 191
    new-instance v0, Lorg/acra/collector/ConfigurationCollector$Prefix;

    const/4 v1, 0x4

    const-string v2, "NAVIGATIONHIDDEN_"

    const-string v3, "NAVIGATIONHIDDEN"

    invoke-direct {v0, v3, v1, v2}, Lorg/acra/collector/ConfigurationCollector$Prefix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/acra/collector/ConfigurationCollector$Prefix;->NAVIGATIONHIDDEN:Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 192
    new-instance v0, Lorg/acra/collector/ConfigurationCollector$Prefix;

    const/4 v1, 0x5

    const-string v2, "NAVIGATION_"

    const-string v3, "NAVIGATION"

    invoke-direct {v0, v3, v1, v2}, Lorg/acra/collector/ConfigurationCollector$Prefix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/acra/collector/ConfigurationCollector$Prefix;->NAVIGATION:Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 193
    new-instance v0, Lorg/acra/collector/ConfigurationCollector$Prefix;

    const/4 v1, 0x6

    const-string v2, "KEYBOARDHIDDEN_"

    const-string v3, "KEYBOARDHIDDEN"

    invoke-direct {v0, v3, v1, v2}, Lorg/acra/collector/ConfigurationCollector$Prefix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/acra/collector/ConfigurationCollector$Prefix;->KEYBOARDHIDDEN:Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 194
    new-instance v0, Lorg/acra/collector/ConfigurationCollector$Prefix;

    const/4 v1, 0x7

    const-string v2, "KEYBOARD_"

    const-string v3, "KEYBOARD"

    invoke-direct {v0, v3, v1, v2}, Lorg/acra/collector/ConfigurationCollector$Prefix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/acra/collector/ConfigurationCollector$Prefix;->KEYBOARD:Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 195
    new-instance v0, Lorg/acra/collector/ConfigurationCollector$Prefix;

    const/16 v1, 0x8

    const-string v2, "HARDKEYBOARDHIDDEN_"

    const-string v3, "HARDKEYBOARDHIDDEN"

    invoke-direct {v0, v3, v1, v2}, Lorg/acra/collector/ConfigurationCollector$Prefix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/acra/collector/ConfigurationCollector$Prefix;->HARDKEYBOARDHIDDEN:Lorg/acra/collector/ConfigurationCollector$Prefix;

    invoke-static {}, Lorg/acra/collector/ConfigurationCollector$Prefix;->$values()[Lorg/acra/collector/ConfigurationCollector$Prefix;

    move-result-object v0

    sput-object v0, Lorg/acra/collector/ConfigurationCollector$Prefix;->$VALUES:[Lorg/acra/collector/ConfigurationCollector$Prefix;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lorg/acra/collector/ConfigurationCollector$Prefix;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 186
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/acra/collector/ConfigurationCollector$Prefix;->text:Ljava/lang/String;

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
    sget-object v0, Lorg/acra/collector/ConfigurationCollector$Prefix;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/acra/collector/ConfigurationCollector$Prefix;
    .locals 1

    .line 0
    const-class v0, Lorg/acra/collector/ConfigurationCollector$Prefix;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/acra/collector/ConfigurationCollector$Prefix;

    return-object p0
.end method

.method public static values()[Lorg/acra/collector/ConfigurationCollector$Prefix;
    .locals 1

    .line 0
    sget-object v0, Lorg/acra/collector/ConfigurationCollector$Prefix;->$VALUES:[Lorg/acra/collector/ConfigurationCollector$Prefix;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/acra/collector/ConfigurationCollector$Prefix;

    return-object v0
.end method


# virtual methods
.method public final getText()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/collector/ConfigurationCollector$Prefix;->text:Ljava/lang/String;

    return-object v0
.end method
