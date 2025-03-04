.class public final Lorg/fdroid/database/AppDaoInt$DefaultImpls;
.super Ljava/lang/Object;
.source "AppDao.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/database/AppDaoInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private static diffAndUpdate(Lorg/fdroid/database/AppDaoInt;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/database/AppDaoInt;",
            "Ljava/util/List<",
            "Lorg/fdroid/database/LocalizedFile;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlinx/serialization/json/JsonObject;",
            ")V"
        }
    .end annotation

    move-object/from16 v6, p5

    .line 255
    sget-object v7, Lorg/fdroid/database/DbDiffUtils;->INSTANCE:Lorg/fdroid/database/DbDiffUtils;

    .line 766
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/fdroid/database/LocalizedFile;

    .line 258
    invoke-virtual {v2}, Lorg/fdroid/database/LocalizedFile;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 857
    invoke-interface {v8, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v9, Lorg/fdroid/database/AppDaoInt$diffAndUpdate$2;->INSTANCE:Lorg/fdroid/database/AppDaoInt$diffAndUpdate$2;

    .line 255
    new-instance v10, Lorg/fdroid/database/AppDaoInt$diffAndUpdate$3;

    move-wide/from16 v11, p2

    move-object/from16 v13, p4

    invoke-direct {v10, v11, v12, v13, v6}, Lorg/fdroid/database/AppDaoInt$diffAndUpdate$3;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    new-instance v14, Lorg/fdroid/database/AppDaoInt$diffAndUpdate$4;

    move-object v0, v14

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/fdroid/database/AppDaoInt$diffAndUpdate$4;-><init>(Lorg/fdroid/database/AppDaoInt;JLjava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lorg/fdroid/database/AppDaoInt$diffAndUpdate$5;

    move-object v0, v15

    invoke-direct/range {v0 .. v5}, Lorg/fdroid/database/AppDaoInt$diffAndUpdate$5;-><init>(Lorg/fdroid/database/AppDaoInt;JLjava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lorg/fdroid/database/AppDaoInt$diffAndUpdate$6;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lorg/fdroid/database/AppDaoInt$diffAndUpdate$6;-><init>(Lorg/fdroid/database/AppDaoInt;)V

    sget-object v12, Lorg/fdroid/database/AppDaoInt$diffAndUpdate$7;->INSTANCE:Lorg/fdroid/database/AppDaoInt$diffAndUpdate$7;

    .line 265
    invoke-static {}, Lorg/fdroid/database/AppDaoKt;->access$getDENY_FILE_LIST$p()Ljava/util/List;

    move-result-object v13

    move-object v0, v7

    move-object/from16 v1, p6

    move-object/from16 v2, p5

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move-object v6, v14

    move-object v7, v15

    move-object v8, v11

    move-object v9, v12

    move-object v10, v13

    .line 255
    invoke-virtual/range {v0 .. v10}, Lorg/fdroid/database/DbDiffUtils;->diffAndUpdateTable(Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    return-void
.end method

.method private static diffAndUpdateLocalizedFileList(Lorg/fdroid/database/AppDaoInt;JLjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V
    .locals 14

    .line 274
    sget-object v0, Lorg/fdroid/database/DbDiffUtils;->INSTANCE:Lorg/fdroid/database/DbDiffUtils;

    new-instance v3, Lorg/fdroid/database/AppDaoInt$diffAndUpdateLocalizedFileList$1;

    move-wide v1, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct {v3, v1, v2, v10, v11}, Lorg/fdroid/database/AppDaoInt$diffAndUpdateLocalizedFileList$1;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lorg/fdroid/database/AppDaoInt$diffAndUpdateLocalizedFileList$2;

    move-object v4, v12

    move-object v5, p0

    move-wide v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v9}, Lorg/fdroid/database/AppDaoInt$diffAndUpdateLocalizedFileList$2;-><init>(Lorg/fdroid/database/AppDaoInt;JLjava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lorg/fdroid/database/AppDaoInt$diffAndUpdateLocalizedFileList$3;

    move-object v4, v13

    invoke-direct/range {v4 .. v9}, Lorg/fdroid/database/AppDaoInt$diffAndUpdateLocalizedFileList$3;-><init>(Lorg/fdroid/database/AppDaoInt;JLjava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lorg/fdroid/database/AppDaoInt$diffAndUpdateLocalizedFileList$4;

    move-object v1, p0

    invoke-direct {v6, p0}, Lorg/fdroid/database/AppDaoInt$diffAndUpdateLocalizedFileList$4;-><init>(Lorg/fdroid/database/AppDaoInt;)V

    move-object/from16 v1, p5

    move-object/from16 v2, p4

    move-object v4, v12

    move-object v5, v13

    invoke-virtual/range {v0 .. v6}, Lorg/fdroid/database/DbDiffUtils;->diffAndUpdateListTable(Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private static escapeQuery(Lorg/fdroid/database/AppDaoInt;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 431
    sget-object p0, Lkotlin/text/Regex;->Companion:Lkotlin/text/Regex$Companion;

    const-string v0, "\""

    invoke-virtual {p0, v0}, Lkotlin/text/Regex$Companion;->fromLiteral(Ljava/lang/String;)Lkotlin/text/Regex;

    move-result-object p0

    const-string v0, "\"\""

    invoke-virtual {p0, p1, v0}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 432
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\"*"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "*\""

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppListItems(Lorg/fdroid/database/AppDaoInt;Landroid/content/pm/PackageManager;JLjava/lang/String;Lorg/fdroid/database/AppListSortOrder;)Landroidx/lifecycle/LiveData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/database/AppDaoInt;",
            "Landroid/content/pm/PackageManager;",
            "J",
            "Ljava/lang/String;",
            "Lorg/fdroid/database/AppListSortOrder;",
            ")",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    const-string v0, "packageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sortOrder"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_1

    .line 424
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 427
    :cond_0
    invoke-static {p0, p4}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->escapeQuery(Lorg/fdroid/database/AppDaoInt;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p0, p2, p3, p4}, Lorg/fdroid/database/AppDaoInt;->getAppListItems(JLjava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->map$default(Lorg/fdroid/database/AppDaoInt;Landroidx/lifecycle/LiveData;Landroid/content/pm/PackageManager;Ljava/util/Map;ILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    goto :goto_1

    .line 424
    :cond_1
    :goto_0
    sget-object p4, Lorg/fdroid/database/AppDaoInt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p5

    aget p4, p4, p5

    const/4 p5, 0x1

    if-eq p4, p5, :cond_3

    const/4 p5, 0x2

    if-ne p4, p5, :cond_2

    .line 426
    invoke-interface {p0, p2, p3}, Lorg/fdroid/database/AppDaoInt;->getAppListItemsByName(J)Landroidx/lifecycle/LiveData;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->map$default(Lorg/fdroid/database/AppDaoInt;Landroidx/lifecycle/LiveData;Landroid/content/pm/PackageManager;Ljava/util/Map;ILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 425
    :cond_3
    invoke-interface {p0, p2, p3}, Lorg/fdroid/database/AppDaoInt;->getAppListItemsByLastUpdated(J)Landroidx/lifecycle/LiveData;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->map$default(Lorg/fdroid/database/AppDaoInt;Landroidx/lifecycle/LiveData;Landroid/content/pm/PackageManager;Ljava/util/Map;ILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static getAppListItems(Lorg/fdroid/database/AppDaoInt;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/database/AppListSortOrder;)Landroidx/lifecycle/LiveData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/database/AppDaoInt;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/fdroid/database/AppListSortOrder;",
            ")",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    const-string v0, "packageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sortOrder"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 412
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 415
    :cond_0
    invoke-static {p0, p3}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->escapeQuery(Lorg/fdroid/database/AppDaoInt;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0, p2, p3}, Lorg/fdroid/database/AppDaoInt;->getAppListItems(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->map$default(Lorg/fdroid/database/AppDaoInt;Landroidx/lifecycle/LiveData;Landroid/content/pm/PackageManager;Ljava/util/Map;ILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    goto :goto_1

    .line 412
    :cond_1
    :goto_0
    sget-object p3, Lorg/fdroid/database/AppDaoInt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p3, p3, p4

    const/4 p4, 0x1

    if-eq p3, p4, :cond_3

    const/4 p4, 0x2

    if-ne p3, p4, :cond_2

    .line 414
    invoke-interface {p0, p2}, Lorg/fdroid/database/AppDaoInt;->getAppListItemsByName(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->map$default(Lorg/fdroid/database/AppDaoInt;Landroidx/lifecycle/LiveData;Landroid/content/pm/PackageManager;Ljava/util/Map;ILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 413
    :cond_3
    invoke-interface {p0, p2}, Lorg/fdroid/database/AppDaoInt;->getAppListItemsByLastUpdated(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->map$default(Lorg/fdroid/database/AppDaoInt;Landroidx/lifecycle/LiveData;Landroid/content/pm/PackageManager;Ljava/util/Map;ILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static getAppListItems(Lorg/fdroid/database/AppDaoInt;Landroid/content/pm/PackageManager;Ljava/lang/String;Lorg/fdroid/database/AppListSortOrder;)Landroidx/lifecycle/LiveData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/database/AppDaoInt;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            "Lorg/fdroid/database/AppListSortOrder;",
            ")",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    const-string v0, "packageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sortOrder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 400
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 403
    :cond_0
    invoke-static {p0, p2}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->escapeQuery(Lorg/fdroid/database/AppDaoInt;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lorg/fdroid/database/AppDaoInt;->getAppListItems(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->map$default(Lorg/fdroid/database/AppDaoInt;Landroidx/lifecycle/LiveData;Landroid/content/pm/PackageManager;Ljava/util/Map;ILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    goto :goto_1

    .line 400
    :cond_1
    :goto_0
    sget-object p2, Lorg/fdroid/database/AppDaoInt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x1

    if-eq p2, p3, :cond_3

    const/4 p3, 0x2

    if-ne p2, p3, :cond_2

    .line 402
    invoke-interface {p0}, Lorg/fdroid/database/AppDaoInt;->getAppListItemsByName()Landroidx/lifecycle/LiveData;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->map$default(Lorg/fdroid/database/AppDaoInt;Landroidx/lifecycle/LiveData;Landroid/content/pm/PackageManager;Ljava/util/Map;ILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 401
    :cond_3
    invoke-interface {p0}, Lorg/fdroid/database/AppDaoInt;->getAppListItemsByLastUpdated()Landroidx/lifecycle/LiveData;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->map$default(Lorg/fdroid/database/AppDaoInt;Landroidx/lifecycle/LiveData;Landroid/content/pm/PackageManager;Ljava/util/Map;ILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static getInstalledAppListItems(Lorg/fdroid/database/AppDaoInt;Landroid/content/pm/PackageManager;)Landroidx/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/database/AppDaoInt;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    const-string v0, "packageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 595
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    const-string v1, "getInstalledPackages(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xa

    .line 1194
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 1195
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1222
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1223
    move-object v3, v1

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 596
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1223
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 597
    :cond_0
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 598
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v3, 0x3e7

    if-gt v1, v3, :cond_1

    .line 599
    invoke-interface {p0, v0}, Lorg/fdroid/database/AppDaoInt;->getAppListItems(Ljava/util/List;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-static {p0, v0, p1, v2}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->map(Lorg/fdroid/database/AppDaoInt;Landroidx/lifecycle/LiveData;Landroid/content/pm/PackageManager;Ljava/util/Map;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    goto :goto_1

    .line 601
    :cond_1
    new-instance v1, Lorg/fdroid/database/AppDaoInt$AppListLiveData;

    invoke-direct {v1}, Lorg/fdroid/database/AppDaoInt$AppListLiveData;-><init>()V

    .line 602
    new-instance v4, Lorg/fdroid/database/AppDaoInt$getInstalledAppListItems$1$1;

    invoke-direct {v4, v1, p0}, Lorg/fdroid/database/AppDaoInt$getInstalledAppListItems$1$1;-><init>(Lorg/fdroid/database/AppDaoInt$AppListLiveData;Lorg/fdroid/database/AppDaoInt;)V

    invoke-static {v0, v3, v4}, Lkotlin/collections/CollectionsKt;->chunked(Ljava/lang/Iterable;ILkotlin/jvm/functions/Function1;)Ljava/util/List;

    .line 603
    invoke-static {p0, v1, p1, v2}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->map(Lorg/fdroid/database/AppDaoInt;Landroidx/lifecycle/LiveData;Landroid/content/pm/PackageManager;Ljava/util/Map;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static insert(Lorg/fdroid/database/AppDaoInt;JLjava/lang/String;Lorg/fdroid/index/v2/MetadataV2;Landroidx/core/os/LocaleListCompat;)V
    .locals 7

    const-string v0, "packageName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locales"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v1, p4

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p5

    .line 163
    invoke-static/range {v1 .. v6}, Lorg/fdroid/database/AppKt;->toAppMetadata(Lorg/fdroid/index/v2/MetadataV2;JLjava/lang/String;ZLandroidx/core/os/LocaleListCompat;)Lorg/fdroid/database/AppMetadata;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/fdroid/database/AppDaoInt;->insert(Lorg/fdroid/database/AppMetadata;)V

    .line 164
    invoke-virtual {p4}, Lorg/fdroid/index/v2/MetadataV2;->getIcon()Ljava/util/Map;

    move-result-object v2

    const-string v6, "icon"

    move-object v1, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-static/range {v1 .. v6}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->insert(Lorg/fdroid/database/AppDaoInt;Ljava/util/Map;JLjava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p4}, Lorg/fdroid/index/v2/MetadataV2;->getFeatureGraphic()Ljava/util/Map;

    move-result-object v2

    const-string v6, "featureGraphic"

    invoke-static/range {v1 .. v6}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->insert(Lorg/fdroid/database/AppDaoInt;Ljava/util/Map;JLjava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p4}, Lorg/fdroid/index/v2/MetadataV2;->getPromoGraphic()Ljava/util/Map;

    move-result-object v2

    const-string v6, "promoGraphic"

    invoke-static/range {v1 .. v6}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->insert(Lorg/fdroid/database/AppDaoInt;Ljava/util/Map;JLjava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p4}, Lorg/fdroid/index/v2/MetadataV2;->getTvBanner()Ljava/util/Map;

    move-result-object v2

    const-string v6, "tvBanner"

    invoke-static/range {v1 .. v6}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->insert(Lorg/fdroid/database/AppDaoInt;Ljava/util/Map;JLjava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p4}, Lorg/fdroid/index/v2/MetadataV2;->getScreenshots()Lorg/fdroid/index/v2/Screenshots;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Lorg/fdroid/index/v2/Screenshots;->getPhone()Ljava/util/Map;

    move-result-object v2

    const-string v6, "phone"

    move-object v1, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-static/range {v1 .. v6}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->insertLocalizedFileListV2(Lorg/fdroid/database/AppDaoInt;Ljava/util/Map;JLjava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Lorg/fdroid/index/v2/Screenshots;->getSevenInch()Ljava/util/Map;

    move-result-object v2

    const-string v6, "sevenInch"

    invoke-static/range {v1 .. v6}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->insertLocalizedFileListV2(Lorg/fdroid/database/AppDaoInt;Ljava/util/Map;JLjava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0}, Lorg/fdroid/index/v2/Screenshots;->getTenInch()Ljava/util/Map;

    move-result-object v2

    const-string v6, "tenInch"

    invoke-static/range {v1 .. v6}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->insertLocalizedFileListV2(Lorg/fdroid/database/AppDaoInt;Ljava/util/Map;JLjava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Lorg/fdroid/index/v2/Screenshots;->getWear()Ljava/util/Map;

    move-result-object v2

    const-string v6, "wear"

    invoke-static/range {v1 .. v6}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->insertLocalizedFileListV2(Lorg/fdroid/database/AppDaoInt;Ljava/util/Map;JLjava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0}, Lorg/fdroid/index/v2/Screenshots;->getTv()Ljava/util/Map;

    move-result-object v2

    const-string v6, "tv"

    invoke-static/range {v1 .. v6}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->insertLocalizedFileListV2(Lorg/fdroid/database/AppDaoInt;Ljava/util/Map;JLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static insert(Lorg/fdroid/database/AppDaoInt;Ljava/util/Map;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/database/AppDaoInt;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v2/FileV2;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 178
    invoke-static {p1, p2, p3, p4, p5}, Lorg/fdroid/database/AppKt;->toLocalizedFile(Ljava/util/Map;JLjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 179
    invoke-interface {p0, p1}, Lorg/fdroid/database/AppDaoInt;->insert(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private static insertLocalizedFileListV2(Lorg/fdroid/database/AppDaoInt;Ljava/util/Map;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/database/AppDaoInt;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/FileV2;",
            ">;>;J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 185
    invoke-static {p1, p2, p3, p4, p5}, Lorg/fdroid/database/AppKt;->toLocalizedFileList(Ljava/util/Map;JLjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 186
    invoke-interface {p0, p1}, Lorg/fdroid/database/AppDaoInt;->insertLocalizedFileLists(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private static map(Lorg/fdroid/database/AppDaoInt;Landroidx/lifecycle/LiveData;Landroid/content/pm/PackageManager;Ljava/util/Map;)Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/database/AppDaoInt;",
            "Landroidx/lifecycle/LiveData;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 439
    new-instance p0, Lorg/fdroid/database/AppDaoInt$map$2;

    invoke-direct {p0, p3}, Lorg/fdroid/database/AppDaoInt$map$2;-><init>(Ljava/util/Map;)V

    invoke-static {p1, p0}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic map$default(Lorg/fdroid/database/AppDaoInt;Landroidx/lifecycle/LiveData;Landroid/content/pm/PackageManager;Ljava/util/Map;ILjava/lang/Object;)Landroidx/lifecycle/LiveData;
    .locals 2

    if-nez p5, :cond_2

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 437
    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p3

    const-string p4, "getInstalledPackages(...)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p4, 0xa

    .line 1194
    invoke-static {p3, p4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p4

    invoke-static {p4}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result p4

    const/16 p5, 0x10

    invoke-static {p4, p5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p4

    .line 1195
    new-instance p5, Ljava/util/LinkedHashMap;

    invoke-direct {p5, p4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1222
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    .line 1223
    move-object v0, p4

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 438
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "packageName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1223
    invoke-interface {p5, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object p3, p5

    .line 435
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->map(Lorg/fdroid/database/AppDaoInt;Landroidx/lifecycle/LiveData;Landroid/content/pm/PackageManager;Ljava/util/Map;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: map"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static updateApp(Lorg/fdroid/database/AppDaoInt;JLjava/lang/String;Lkotlinx/serialization/json/JsonObject;Landroidx/core/os/LocaleListCompat;)V
    .locals 45

    move-object/from16 v7, p4

    move-object/from16 v0, p5

    const-string v1, "packageName"

    move-object/from16 v8, p3

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "locales"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v7, :cond_0

    .line 208
    invoke-interface/range {p0 .. p3}, Lorg/fdroid/database/AppDaoInt;->deleteAppMetadata(JLjava/lang/String;)V

    return-void

    .line 211
    :cond_0
    invoke-interface/range {p0 .. p3}, Lorg/fdroid/database/AppDaoInt;->getAppMetadata(JLjava/lang/String;)Lorg/fdroid/database/AppMetadata;

    move-result-object v1

    if-nez v1, :cond_1

    .line 213
    invoke-static {}, Lorg/fdroid/index/IndexParser;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v1

    const-class v2, Lorg/fdroid/index/v2/MetadataV2;

    .line 32
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 80
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0, v1, v7}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    move-result-object v0

    .line 213
    move-object v6, v0

    check-cast v6, Lorg/fdroid/index/v2/MetadataV2;

    const/4 v7, 0x0

    const/16 v0, 0x8

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move v8, v0

    .line 214
    invoke-static/range {v2 .. v9}, Lorg/fdroid/database/AppDao$DefaultImpls;->insert$default(Lorg/fdroid/database/AppDao;JLjava/lang/String;Lorg/fdroid/index/v2/MetadataV2;Landroidx/core/os/LocaleListCompat;ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 217
    :cond_1
    invoke-static {}, Lorg/fdroid/database/AppDaoKt;->access$getDENY_LIST$p()Ljava/util/List;

    move-result-object v2

    .line 1855
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 218
    invoke-virtual {v7, v3}, Lkotlinx/serialization/json/JsonObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lkotlinx/serialization/SerializationException;

    invoke-direct {v0, v3}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_3
    sget-object v2, Lorg/fdroid/index/v2/ReflectionDiffer;->INSTANCE:Lorg/fdroid/index/v2/ReflectionDiffer;

    invoke-virtual {v2, v1, v7}, Lorg/fdroid/index/v2/ReflectionDiffer;->applyDiff(Ljava/lang/Object;Lkotlinx/serialization/json/JsonObject;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lorg/fdroid/database/AppMetadata;

    const-string v1, "name"

    .line 223
    invoke-virtual {v7, v1}, Lkotlinx/serialization/json/JsonObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "summary"

    invoke-virtual {v7, v1}, Lkotlinx/serialization/json/JsonObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    move-object/from16 v10, p0

    goto :goto_3

    :cond_5
    :goto_2
    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 225
    sget-object v1, Lorg/fdroid/LocaleChooser;->INSTANCE:Lorg/fdroid/LocaleChooser;

    invoke-virtual {v9}, Lorg/fdroid/database/AppMetadata;->getName()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/fdroid/LocaleChooser;->getBestLocale(Ljava/util/Map;Landroidx/core/os/LocaleListCompat;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Ljava/lang/String;

    .line 226
    invoke-virtual {v9}, Lorg/fdroid/database/AppMetadata;->getSummary()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/fdroid/LocaleChooser;->getBestLocale(Ljava/util/Map;Landroidx/core/os/LocaleListCompat;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const v43, 0x3ffffe7f    # 1.9999541f

    const/16 v44, 0x0

    .line 224
    invoke-static/range {v9 .. v44}, Lorg/fdroid/database/AppMetadata;->copy$default(Lorg/fdroid/database/AppMetadata;JLjava/lang/String;JJLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Lorg/fdroid/database/AppMetadata;

    move-result-object v9

    goto :goto_1

    .line 229
    :goto_3
    invoke-interface {v10, v9}, Lorg/fdroid/database/AppDaoInt;->updateAppMetadata(Lorg/fdroid/database/AppMetadata;)I

    .line 231
    invoke-interface/range {p0 .. p3}, Lorg/fdroid/database/AppDaoInt;->getLocalizedFiles(JLjava/lang/String;)Ljava/util/List;

    move-result-object v9

    const-string v5, "icon"

    move-object/from16 v0, p0

    move-object v1, v9

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    .line 232
    invoke-static/range {v0 .. v6}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->diffAndUpdate(Lorg/fdroid/database/AppDaoInt;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V

    const-string v5, "featureGraphic"

    .line 233
    invoke-static/range {v0 .. v6}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->diffAndUpdate(Lorg/fdroid/database/AppDaoInt;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V

    const-string v5, "promoGraphic"

    .line 234
    invoke-static/range {v0 .. v6}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->diffAndUpdate(Lorg/fdroid/database/AppDaoInt;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V

    const-string v5, "tvBanner"

    .line 235
    invoke-static/range {v0 .. v6}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->diffAndUpdate(Lorg/fdroid/database/AppDaoInt;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V

    const-string v0, "screenshots"

    .line 237
    invoke-virtual {v7, v0}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    .line 238
    instance-of v1, v0, Lkotlinx/serialization/json/JsonNull;

    if-eqz v1, :cond_6

    .line 239
    invoke-interface/range {p0 .. p3}, Lorg/fdroid/database/AppDaoInt;->deleteLocalizedFileLists(JLjava/lang/String;)V

    goto :goto_4

    .line 240
    :cond_6
    instance-of v1, v0, Lkotlinx/serialization/json/JsonObject;

    if-eqz v1, :cond_7

    const-string v6, "phone"

    .line 241
    check-cast v0, Lkotlinx/serialization/json/JsonObject;

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->diffAndUpdateLocalizedFileList(Lorg/fdroid/database/AppDaoInt;JLjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V

    const-string v6, "sevenInch"

    .line 242
    invoke-static/range {v2 .. v7}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->diffAndUpdateLocalizedFileList(Lorg/fdroid/database/AppDaoInt;JLjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V

    const-string v6, "tenInch"

    .line 243
    invoke-static/range {v2 .. v7}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->diffAndUpdateLocalizedFileList(Lorg/fdroid/database/AppDaoInt;JLjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V

    const-string v6, "wear"

    .line 244
    invoke-static/range {v2 .. v7}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->diffAndUpdateLocalizedFileList(Lorg/fdroid/database/AppDaoInt;JLjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V

    const-string v6, "tv"

    .line 245
    invoke-static/range {v2 .. v7}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->diffAndUpdateLocalizedFileList(Lorg/fdroid/database/AppDaoInt;JLjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V

    :cond_7
    :goto_4
    return-void
.end method
