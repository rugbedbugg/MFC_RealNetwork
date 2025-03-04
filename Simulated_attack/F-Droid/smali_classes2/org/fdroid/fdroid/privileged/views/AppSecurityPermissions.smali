.class public Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$PermissionGroupInfoComparator;,
        Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$PermissionInfoComparator;,
        Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;,
        Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;,
        Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$PermissionItemView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppSecurityPermissions"

.field public static final WHICH_ALL:I = 0xffff

.field public static final WHICH_NEW:I = 0x4


# instance fields
.field private final context:Landroid/content/Context;

.field private final inflater:Landroid/view/LayoutInflater;

.field private final newPermPrefix:Ljava/lang/CharSequence;

.field private final permComparator:Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$PermissionInfoComparator;

.field private final permGroupComparator:Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$PermissionGroupInfoComparator;

.field private final permGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final permGroupsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final pm:Landroid/content/pm/PackageManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->permGroups:Ljava/util/Map;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->permGroupsList:Ljava/util/List;

    .line 96
    new-instance v0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$PermissionGroupInfoComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$PermissionGroupInfoComparator;-><init>(Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$PermissionGroupInfoComparator-IA;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->permGroupComparator:Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$PermissionGroupInfoComparator;

    .line 97
    new-instance v0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$PermissionInfoComparator;

    invoke-direct {v0}, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$PermissionInfoComparator;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->permComparator:Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$PermissionInfoComparator;

    iput-object p1, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->context:Landroid/content/Context;

    const-class v0, Landroid/view/LayoutInflater;

    .line 249
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->inflater:Landroid/view/LayoutInflater;

    .line 250
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->pm:Landroid/content/pm/PackageManager;

    sget v0, Lorg/fdroid/fdroid/R$string;->perms_new_perm_prefix:I

    .line 252
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->newPermPrefix:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 3

    .line 256
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;-><init>(Landroid/content/Context;)V

    if-nez p2, :cond_0

    return-void

    .line 261
    :cond_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 263
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->pm:Landroid/content/pm/PackageManager;

    .line 265
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x1000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 269
    :goto_0
    invoke-direct {p0, p2, p1, v0}, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->extractPerms(Landroid/content/pm/PackageInfo;Ljava/util/Set;Landroid/content/pm/PackageInfo;)V

    .line 271
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p2}, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->setPermissions(Ljava/util/List;)V

    return-void
.end method

.method private addPermToList(Ljava/util/List;Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;",
            ">;",
            "Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;",
            ")V"
        }
    .end annotation

    .line 476
    iget-object v0, p2, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;->label:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->pm:Landroid/content/pm/PackageManager;

    .line 477
    invoke-virtual {p2, v0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p2, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;->label:Ljava/lang/CharSequence;

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->permComparator:Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$PermissionInfoComparator;

    .line 479
    invoke-static {p1, p2, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_1

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 482
    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private displayPermissions(Ljava/util/List;Landroid/widget/LinearLayout;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "I)V"
        }
    .end annotation

    .line 395
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->context:Landroid/content/Context;

    .line 397
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 399
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;

    .line 400
    invoke-direct {p0, v1, p3}, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->getPermissionList(Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    .line 401
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 402
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;

    const/4 v6, 0x1

    if-nez v4, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    const/4 v8, 0x4

    if-eq p3, v8, :cond_2

    iget-object v8, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->newPermPrefix:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    .line 403
    :goto_2
    invoke-direct {p0, v1, v5, v7, v8}, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->getPermissionItemView(Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;)Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$PermissionItemView;

    move-result-object v5

    .line 405
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-nez v4, :cond_3

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 411
    :cond_3
    iget-object v8, v1, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;->allPermissions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v6

    if-ne v4, v8, :cond_4

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 414
    :cond_4
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-nez v6, :cond_5

    iget v6, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    mul-int/lit8 v6, v6, 0x2

    iput v6, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 417
    :cond_5
    invoke-virtual {p2, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private extractPerms(Landroid/content/pm/PackageInfo;Ljava/util/Set;Landroid/content/pm/PackageInfo;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/Set<",
            "Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            ")V"
        }
    .end annotation

    .line 281
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz p1, :cond_b

    .line 282
    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 286
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_b

    aget-object v3, p1, v2

    :try_start_0
    iget-object v4, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->pm:Landroid/content/pm/PackageManager;

    .line 288
    invoke-virtual {v4, v3, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    if-nez v4, :cond_1

    goto/16 :goto_7

    :cond_1
    if-eqz p3, :cond_3

    .line 293
    iget-object v5, p3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v5, :cond_3

    move v5, v1

    .line 294
    :goto_1
    iget-object v6, p3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v7, v6

    if-ge v5, v7, :cond_3

    .line 295
    aget-object v6, v6, v5

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, -0x1

    :goto_2
    if-ltz v5, :cond_4

    .line 303
    invoke-direct {p0, p3}, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->getRequestedPermissionFlags(Landroid/content/pm/PackageInfo;)[I

    move-result-object v6

    .line 304
    aget v5, v6, v5

    goto :goto_3

    :cond_4
    move v5, v1

    .line 306
    :goto_3
    invoke-direct {p0, v4, v5}, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->isDisplayablePermission(Landroid/content/pm/PermissionInfo;I)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_7

    .line 311
    :cond_5
    iget-object v6, v4, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-nez v6, :cond_6

    .line 314
    iget-object v7, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 315
    iput-object v7, v4, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    goto :goto_4

    :cond_6
    move-object v7, v6

    :goto_4
    iget-object v8, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->permGroups:Ljava/util/Map;

    .line 317
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;

    if-nez v7, :cond_a

    if-eqz v6, :cond_7

    iget-object v7, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->pm:Landroid/content/pm/PackageManager;

    .line 321
    invoke-virtual {v7, v6, v1}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v6

    goto :goto_5

    :cond_7
    const/4 v6, 0x0

    :goto_5
    if-eqz v6, :cond_8

    .line 324
    new-instance v7, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;

    invoke-direct {v7, v6}, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    goto :goto_6

    .line 330
    :cond_8
    iget-object v6, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v6, v4, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    iget-object v7, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->permGroups:Ljava/util/Map;

    .line 331
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;

    if-nez v7, :cond_9

    .line 333
    new-instance v7, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;

    invoke-direct {v7, v4}, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    :cond_9
    :goto_6
    iget-object v6, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->permGroups:Ljava/util/Map;

    .line 336
    iget-object v8, v4, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :cond_a
    new-instance v6, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;

    invoke-direct {v6, v4}, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    iput v5, v6, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;->existingReqFlags:I

    .line 340
    invoke-static {p3, v5}, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->isNewPermission(Landroid/content/pm/PackageInfo;I)Z

    move-result v4

    iput-boolean v4, v6, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;->newPerm:Z

    .line 341
    invoke-interface {p2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 343
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring unknown permission:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppSecurityPermissions"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    :goto_8
    return-void
.end method

.method private getPermissionItemView(Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;)Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$PermissionItemView;
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->inflater:Landroid/view/LayoutInflater;

    .line 425
    iget v1, p2, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    sget v1, Lorg/fdroid/fdroid/R$layout;->app_permission_item_money:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/fdroid/fdroid/R$layout;->app_permission_item:I

    :goto_0
    const/4 v2, 0x0

    .line 424
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$PermissionItemView;

    .line 428
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$PermissionItemView;->setPermission(Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;)V

    return-object v0
.end method

.method private getPermissionList(Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;",
            "I)",
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 363
    iget-object p1, p1, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;->newPermissions:Ljava/util/List;

    return-object p1

    .line 365
    :cond_0
    iget-object p1, p1, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;->allPermissions:Ljava/util/List;

    return-object p1
.end method

.method private getRequestedPermissionFlags(Landroid/content/pm/PackageInfo;)[I
    .locals 0

    .line 275
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    return-object p1
.end method

.method private isDisplayablePermission(Landroid/content/pm/PermissionInfo;I)Z
    .locals 4

    .line 433
    iget p1, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v0, p1, 0xf

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eq v0, v2, :cond_2

    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v2

    :goto_2
    if-nez v3, :cond_7

    if-eqz v0, :cond_3

    goto :goto_5

    :cond_3
    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_4

    move p1, v2

    goto :goto_3

    :cond_4
    move p1, v1

    :goto_3
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_5

    move p2, v2

    goto :goto_4

    :cond_5
    move p2, v1

    :goto_4
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    move v1, v2

    :cond_6
    return v1

    :cond_7
    :goto_5
    return v2
.end method

.method private static isNewPermission(Landroid/content/pm/PackageInfo;I)Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    and-int/lit8 p0, p1, 0x2

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private setPermissions(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 489
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;

    .line 490
    iget v1, v0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;->existingReqFlags:I

    invoke-direct {p0, v0, v1}, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->isDisplayablePermission(Landroid/content/pm/PermissionInfo;I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->permGroups:Ljava/util/Map;

    .line 493
    iget-object v2, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->pm:Landroid/content/pm/PackageManager;

    .line 495
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;->label:Ljava/lang/CharSequence;

    .line 496
    iget-object v2, v1, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;->allPermissions:Ljava/util/List;

    invoke-direct {p0, v2, v0}, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->addPermToList(Ljava/util/List;Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;)V

    .line 497
    iget-boolean v2, v0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;->newPerm:Z

    if-eqz v2, :cond_0

    .line 498
    iget-object v1, v1, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;->newPermissions:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->addPermToList(Ljava/util/List;Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionInfo;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->permGroups:Ljava/util/Map;

    .line 504
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;

    .line 505
    iget v1, v0, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    if-nez v1, :cond_4

    iget-object v1, v0, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    :try_start_0
    iget-object v1, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->pm:Landroid/content/pm/PackageManager;

    .line 509
    iget-object v2, v0, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->pm:Landroid/content/pm/PackageManager;

    .line 510
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;->label:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    iget-object v1, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->pm:Landroid/content/pm/PackageManager;

    .line 512
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;->label:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->pm:Landroid/content/pm/PackageManager;

    .line 506
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;->label:Ljava/lang/CharSequence;

    :goto_3
    iget-object v1, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->permGroupsList:Ljava/util/List;

    .line 515
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->permGroupsList:Ljava/util/List;

    iget-object v0, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->permGroupComparator:Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$PermissionGroupInfoComparator;

    .line 517
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public getPermissionCount(I)I
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->permGroupsList:Ljava/util/List;

    .line 370
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;

    .line 371
    invoke-direct {p0, v2, p1}, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->getPermissionList(Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions$MyPermissionGroupInfo;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getPermissionsView(I)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lorg/fdroid/fdroid/R$layout;->app_perms_summary:I

    const/4 v2, 0x0

    .line 377
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sget v1, Lorg/fdroid/fdroid/R$id;->perms_list:I

    .line 378
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    sget v2, Lorg/fdroid/fdroid/R$id;->no_permissions:I

    .line 379
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->permGroupsList:Ljava/util/List;

    .line 381
    invoke-direct {p0, v3, v1, p1}, Lorg/fdroid/fdroid/privileged/views/AppSecurityPermissions;->displayPermissions(Ljava/util/List;Landroid/widget/LinearLayout;I)V

    .line 382
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    .line 383
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-object v0
.end method
