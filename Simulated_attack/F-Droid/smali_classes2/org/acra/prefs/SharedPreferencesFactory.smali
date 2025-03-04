.class public final Lorg/acra/prefs/SharedPreferencesFactory;
.super Ljava/lang/Object;
.source "SharedPreferencesFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/acra/prefs/SharedPreferencesFactory$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/acra/prefs/SharedPreferencesFactory$Companion;


# instance fields
.field private final config:Lorg/acra/config/CoreConfiguration;

.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/acra/prefs/SharedPreferencesFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/acra/prefs/SharedPreferencesFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/acra/prefs/SharedPreferencesFactory;->Companion:Lorg/acra/prefs/SharedPreferencesFactory$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/acra/prefs/SharedPreferencesFactory;->context:Landroid/content/Context;

    iput-object p2, p0, Lorg/acra/prefs/SharedPreferencesFactory;->config:Lorg/acra/config/CoreConfiguration;

    return-void
.end method


# virtual methods
.method public final create()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lorg/acra/prefs/SharedPreferencesFactory;->config:Lorg/acra/config/CoreConfiguration;

    .line 39
    invoke-virtual {v0}, Lorg/acra/config/CoreConfiguration;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/acra/prefs/SharedPreferencesFactory;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/acra/prefs/SharedPreferencesFactory;->config:Lorg/acra/config/CoreConfiguration;

    .line 40
    invoke-virtual {v1}, Lorg/acra/config/CoreConfiguration;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/acra/prefs/SharedPreferencesFactory;->context:Landroid/content/Context;

    .line 43
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method
