.class public final Lorg/fdroid/fdroid/Languages;
.super Ljava/lang/Object;
.source "Languages.java"


# static fields
.field private static final CHINESE_HONG_KONG:Ljava/util/Locale;

.field private static final DEFAULT_LOCALE:Ljava/util/Locale;

.field public static final LOCALES_TO_TEST:[Ljava/util/Locale;

.field public static final TAG:Ljava/lang/String; = "Languages"

.field private static final TIBETAN:Ljava/util/Locale;

.field private static final TMP_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final USE_SYSTEM_DEFAULT:Ljava/lang/String; = ""

.field private static locale:Ljava/util/Locale;

.field private static nameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static singleton:Lorg/fdroid/fdroid/Languages;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 26
    new-instance v0, Ljava/util/Locale;

    const-string v1, "bo"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/fdroid/fdroid/Languages;->TIBETAN:Ljava/util/Locale;

    .line 27
    new-instance v1, Ljava/util/Locale;

    const-string v2, "zh"

    const-string v3, "HK"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/fdroid/fdroid/Languages;->CHINESE_HONG_KONG:Ljava/util/Locale;

    .line 31
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    sput-object v2, Lorg/fdroid/fdroid/Languages;->TMP_MAP:Ljava/util/Map;

    .line 35
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    sput-object v2, Lorg/fdroid/fdroid/Languages;->DEFAULT_LOCALE:Ljava/util/Locale;

    const/16 v2, 0x30

    new-array v2, v2, [Ljava/util/Locale;

    const/4 v3, 0x0

    .line 153
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    aput-object v1, v2, v3

    const/16 v1, 0x9

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "af"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xa

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "ar"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xb

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "be"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xc

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "bg"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xd

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "ca"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xe

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "cs"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xf

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "da"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x10

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "el"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x11

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "es"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x12

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "eo"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x13

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "et"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x14

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "eu"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x15

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "fa"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x16

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "fi"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x17

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "he"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x18

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "hi"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x19

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "hu"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x1a

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "hy"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x1b

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "id"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x1c

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "is"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x1d

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "it"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x1e

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "ml"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x1f

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "my"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "nb"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x21

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "nl"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x22

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "pl"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x23

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "pt"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x24

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "ro"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x25

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "ru"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x26

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "sc"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x27

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "sk"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x28

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "sn"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x29

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "sr"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2a

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "sv"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2b

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "th"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2c

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "tr"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2d

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "uk"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2e

    aput-object v0, v2, v1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "vi"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2f

    aput-object v0, v2, v1

    sput-object v2, Lorg/fdroid/fdroid/Languages;->LOCALES_TO_TEST:[Ljava/util/Locale;

    return-void
.end method

.method private constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/LinkedHashSet;

    sget-object v1, Lorg/fdroid/fdroid/Languages;->LOCALES_TO_TEST:[Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 41
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    sget-object v2, Lorg/fdroid/fdroid/Languages;->TIBETAN:Ljava/util/Locale;

    .line 42
    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v1, Lorg/fdroid/fdroid/Languages;->TMP_MAP:Ljava/util/Map;

    .line 44
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Tibetan \u0f56\u0f7c\u0f51\u0f0b\u0f66\u0f90\u0f51\u0f0d"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 45
    :cond_0
    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v1, Lorg/fdroid/fdroid/Languages;->TMP_MAP:Ljava/util/Map;

    .line 46
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u4e2d\u6587 (\u4e2d\u56fd)"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 47
    :cond_1
    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v1, Lorg/fdroid/fdroid/Languages;->TMP_MAP:Ljava/util/Map;

    .line 48
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u4e2d\u6587 (\u53f0\u7063)"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sget-object v2, Lorg/fdroid/fdroid/Languages;->CHINESE_HONG_KONG:Ljava/util/Locale;

    .line 49
    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v1, Lorg/fdroid/fdroid/Languages;->TMP_MAP:Ljava/util/Map;

    .line 50
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u4e2d\u6587 (\u9999\u6e2f)"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    sget-object v2, Lorg/fdroid/fdroid/Languages;->TMP_MAP:Ljava/util/Map;

    .line 52
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/fdroid/fdroid/Languages;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    sget-object v0, Lorg/fdroid/fdroid/Languages;->TMP_MAP:Ljava/util/Map;

    .line 57
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Lorg/fdroid/fdroid/R$string;->pref_language_default:I

    .line 60
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    sput-object p1, Lorg/fdroid/fdroid/Languages;->nameMap:Ljava/util/Map;

    return-void
.end method

.method private capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static forceChangeLanguage(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const-string p0, "Languages"

    const-string v0, "Languages.forceChangeLanguage() ignored on >= android-24"

    .line 119
    invoke-static {p0, v0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/high16 v1, 0x10000

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v1, 0x0

    .line 128
    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 129
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 130
    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public static get(Landroidx/appcompat/app/AppCompatActivity;)Lorg/fdroid/fdroid/Languages;
    .locals 1

    sget-object v0, Lorg/fdroid/fdroid/Languages;->singleton:Lorg/fdroid/fdroid/Languages;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lorg/fdroid/fdroid/Languages;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/Languages;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    sput-object v0, Lorg/fdroid/fdroid/Languages;->singleton:Lorg/fdroid/fdroid/Languages;

    :cond_0
    sget-object p0, Lorg/fdroid/fdroid/Languages;->singleton:Lorg/fdroid/fdroid/Languages;

    return-object p0
.end method

.method public static setLanguage(Landroid/content/ContextWrapper;)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const-string p0, "Languages"

    const-string v0, "Languages.setLanguage() ignored on >= android-24"

    .line 82
    invoke-static {p0, v0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object p0

    invoke-virtual {p0}, Lorg/fdroid/fdroid/Preferences;->clearLanguage()V

    return-void

    .line 86
    :cond_0
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/fdroid/fdroid/Languages;->DEFAULT_LOCALE:Ljava/util/Locale;

    .line 87
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->clearLanguage()V

    sput-object v1, Lorg/fdroid/fdroid/Languages;->locale:Ljava/util/Locale;

    goto :goto_1

    :cond_1
    sget-object v2, Lorg/fdroid/fdroid/Languages;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_2

    .line 90
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    if-eqz v0, :cond_5

    const-string v2, ""

    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, "_"

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 98
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    .line 99
    new-instance v0, Ljava/util/Locale;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    aget-object v1, v1, v3

    invoke-direct {v0, v2, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/fdroid/fdroid/Languages;->locale:Ljava/util/Locale;

    goto :goto_1

    .line 101
    :cond_4
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/fdroid/fdroid/Languages;->locale:Ljava/util/Locale;

    goto :goto_1

    .line 93
    :cond_5
    :goto_0
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->clearLanguage()V

    sput-object v1, Lorg/fdroid/fdroid/Languages;->locale:Ljava/util/Locale;

    :goto_1
    sget-object v0, Lorg/fdroid/fdroid/Languages;->locale:Ljava/util/Locale;

    .line 104
    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 106
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 107
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    sget-object v1, Lorg/fdroid/fdroid/Languages;->locale:Ljava/util/Locale;

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 109
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method


# virtual methods
.method public getAllNames()[Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/fdroid/fdroid/Languages;->nameMap:Ljava/util/Map;

    .line 138
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedLocales()[Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/fdroid/fdroid/Languages;->nameMap:Ljava/util/Map;

    .line 145
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 146
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
