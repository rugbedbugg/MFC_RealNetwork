.class Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;
.super Landroid/content/pm/PermissionGroupInfo;
.source "AppSecurityPermissions.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyPermissionGroupInfo"
.end annotation


# instance fields
.field final allPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field label:Ljava/lang/CharSequence;

.field final newPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/pm/PermissionGroupInfo;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    .line 105
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;->newPermissions:Ljava/util/List;

    .line 106
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;->allPermissions:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Landroid/content/pm/PermissionInfo;)V
    .locals 1

    .line 108
    invoke-direct {p0}, Landroid/content/pm/PermissionGroupInfo;-><init>()V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;->newPermissions:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;->allPermissions:Ljava/util/List;

    .line 109
    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method loadGroupIcon(Landroid/content/Context;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget v0, p0, Landroid/content/pm/PermissionGroupInfo;->icon:I

    if-eqz v0, :cond_0

    .line 121
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageItemInfo;->loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget p2, Lorg/fdroid/fdroid/R$drawable;->ic_perm_device_info:I

    .line 123
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget p2, Lorg/fdroid/fdroid/R$drawable;->ic_perm_device_info:I

    .line 126
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 129
    :goto_0
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fdroid/fdroid/Preferences;->getTheme()Lorg/fdroid/fdroid/Preferences$Theme;

    move-result-object p2

    .line 130
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 131
    sget-object v0, Lorg/fdroid/fdroid/Preferences$Theme;->light:Lorg/fdroid/fdroid/Preferences$Theme;

    if-ne p2, v0, :cond_1

    const/high16 p2, -0x1000000

    goto :goto_1

    :cond_1
    const/4 p2, -0x1

    :goto_1
    invoke-static {p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    return-object p1
.end method
