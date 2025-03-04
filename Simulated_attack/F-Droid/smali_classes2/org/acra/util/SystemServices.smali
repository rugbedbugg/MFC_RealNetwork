.class public final Lorg/acra/util/SystemServices;
.super Ljava/lang/Object;
.source "SystemServices.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/acra/util/SystemServices$ServiceNotReachedException;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/acra/util/SystemServices;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/acra/util/SystemServices;

    invoke-direct {v0}, Lorg/acra/util/SystemServices;-><init>()V

    sput-object v0, Lorg/acra/util/SystemServices;->INSTANCE:Lorg/acra/util/SystemServices;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getActivityManager(Landroid/content/Context;)Landroid/app/ActivityManager;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lorg/acra/util/SystemServices;->INSTANCE:Lorg/acra/util/SystemServices;

    const-string v1, "activity"

    .line 43
    invoke-direct {v0, p0, v1}, Lorg/acra/util/SystemServices;->getService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/app/ActivityManager;

    return-object p0
.end method

.method public static final getDropBoxManager(Landroid/content/Context;)Landroid/os/DropBoxManager;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lorg/acra/util/SystemServices;->INSTANCE:Lorg/acra/util/SystemServices;

    const-string v1, "dropbox"

    .line 35
    invoke-direct {v0, p0, v1}, Lorg/acra/util/SystemServices;->getService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.os.DropBoxManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/os/DropBoxManager;

    return-object p0
.end method

.method private final getService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 46
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lorg/acra/util/SystemServices$ServiceNotReachedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to load SystemService "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/acra/util/SystemServices$ServiceNotReachedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lorg/acra/util/SystemServices;->INSTANCE:Lorg/acra/util/SystemServices;

    const-string v1, "phone"

    .line 31
    invoke-direct {v0, p0, v1}, Lorg/acra/util/SystemServices;->getService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.telephony.TelephonyManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method
