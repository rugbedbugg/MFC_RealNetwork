.class public abstract Lorg/acra/sender/EmailIntentSenderKt;
.super Ljava/lang/Object;
.source "EmailIntentSender.kt"


# direct methods
.method public static final synthetic access$queryDefaultActivities(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/acra/sender/EmailIntentSenderKt;->queryDefaultActivities(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final queryDefaultActivities(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const-wide/32 v0, 0x10000

    .line 321
    invoke-static {v0, v1}, Lorg/acra/sender/EmailIntentSenderKt$$ExternalSyntheticApiModelOutline0;->m(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/acra/sender/EmailIntentSenderKt$$ExternalSyntheticApiModelOutline1;->m(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x10000

    .line 323
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 320
    :goto_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method
