.class public abstract Lorg/acra/util/PackageManagerWrapperKt;
.super Ljava/lang/Object;
.source "PackageManagerWrapper.kt"


# direct methods
.method public static final getVersionCodeLong(Landroid/content/pm/PackageInfo;)J
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 74
    invoke-static {p0}, Lorg/acra/util/PackageManagerWrapperKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageInfo;)J

    move-result-wide v0

    goto :goto_0

    .line 77
    :cond_0
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v0, p0

    :goto_0
    return-wide v0
.end method
