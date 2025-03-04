.class public final enum Lorg/fdroid/database/VersionedStringType;
.super Ljava/lang/Enum;
.source "Version.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fdroid/database/VersionedStringType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0080\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lorg/fdroid/database/VersionedStringType;",
        "",
        "(Ljava/lang/String;I)V",
        "PERMISSION",
        "PERMISSION_SDK_23",
        "database_release"
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

.field private static final synthetic $VALUES:[Lorg/fdroid/database/VersionedStringType;

.field public static final enum PERMISSION:Lorg/fdroid/database/VersionedStringType;

.field public static final enum PERMISSION_SDK_23:Lorg/fdroid/database/VersionedStringType;


# direct methods
.method private static final synthetic $values()[Lorg/fdroid/database/VersionedStringType;
    .locals 3

    .line 0
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/fdroid/database/VersionedStringType;

    const/4 v1, 0x0

    sget-object v2, Lorg/fdroid/database/VersionedStringType;->PERMISSION:Lorg/fdroid/database/VersionedStringType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/fdroid/database/VersionedStringType;->PERMISSION_SDK_23:Lorg/fdroid/database/VersionedStringType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 164
    new-instance v0, Lorg/fdroid/database/VersionedStringType;

    const-string v1, "PERMISSION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fdroid/database/VersionedStringType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fdroid/database/VersionedStringType;->PERMISSION:Lorg/fdroid/database/VersionedStringType;

    .line 165
    new-instance v0, Lorg/fdroid/database/VersionedStringType;

    const-string v1, "PERMISSION_SDK_23"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/fdroid/database/VersionedStringType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fdroid/database/VersionedStringType;->PERMISSION_SDK_23:Lorg/fdroid/database/VersionedStringType;

    invoke-static {}, Lorg/fdroid/database/VersionedStringType;->$values()[Lorg/fdroid/database/VersionedStringType;

    move-result-object v0

    sput-object v0, Lorg/fdroid/database/VersionedStringType;->$VALUES:[Lorg/fdroid/database/VersionedStringType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lorg/fdroid/database/VersionedStringType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 163
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

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
    sget-object v0, Lorg/fdroid/database/VersionedStringType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fdroid/database/VersionedStringType;
    .locals 1

    .line 0
    const-class v0, Lorg/fdroid/database/VersionedStringType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fdroid/database/VersionedStringType;

    return-object p0
.end method

.method public static values()[Lorg/fdroid/database/VersionedStringType;
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/database/VersionedStringType;->$VALUES:[Lorg/fdroid/database/VersionedStringType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fdroid/database/VersionedStringType;

    return-object v0
.end method
