.class public final enum Lorg/fdroid/fdroid/Preferences$Theme;
.super Ljava/lang/Enum;
.source "Preferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/Preferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Theme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fdroid/fdroid/Preferences$Theme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fdroid/fdroid/Preferences$Theme;

.field public static final enum dark:Lorg/fdroid/fdroid/Preferences$Theme;

.field public static final enum followSystem:Lorg/fdroid/fdroid/Preferences$Theme;

.field public static final enum light:Lorg/fdroid/fdroid/Preferences$Theme;

.field public static final enum lightWithDarkActionBar:Lorg/fdroid/fdroid/Preferences$Theme;

.field public static final enum night:Lorg/fdroid/fdroid/Preferences$Theme;


# direct methods
.method private static synthetic $values()[Lorg/fdroid/fdroid/Preferences$Theme;
    .locals 3

    .line 0
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/fdroid/fdroid/Preferences$Theme;

    const/4 v1, 0x0

    sget-object v2, Lorg/fdroid/fdroid/Preferences$Theme;->light:Lorg/fdroid/fdroid/Preferences$Theme;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/fdroid/fdroid/Preferences$Theme;->dark:Lorg/fdroid/fdroid/Preferences$Theme;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/fdroid/fdroid/Preferences$Theme;->followSystem:Lorg/fdroid/fdroid/Preferences$Theme;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/fdroid/fdroid/Preferences$Theme;->night:Lorg/fdroid/fdroid/Preferences$Theme;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/fdroid/fdroid/Preferences$Theme;->lightWithDarkActionBar:Lorg/fdroid/fdroid/Preferences$Theme;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 175
    new-instance v0, Lorg/fdroid/fdroid/Preferences$Theme;

    const-string v1, "light"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fdroid/fdroid/Preferences$Theme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fdroid/fdroid/Preferences$Theme;->light:Lorg/fdroid/fdroid/Preferences$Theme;

    .line 176
    new-instance v0, Lorg/fdroid/fdroid/Preferences$Theme;

    const-string v1, "dark"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/fdroid/fdroid/Preferences$Theme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fdroid/fdroid/Preferences$Theme;->dark:Lorg/fdroid/fdroid/Preferences$Theme;

    .line 177
    new-instance v0, Lorg/fdroid/fdroid/Preferences$Theme;

    const-string v1, "followSystem"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/fdroid/fdroid/Preferences$Theme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fdroid/fdroid/Preferences$Theme;->followSystem:Lorg/fdroid/fdroid/Preferences$Theme;

    .line 178
    new-instance v0, Lorg/fdroid/fdroid/Preferences$Theme;

    const-string v1, "night"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/fdroid/fdroid/Preferences$Theme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fdroid/fdroid/Preferences$Theme;->night:Lorg/fdroid/fdroid/Preferences$Theme;

    .line 179
    new-instance v0, Lorg/fdroid/fdroid/Preferences$Theme;

    const-string v1, "lightWithDarkActionBar"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/fdroid/fdroid/Preferences$Theme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fdroid/fdroid/Preferences$Theme;->lightWithDarkActionBar:Lorg/fdroid/fdroid/Preferences$Theme;

    .line 174
    invoke-static {}, Lorg/fdroid/fdroid/Preferences$Theme;->$values()[Lorg/fdroid/fdroid/Preferences$Theme;

    move-result-object v0

    sput-object v0, Lorg/fdroid/fdroid/Preferences$Theme;->$VALUES:[Lorg/fdroid/fdroid/Preferences$Theme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 174
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fdroid/fdroid/Preferences$Theme;
    .locals 1

    const-class v0, Lorg/fdroid/fdroid/Preferences$Theme;

    .line 174
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fdroid/fdroid/Preferences$Theme;

    return-object p0
.end method

.method public static values()[Lorg/fdroid/fdroid/Preferences$Theme;
    .locals 1

    sget-object v0, Lorg/fdroid/fdroid/Preferences$Theme;->$VALUES:[Lorg/fdroid/fdroid/Preferences$Theme;

    .line 174
    invoke-virtual {v0}, [Lorg/fdroid/fdroid/Preferences$Theme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fdroid/fdroid/Preferences$Theme;

    return-object v0
.end method
