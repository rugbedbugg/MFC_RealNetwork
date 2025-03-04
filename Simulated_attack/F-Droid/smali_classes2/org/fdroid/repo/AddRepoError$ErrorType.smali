.class public final enum Lorg/fdroid/repo/AddRepoError$ErrorType;
.super Ljava/lang/Enum;
.source "RepoAdder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/repo/AddRepoError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fdroid/repo/AddRepoError$ErrorType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lorg/fdroid/repo/AddRepoError$ErrorType;",
        "",
        "(Ljava/lang/String;I)V",
        "UNKNOWN_SOURCES_DISALLOWED",
        "INVALID_FINGERPRINT",
        "IS_ARCHIVE_REPO",
        "INVALID_INDEX",
        "IO_ERROR",
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

.field private static final synthetic $VALUES:[Lorg/fdroid/repo/AddRepoError$ErrorType;

.field public static final enum INVALID_FINGERPRINT:Lorg/fdroid/repo/AddRepoError$ErrorType;

.field public static final enum INVALID_INDEX:Lorg/fdroid/repo/AddRepoError$ErrorType;

.field public static final enum IO_ERROR:Lorg/fdroid/repo/AddRepoError$ErrorType;

.field public static final enum IS_ARCHIVE_REPO:Lorg/fdroid/repo/AddRepoError$ErrorType;

.field public static final enum UNKNOWN_SOURCES_DISALLOWED:Lorg/fdroid/repo/AddRepoError$ErrorType;


# direct methods
.method private static final synthetic $values()[Lorg/fdroid/repo/AddRepoError$ErrorType;
    .locals 3

    .line 0
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/fdroid/repo/AddRepoError$ErrorType;

    const/4 v1, 0x0

    sget-object v2, Lorg/fdroid/repo/AddRepoError$ErrorType;->UNKNOWN_SOURCES_DISALLOWED:Lorg/fdroid/repo/AddRepoError$ErrorType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/fdroid/repo/AddRepoError$ErrorType;->INVALID_FINGERPRINT:Lorg/fdroid/repo/AddRepoError$ErrorType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/fdroid/repo/AddRepoError$ErrorType;->IS_ARCHIVE_REPO:Lorg/fdroid/repo/AddRepoError$ErrorType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/fdroid/repo/AddRepoError$ErrorType;->INVALID_INDEX:Lorg/fdroid/repo/AddRepoError$ErrorType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/fdroid/repo/AddRepoError$ErrorType;->IO_ERROR:Lorg/fdroid/repo/AddRepoError$ErrorType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 79
    new-instance v0, Lorg/fdroid/repo/AddRepoError$ErrorType;

    const-string v1, "UNKNOWN_SOURCES_DISALLOWED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fdroid/repo/AddRepoError$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fdroid/repo/AddRepoError$ErrorType;->UNKNOWN_SOURCES_DISALLOWED:Lorg/fdroid/repo/AddRepoError$ErrorType;

    .line 80
    new-instance v0, Lorg/fdroid/repo/AddRepoError$ErrorType;

    const-string v1, "INVALID_FINGERPRINT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/fdroid/repo/AddRepoError$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fdroid/repo/AddRepoError$ErrorType;->INVALID_FINGERPRINT:Lorg/fdroid/repo/AddRepoError$ErrorType;

    .line 81
    new-instance v0, Lorg/fdroid/repo/AddRepoError$ErrorType;

    const-string v1, "IS_ARCHIVE_REPO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/fdroid/repo/AddRepoError$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fdroid/repo/AddRepoError$ErrorType;->IS_ARCHIVE_REPO:Lorg/fdroid/repo/AddRepoError$ErrorType;

    .line 82
    new-instance v0, Lorg/fdroid/repo/AddRepoError$ErrorType;

    const-string v1, "INVALID_INDEX"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/fdroid/repo/AddRepoError$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fdroid/repo/AddRepoError$ErrorType;->INVALID_INDEX:Lorg/fdroid/repo/AddRepoError$ErrorType;

    .line 83
    new-instance v0, Lorg/fdroid/repo/AddRepoError$ErrorType;

    const-string v1, "IO_ERROR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/fdroid/repo/AddRepoError$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fdroid/repo/AddRepoError$ErrorType;->IO_ERROR:Lorg/fdroid/repo/AddRepoError$ErrorType;

    invoke-static {}, Lorg/fdroid/repo/AddRepoError$ErrorType;->$values()[Lorg/fdroid/repo/AddRepoError$ErrorType;

    move-result-object v0

    sput-object v0, Lorg/fdroid/repo/AddRepoError$ErrorType;->$VALUES:[Lorg/fdroid/repo/AddRepoError$ErrorType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lorg/fdroid/repo/AddRepoError$ErrorType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
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
    sget-object v0, Lorg/fdroid/repo/AddRepoError$ErrorType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fdroid/repo/AddRepoError$ErrorType;
    .locals 1

    .line 0
    const-class v0, Lorg/fdroid/repo/AddRepoError$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fdroid/repo/AddRepoError$ErrorType;

    return-object p0
.end method

.method public static values()[Lorg/fdroid/repo/AddRepoError$ErrorType;
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/repo/AddRepoError$ErrorType;->$VALUES:[Lorg/fdroid/repo/AddRepoError$ErrorType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fdroid/repo/AddRepoError$ErrorType;

    return-object v0
.end method
