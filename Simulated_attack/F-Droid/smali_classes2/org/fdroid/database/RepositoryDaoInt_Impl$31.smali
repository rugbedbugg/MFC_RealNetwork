.class abstract synthetic Lorg/fdroid/database/RepositoryDaoInt_Impl$31;
.super Ljava/lang/Object;
.source "RepositoryDaoInt_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/database/RepositoryDaoInt_Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$fdroid$index$IndexFormatVersion:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2235
    invoke-static {}, Lorg/fdroid/index/IndexFormatVersion;->values()[Lorg/fdroid/index/IndexFormatVersion;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/fdroid/database/RepositoryDaoInt_Impl$31;->$SwitchMap$org$fdroid$index$IndexFormatVersion:[I

    :try_start_0
    sget-object v1, Lorg/fdroid/index/IndexFormatVersion;->ONE:Lorg/fdroid/index/IndexFormatVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/fdroid/database/RepositoryDaoInt_Impl$31;->$SwitchMap$org$fdroid$index$IndexFormatVersion:[I

    sget-object v1, Lorg/fdroid/index/IndexFormatVersion;->TWO:Lorg/fdroid/index/IndexFormatVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
