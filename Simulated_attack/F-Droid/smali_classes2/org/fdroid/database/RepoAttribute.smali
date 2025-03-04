.class public abstract Lorg/fdroid/database/RepoAttribute;
.super Ljava/lang/Object;
.source "Repository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0010\u001a\u00020\u0011J\u0010\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0010\u001a\u00020\u0011J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0010\u001a\u00020\u0011R\"\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u0006X\u00a0\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\"\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\n0\u0004j\u0002`\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u0008R\"\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u0006X\u00a0\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u0008\u00a8\u0006\u0013"
    }
    d2 = {
        "Lorg/fdroid/database/RepoAttribute;",
        "",
        "()V",
        "description",
        "",
        "",
        "Lorg/fdroid/index/v2/LocalizedTextV2;",
        "getDescription$database_release",
        "()Ljava/util/Map;",
        "icon",
        "Lorg/fdroid/index/v2/FileV2;",
        "Lorg/fdroid/index/v2/LocalizedFileV2;",
        "getIcon",
        "name",
        "getName$database_release",
        "getDescription",
        "localeList",
        "Landroidx/core/os/LocaleListCompat;",
        "getName",
        "database_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDescription(Landroidx/core/os/LocaleListCompat;)Ljava/lang/String;
    .locals 2

    const-string v0, "localeList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    sget-object v0, Lorg/fdroid/LocaleChooser;->INSTANCE:Lorg/fdroid/LocaleChooser;

    invoke-virtual {p0}, Lorg/fdroid/database/RepoAttribute;->getDescription$database_release()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/fdroid/LocaleChooser;->getBestLocale(Ljava/util/Map;Landroidx/core/os/LocaleListCompat;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public abstract getDescription$database_release()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIcon()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v2/FileV2;",
            ">;"
        }
    .end annotation
.end method

.method public final getIcon(Landroidx/core/os/LocaleListCompat;)Lorg/fdroid/index/v2/FileV2;
    .locals 2

    const-string v0, "localeList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    sget-object v0, Lorg/fdroid/LocaleChooser;->INSTANCE:Lorg/fdroid/LocaleChooser;

    invoke-virtual {p0}, Lorg/fdroid/database/RepoAttribute;->getIcon()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/fdroid/LocaleChooser;->getBestLocale(Ljava/util/Map;Landroidx/core/os/LocaleListCompat;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fdroid/index/v2/FileV2;

    return-object p1
.end method

.method public final getName(Landroidx/core/os/LocaleListCompat;)Ljava/lang/String;
    .locals 2

    const-string v0, "localeList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    sget-object v0, Lorg/fdroid/LocaleChooser;->INSTANCE:Lorg/fdroid/LocaleChooser;

    invoke-virtual {p0}, Lorg/fdroid/database/RepoAttribute;->getName$database_release()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/fdroid/LocaleChooser;->getBestLocale(Ljava/util/Map;Landroidx/core/os/LocaleListCompat;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public abstract getName$database_release()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
