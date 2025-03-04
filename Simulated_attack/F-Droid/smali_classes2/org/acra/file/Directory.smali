.class public abstract enum Lorg/acra/file/Directory;
.super Ljava/lang/Enum;
.source "Directory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/acra/file/Directory$CACHE;,
        Lorg/acra/file/Directory$EXTERNAL_CACHE;,
        Lorg/acra/file/Directory$EXTERNAL_FILES;,
        Lorg/acra/file/Directory$EXTERNAL_STORAGE;,
        Lorg/acra/file/Directory$FILES;,
        Lorg/acra/file/Directory$FILES_LEGACY;,
        Lorg/acra/file/Directory$NO_BACKUP_FILES;,
        Lorg/acra/file/Directory$ROOT;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/acra/file/Directory;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H&j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lorg/acra/file/Directory;",
        "",
        "(Ljava/lang/String;I)V",
        "getFile",
        "Ljava/io/File;",
        "context",
        "Landroid/content/Context;",
        "fileName",
        "",
        "FILES_LEGACY",
        "FILES",
        "EXTERNAL_FILES",
        "CACHE",
        "EXTERNAL_CACHE",
        "NO_BACKUP_FILES",
        "EXTERNAL_STORAGE",
        "ROOT",
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

.field private static final synthetic $VALUES:[Lorg/acra/file/Directory;

.field public static final enum CACHE:Lorg/acra/file/Directory;

.field public static final enum EXTERNAL_CACHE:Lorg/acra/file/Directory;

.field public static final enum EXTERNAL_FILES:Lorg/acra/file/Directory;

.field public static final enum EXTERNAL_STORAGE:Lorg/acra/file/Directory;

.field public static final enum FILES:Lorg/acra/file/Directory;

.field public static final enum FILES_LEGACY:Lorg/acra/file/Directory;

.field public static final enum NO_BACKUP_FILES:Lorg/acra/file/Directory;

.field public static final enum ROOT:Lorg/acra/file/Directory;


# direct methods
.method private static final synthetic $values()[Lorg/acra/file/Directory;
    .locals 3

    .line 0
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/acra/file/Directory;

    const/4 v1, 0x0

    sget-object v2, Lorg/acra/file/Directory;->FILES_LEGACY:Lorg/acra/file/Directory;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/acra/file/Directory;->FILES:Lorg/acra/file/Directory;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/acra/file/Directory;->EXTERNAL_FILES:Lorg/acra/file/Directory;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/acra/file/Directory;->CACHE:Lorg/acra/file/Directory;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/acra/file/Directory;->EXTERNAL_CACHE:Lorg/acra/file/Directory;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/acra/file/Directory;->NO_BACKUP_FILES:Lorg/acra/file/Directory;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/acra/file/Directory;->EXTERNAL_STORAGE:Lorg/acra/file/Directory;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/acra/file/Directory;->ROOT:Lorg/acra/file/Directory;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Lorg/acra/file/Directory$FILES_LEGACY;

    const-string v1, "FILES_LEGACY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/acra/file/Directory$FILES_LEGACY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/file/Directory;->FILES_LEGACY:Lorg/acra/file/Directory;

    .line 42
    new-instance v0, Lorg/acra/file/Directory$FILES;

    const-string v1, "FILES"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/acra/file/Directory$FILES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/file/Directory;->FILES:Lorg/acra/file/Directory;

    .line 52
    new-instance v0, Lorg/acra/file/Directory$EXTERNAL_FILES;

    const-string v1, "EXTERNAL_FILES"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/acra/file/Directory$EXTERNAL_FILES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/file/Directory;->EXTERNAL_FILES:Lorg/acra/file/Directory;

    .line 61
    new-instance v0, Lorg/acra/file/Directory$CACHE;

    const-string v1, "CACHE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/acra/file/Directory$CACHE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/file/Directory;->CACHE:Lorg/acra/file/Directory;

    .line 71
    new-instance v0, Lorg/acra/file/Directory$EXTERNAL_CACHE;

    const-string v1, "EXTERNAL_CACHE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/acra/file/Directory$EXTERNAL_CACHE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/file/Directory;->EXTERNAL_CACHE:Lorg/acra/file/Directory;

    .line 81
    new-instance v0, Lorg/acra/file/Directory$NO_BACKUP_FILES;

    const-string v1, "NO_BACKUP_FILES"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/acra/file/Directory$NO_BACKUP_FILES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/file/Directory;->NO_BACKUP_FILES:Lorg/acra/file/Directory;

    .line 96
    new-instance v0, Lorg/acra/file/Directory$EXTERNAL_STORAGE;

    const-string v1, "EXTERNAL_STORAGE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/acra/file/Directory$EXTERNAL_STORAGE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/file/Directory;->EXTERNAL_STORAGE:Lorg/acra/file/Directory;

    .line 105
    new-instance v0, Lorg/acra/file/Directory$ROOT;

    const-string v1, "ROOT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/acra/file/Directory$ROOT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/file/Directory;->ROOT:Lorg/acra/file/Directory;

    invoke-static {}, Lorg/acra/file/Directory;->$values()[Lorg/acra/file/Directory;

    move-result-object v0

    sput-object v0, Lorg/acra/file/Directory;->$VALUES:[Lorg/acra/file/Directory;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lorg/acra/file/Directory;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/acra/file/Directory;-><init>(Ljava/lang/String;I)V

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
    sget-object v0, Lorg/acra/file/Directory;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/acra/file/Directory;
    .locals 1

    .line 0
    const-class v0, Lorg/acra/file/Directory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/acra/file/Directory;

    return-object p0
.end method

.method public static values()[Lorg/acra/file/Directory;
    .locals 1

    .line 0
    sget-object v0, Lorg/acra/file/Directory;->$VALUES:[Lorg/acra/file/Directory;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/acra/file/Directory;

    return-object v0
.end method


# virtual methods
.method public abstract getFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
.end method
