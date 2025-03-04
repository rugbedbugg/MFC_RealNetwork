.class abstract synthetic Lorg/fdroid/database/VersionDaoInt_Impl$10;
.super Ljava/lang/Object;
.source "VersionDaoInt_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/database/VersionDaoInt_Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$fdroid$database$VersionedStringType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1774
    invoke-static {}, Lorg/fdroid/database/VersionedStringType;->values()[Lorg/fdroid/database/VersionedStringType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/fdroid/database/VersionDaoInt_Impl$10;->$SwitchMap$org$fdroid$database$VersionedStringType:[I

    :try_start_0
    sget-object v1, Lorg/fdroid/database/VersionedStringType;->PERMISSION:Lorg/fdroid/database/VersionedStringType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/fdroid/database/VersionDaoInt_Impl$10;->$SwitchMap$org$fdroid$database$VersionedStringType:[I

    sget-object v1, Lorg/fdroid/database/VersionedStringType;->PERMISSION_SDK_23:Lorg/fdroid/database/VersionedStringType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
