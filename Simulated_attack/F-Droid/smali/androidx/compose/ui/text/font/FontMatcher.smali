.class public final Landroidx/compose/ui/text/font/FontMatcher;
.super Ljava/lang/Object;
.source "FontMatcher.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final matchFont-RetOiIg(Ljava/util/List;Landroidx/compose/ui/text/font/FontWeight;I)Ljava/util/List;
    .locals 8

    const-string v0, "fontList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontWeight"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 35
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 38
    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/text/font/Font;

    .line 49
    invoke-interface {v5}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v6

    invoke-static {v6, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Landroidx/compose/ui/text/font/Font;->getStyle-_-LCdwA()I

    move-result v5

    invoke-static {v5, p3}, Landroidx/compose/ui/text/font/FontStyle;->equals-impl0(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 38
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 51
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    return-object v0

    .line 36
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_4

    .line 35
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 38
    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/text/font/Font;

    .line 57
    invoke-interface {v5}, Landroidx/compose/ui/text/font/Font;->getStyle-_-LCdwA()I

    move-result v5

    invoke-static {v5, p3}, Landroidx/compose/ui/text/font/FontStyle;->equals-impl0(II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 38
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 57
    :cond_4
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    move-object p1, v0

    .line 60
    :goto_2
    sget-object p3, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {p3}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW400()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_e

    .line 110
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    move-object v0, v1

    move v3, v2

    :goto_3
    if-ge v3, p3, :cond_b

    .line 111
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/font/Font;

    .line 112
    invoke-interface {v4}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v4

    .line 115
    invoke-virtual {v4, p2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v5

    if-gez v5, :cond_7

    if-eqz v1, :cond_6

    .line 116
    invoke-virtual {v4, v1}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v5

    if-lez v5, :cond_9

    :cond_6
    move-object v1, v4

    goto :goto_4

    .line 119
    :cond_7
    invoke-virtual {v4, p2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v5

    if-lez v5, :cond_a

    if-eqz v0, :cond_8

    .line 120
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v5

    if-gez v5, :cond_9

    :cond_8
    move-object v0, v4

    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    move-object v0, v4

    move-object v1, v0

    :cond_b
    if-nez v1, :cond_c

    goto :goto_5

    :cond_c
    move-object v0, v1

    .line 36
    :goto_5
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    :goto_6
    if-ge v2, p3, :cond_2c

    .line 35
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 38
    move-object v3, v1

    check-cast v3, Landroidx/compose/ui/text/font/Font;

    .line 135
    invoke-interface {v3}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 38
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 67
    :cond_e
    invoke-virtual {p3}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW500()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v0

    if-lez v0, :cond_17

    .line 110
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    move-object v0, v1

    move v3, v2

    :goto_7
    if-ge v3, p3, :cond_14

    .line 111
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/font/Font;

    .line 112
    invoke-interface {v4}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v4

    .line 115
    invoke-virtual {v4, p2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v5

    if-gez v5, :cond_10

    if-eqz v1, :cond_f

    .line 116
    invoke-virtual {v4, v1}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v5

    if-lez v5, :cond_12

    :cond_f
    move-object v1, v4

    goto :goto_8

    .line 119
    :cond_10
    invoke-virtual {v4, p2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v5

    if-lez v5, :cond_13

    if-eqz v0, :cond_11

    .line 120
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v5

    if-gez v5, :cond_12

    :cond_11
    move-object v0, v4

    :cond_12
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_13
    move-object v0, v4

    move-object v1, v0

    :cond_14
    if-nez v0, :cond_15

    move-object v0, v1

    .line 36
    :cond_15
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    :goto_9
    if-ge v2, p3, :cond_2c

    .line 35
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 38
    move-object v3, v1

    check-cast v3, Landroidx/compose/ui/text/font/Font;

    .line 135
    invoke-interface {v3}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 38
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 84
    :cond_17
    invoke-virtual {p3}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW500()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object p3

    .line 110
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move-object v4, v1

    move-object v5, v4

    move v3, v2

    :goto_a
    if-ge v3, v0, :cond_1e

    .line 111
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/text/font/Font;

    .line 112
    invoke-interface {v6}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v6

    if-eqz p3, :cond_18

    .line 114
    invoke-virtual {v6, p3}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v7

    if-gtz v7, :cond_1c

    .line 115
    :cond_18
    invoke-virtual {v6, p2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v7

    if-gez v7, :cond_1a

    if-eqz v4, :cond_19

    .line 116
    invoke-virtual {v6, v4}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v7

    if-lez v7, :cond_1c

    :cond_19
    move-object v4, v6

    goto :goto_b

    .line 119
    :cond_1a
    invoke-virtual {v6, p2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v7

    if-lez v7, :cond_1d

    if-eqz v5, :cond_1b

    .line 120
    invoke-virtual {v6, v5}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v7

    if-gez v7, :cond_1c

    :cond_1b
    move-object v5, v6

    :cond_1c
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1d
    move-object v4, v6

    move-object v5, v4

    :cond_1e
    if-nez v5, :cond_1f

    goto :goto_c

    :cond_1f
    move-object v4, v5

    .line 36
    :goto_c
    new-instance p3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v3, v2

    :goto_d
    if-ge v3, v0, :cond_21

    .line 35
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 38
    move-object v6, v5

    check-cast v6, Landroidx/compose/ui/text/font/Font;

    .line 135
    invoke-interface {v6}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 38
    invoke-interface {p3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 86
    :cond_21
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 90
    sget-object p3, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {p3}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW500()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object p3

    .line 110
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move-object v3, v1

    move v4, v2

    :goto_e
    if-ge v4, v0, :cond_28

    .line 111
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/text/font/Font;

    .line 112
    invoke-interface {v5}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v5

    if-eqz p3, :cond_22

    .line 113
    invoke-virtual {v5, p3}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v6

    if-ltz v6, :cond_26

    .line 115
    :cond_22
    invoke-virtual {v5, p2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v6

    if-gez v6, :cond_24

    if-eqz v1, :cond_23

    .line 116
    invoke-virtual {v5, v1}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v6

    if-lez v6, :cond_26

    :cond_23
    move-object v1, v5

    goto :goto_f

    .line 119
    :cond_24
    invoke-virtual {v5, p2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v6

    if-lez v6, :cond_27

    if-eqz v3, :cond_25

    .line 120
    invoke-virtual {v5, v3}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v6

    if-gez v6, :cond_26

    :cond_25
    move-object v3, v5

    :cond_26
    :goto_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_27
    move-object v1, v5

    move-object v3, v1

    :cond_28
    if-nez v3, :cond_29

    goto :goto_10

    :cond_29
    move-object v1, v3

    .line 36
    :goto_10
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    :goto_11
    if-ge v2, p3, :cond_2c

    .line 35
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 38
    move-object v3, v0

    check-cast v3, Landroidx/compose/ui/text/font/Font;

    .line 135
    invoke-interface {v3}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 38
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_2b
    move-object p2, p3

    :cond_2c
    return-object p2
.end method
