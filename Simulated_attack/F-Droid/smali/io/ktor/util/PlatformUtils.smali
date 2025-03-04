.class public final Lio/ktor/util/PlatformUtils;
.super Ljava/lang/Object;
.source "PlatformUtils.kt"


# static fields
.field public static final INSTANCE:Lio/ktor/util/PlatformUtils;

.field private static final IS_BROWSER:Z

.field private static final IS_DEVELOPMENT_MODE:Z

.field private static final IS_JVM:Z

.field private static final IS_NATIVE:Z

.field private static final IS_NEW_MM_ENABLED:Z

.field private static final IS_NODE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lio/ktor/util/PlatformUtils;

    invoke-direct {v0}, Lio/ktor/util/PlatformUtils;-><init>()V

    sput-object v0, Lio/ktor/util/PlatformUtils;->INSTANCE:Lio/ktor/util/PlatformUtils;

    .line 8
    invoke-static {v0}, Lio/ktor/util/PlatformUtilsJvmKt;->getPlatform(Lio/ktor/util/PlatformUtils;)Lio/ktor/util/Platform;

    move-result-object v1

    sget-object v2, Lio/ktor/util/Platform;->Browser:Lio/ktor/util/Platform;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    sput-boolean v1, Lio/ktor/util/PlatformUtils;->IS_BROWSER:Z

    .line 9
    invoke-static {v0}, Lio/ktor/util/PlatformUtilsJvmKt;->getPlatform(Lio/ktor/util/PlatformUtils;)Lio/ktor/util/Platform;

    move-result-object v1

    sget-object v2, Lio/ktor/util/Platform;->Node:Lio/ktor/util/Platform;

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    sput-boolean v1, Lio/ktor/util/PlatformUtils;->IS_NODE:Z

    .line 10
    invoke-static {v0}, Lio/ktor/util/PlatformUtilsJvmKt;->getPlatform(Lio/ktor/util/PlatformUtils;)Lio/ktor/util/Platform;

    move-result-object v1

    sget-object v2, Lio/ktor/util/Platform;->Jvm:Lio/ktor/util/Platform;

    if-ne v1, v2, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_2
    sput-boolean v1, Lio/ktor/util/PlatformUtils;->IS_JVM:Z

    .line 11
    invoke-static {v0}, Lio/ktor/util/PlatformUtilsJvmKt;->getPlatform(Lio/ktor/util/PlatformUtils;)Lio/ktor/util/Platform;

    move-result-object v1

    sget-object v2, Lio/ktor/util/Platform;->Native:Lio/ktor/util/Platform;

    if-ne v1, v2, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    sput-boolean v3, Lio/ktor/util/PlatformUtils;->IS_NATIVE:Z

    .line 13
    invoke-static {v0}, Lio/ktor/util/PlatformUtilsJvmKt;->isDevelopmentMode(Lio/ktor/util/PlatformUtils;)Z

    move-result v1

    sput-boolean v1, Lio/ktor/util/PlatformUtils;->IS_DEVELOPMENT_MODE:Z

    .line 15
    invoke-static {v0}, Lio/ktor/util/PlatformUtilsJvmKt;->isNewMemoryModel(Lio/ktor/util/PlatformUtils;)Z

    move-result v0

    sput-boolean v0, Lio/ktor/util/PlatformUtils;->IS_NEW_MM_ENABLED:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIS_BROWSER()Z
    .locals 1

    .line 0
    sget-boolean v0, Lio/ktor/util/PlatformUtils;->IS_BROWSER:Z

    return v0
.end method

.method public final getIS_DEVELOPMENT_MODE()Z
    .locals 1

    .line 0
    sget-boolean v0, Lio/ktor/util/PlatformUtils;->IS_DEVELOPMENT_MODE:Z

    return v0
.end method
