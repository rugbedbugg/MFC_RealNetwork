.class public final enum Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;
.super Ljava/lang/Enum;
.source "AppUpdateStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/AppUpdateStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

.field public static final enum DownloadInterrupted:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

.field public static final enum Downloading:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

.field public static final enum InstallError:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

.field public static final enum Installed:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

.field public static final enum Installing:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

.field public static final enum PendingInstall:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

.field public static final enum ReadyToInstall:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

.field public static final enum UpdateAvailable:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;


# direct methods
.method private static synthetic $values()[Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;
    .locals 3

    .line 0
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    const/4 v1, 0x0

    sget-object v2, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->PendingInstall:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->DownloadInterrupted:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->UpdateAvailable:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->Downloading:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->ReadyToInstall:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->Installing:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->Installed:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->InstallError:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 103
    new-instance v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    const-string v1, "PendingInstall"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->PendingInstall:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    .line 104
    new-instance v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    const-string v1, "DownloadInterrupted"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->DownloadInterrupted:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    .line 105
    new-instance v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    const-string v1, "UpdateAvailable"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->UpdateAvailable:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    .line 106
    new-instance v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    const-string v1, "Downloading"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->Downloading:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    .line 107
    new-instance v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    const-string v1, "ReadyToInstall"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->ReadyToInstall:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    .line 108
    new-instance v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    const-string v1, "Installing"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->Installing:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    .line 109
    new-instance v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    const-string v1, "Installed"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->Installed:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    .line 110
    new-instance v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    const-string v1, "InstallError"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->InstallError:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    .line 102
    invoke-static {}, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->$values()[Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    move-result-object v0

    sput-object v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->$VALUES:[Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;
    .locals 1

    const-class v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    .line 102
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    return-object p0
.end method

.method public static values()[Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;
    .locals 1

    sget-object v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->$VALUES:[Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    .line 102
    invoke-virtual {v0}, [Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    return-object v0
.end method
