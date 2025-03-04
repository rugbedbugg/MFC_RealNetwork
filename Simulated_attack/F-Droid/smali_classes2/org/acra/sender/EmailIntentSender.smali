.class public Lorg/acra/sender/EmailIntentSender;
.super Ljava/lang/Object;
.source "EmailIntentSender.kt"

# interfaces
.implements Lorg/acra/sender/ReportSender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/acra/sender/EmailIntentSender$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/acra/sender/EmailIntentSender$Companion;


# instance fields
.field private final config:Lorg/acra/config/CoreConfiguration;

.field private final mailConfig:Lorg/acra/config/MailSenderConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/acra/sender/EmailIntentSender$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/acra/sender/EmailIntentSender$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/acra/sender/EmailIntentSender;->Companion:Lorg/acra/sender/EmailIntentSender$Companion;

    return-void
.end method

.method public constructor <init>(Lorg/acra/config/CoreConfiguration;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/acra/sender/EmailIntentSender;->config:Lorg/acra/config/CoreConfiguration;

    const-class v0, Lorg/acra/config/MailSenderConfiguration;

    .line 29
    invoke-static {p1, v0}, Lorg/acra/config/ConfigUtils;->getPluginConfiguration(Lorg/acra/config/CoreConfiguration;Ljava/lang/Class;)Lorg/acra/config/Configuration;

    move-result-object p1

    check-cast p1, Lorg/acra/config/MailSenderConfiguration;

    iput-object p1, p0, Lorg/acra/sender/EmailIntentSender;->mailConfig:Lorg/acra/config/MailSenderConfiguration;

    return-void
.end method

.method private buildInitialIntents(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Intent;)Ljava/util/List;
    .locals 4

    .line 222
    invoke-static {p1, p2}, Lorg/acra/sender/EmailIntentSenderKt;->access$queryDefaultActivities(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    move-result-object p2

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 225
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 226
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    invoke-virtual {v2, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 228
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 231
    :cond_1
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    invoke-virtual {v2, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 233
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getPackageName(Landroid/content/ComponentName;Ljava/util/List;)Ljava/lang/String;
    .locals 2

    .line 151
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android"

    .line 152
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 156
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    .line 158
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private grantPermission(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    if-nez p3, :cond_0

    .line 249
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    const-string v0, "getPackageManager(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, p2}, Lorg/acra/sender/EmailIntentSenderKt;->access$queryDefaultActivities(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 250
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0, p4}, Lorg/acra/sender/EmailIntentSender;->grantPermission(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 253
    :cond_0
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/net/Uri;

    const/4 v0, 0x1

    .line 254
    invoke-virtual {p1, p3, p4, v0}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private resolveAndSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/content/Context;)V
    .locals 6

    .line 71
    invoke-virtual {p4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lorg/acra/sender/EmailIntentSender;->buildResolveIntent()Landroid/content/Intent;

    move-result-object v1

    .line 74
    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 76
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    invoke-virtual {p0, p1, p2}, Lorg/acra/sender/EmailIntentSender;->buildFallbackIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 80
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/acra/sender/EmailIntentSender;->buildAttachmentIntent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v3

    .line 81
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v5, "*/*"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1, v3}, Lorg/acra/sender/EmailIntentSender;->buildInitialIntents(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    .line 83
    invoke-direct {p0, v2, v1}, Lorg/acra/sender/EmailIntentSender;->getPackageName(Landroid/content/ComponentName;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-nez v2, :cond_2

    .line 89
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, p2, v0, p3}, Lorg/acra/sender/EmailIntentSender;->grantPermission(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 92
    :cond_1
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Lorg/acra/sender/EmailIntentSender;->showChooser(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_1

    .line 95
    :cond_2
    invoke-virtual {v3, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 97
    invoke-direct {p0, p4, v3, v2, p3}, Lorg/acra/sender/EmailIntentSender;->grantPermission(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;)V

    .line 98
    invoke-virtual {p4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 101
    :cond_3
    invoke-virtual {v4, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 103
    invoke-direct {p0, p4, v4, v2, p3}, Lorg/acra/sender/EmailIntentSender;->grantPermission(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;)V

    .line 104
    invoke-virtual {p4, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 15
    :cond_4
    sget-object p3, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "No email client supporting attachments found. Attachments will be ignored"

    invoke-interface {p3, v0, v1}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0, p1, p2}, Lorg/acra/sender/EmailIntentSender;->buildFallbackIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    .line 114
    :cond_5
    new-instance p1, Lorg/acra/sender/ReportSenderException;

    const-string p2, "No email client found"

    invoke-direct {p1, p2}, Lorg/acra/sender/ReportSenderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private sendWithSelector(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/content/Context;)V
    .locals 2

    .line 120
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 121
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, v0}, Lorg/acra/sender/EmailIntentSender;->buildSingleAttachmentIntent(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/acra/sender/EmailIntentSender;->buildAttachmentIntent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    .line 125
    :goto_0
    invoke-virtual {p0}, Lorg/acra/sender/EmailIntentSender;->buildResolveIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    const/4 v1, 0x0

    .line 126
    invoke-direct {p0, p4, v0, v1, p3}, Lorg/acra/sender/EmailIntentSender;->grantPermission(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;)V

    .line 128
    :try_start_0
    invoke-virtual {p4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 131
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/acra/sender/EmailIntentSender;->resolveAndSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/content/Context;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_1
    move-exception p1

    .line 133
    new-instance p2, Lorg/acra/sender/ReportSenderException;

    const-string p3, "No email client found"

    invoke-direct {p2, p3, p1}, Lorg/acra/sender/ReportSenderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private showChooser(Landroid/content/Context;Ljava/util/List;)V
    .locals 4

    .line 240
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CHOOSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 241
    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-array v1, v1, [Landroid/content/Intent;

    .line 38
    invoke-interface {p2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/os/Parcelable;

    const-string v1, "android.intent.extra.INITIAL_INTENTS"

    .line 242
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 243
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 244
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected buildAttachmentIntent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;
    .locals 3

    const-string v0, "subject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachments"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/acra/sender/EmailIntentSender;->mailConfig:Lorg/acra/config/MailSenderConfiguration;

    .line 174
    invoke-virtual {v1}, Lorg/acra/config/MailSenderConfiguration;->getMailTo()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 175
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    .line 176
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p3, p1}, Lkotlin/collections/CollectionsKt;->toCollection(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const-string p3, "android.intent.extra.STREAM"

    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.TEXT"

    .line 178
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected buildFallbackIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6

    const-string v0, "subject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/acra/sender/EmailIntentSender;->mailConfig:Lorg/acra/config/MailSenderConfiguration;

    .line 214
    invoke-virtual {v1}, Lorg/acra/config/MailSenderConfiguration;->getMailTo()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mailto:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?subject="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&body="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 215
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    .line 216
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.TEXT"

    .line 217
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected buildResolveIntent()Landroid/content/Intent;
    .locals 2

    .line 206
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "mailto:"

    .line 207
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 208
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method protected buildSingleAttachmentIntent(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3

    const-string v0, "subject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/acra/sender/EmailIntentSender;->mailConfig:Lorg/acra/config/MailSenderConfiguration;

    .line 192
    invoke-virtual {v1}, Lorg/acra/config/MailSenderConfiguration;->getMailTo()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 193
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    .line 194
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.STREAM"

    .line 195
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.TEXT"

    .line 196
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected buildSubject(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/acra/sender/EmailIntentSender;->mailConfig:Lorg/acra/config/MailSenderConfiguration;

    .line 266
    invoke-virtual {v0}, Lorg/acra/config/MailSenderConfiguration;->getSubject()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Crash Report"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected createAttachmentFromString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 308
    :try_start_0
    invoke-static {v0, p3}, Lorg/acra/util/IOUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V

    .line 309
    sget-object p2, Lorg/acra/attachment/AcraContentProvider;->Companion:Lorg/acra/attachment/AcraContentProvider$Companion;

    invoke-virtual {p2, p1, v0}, Lorg/acra/attachment/AcraContentProvider$Companion;->getUriForFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getBodyAndAttachments(Landroid/content/Context;Ljava/lang/String;)Lkotlin/Pair;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/acra/sender/EmailIntentSender;->mailConfig:Lorg/acra/config/MailSenderConfiguration;

    .line 280
    invoke-virtual {v0}, Lorg/acra/config/MailSenderConfiguration;->getBody()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/acra/sender/EmailIntentSender;->mailConfig:Lorg/acra/config/MailSenderConfiguration;

    .line 282
    invoke-virtual {v1}, Lorg/acra/config/MailSenderConfiguration;->getReportAsFile()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 283
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 286
    :cond_2
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lorg/acra/sender/EmailIntentSender;->config:Lorg/acra/config/CoreConfiguration;

    .line 287
    invoke-virtual {v2}, Lorg/acra/config/CoreConfiguration;->getAttachmentUriProvider()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lorg/acra/sender/EmailIntentSender$getBodyAndAttachments$1;->INSTANCE:Lorg/acra/sender/EmailIntentSender$getBodyAndAttachments$1;

    invoke-static {v2, v3}, Lorg/acra/util/InstanceCreator;->create(Ljava/lang/Class;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/acra/attachment/AttachmentUriProvider;

    iget-object v3, p0, Lorg/acra/sender/EmailIntentSender;->config:Lorg/acra/config/CoreConfiguration;

    invoke-interface {v2, p1, v3}, Lorg/acra/attachment/AttachmentUriProvider;->getAttachments(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lorg/acra/sender/EmailIntentSender;->mailConfig:Lorg/acra/config/MailSenderConfiguration;

    .line 288
    invoke-virtual {v2}, Lorg/acra/config/MailSenderConfiguration;->getReportAsFile()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/acra/sender/EmailIntentSender;->mailConfig:Lorg/acra/config/MailSenderConfiguration;

    .line 289
    invoke-virtual {v2}, Lorg/acra/config/MailSenderConfiguration;->getReportFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2, p2}, Lorg/acra/sender/EmailIntentSender;->createAttachmentFromString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 291
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_3
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public requiresForeground()Z
    .locals 2

    .line 0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public send(Landroid/content/Context;Lorg/acra/data/CrashReportData;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorContent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, p1}, Lorg/acra/sender/EmailIntentSender;->buildSubject(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/acra/sender/EmailIntentSender;->config:Lorg/acra/config/CoreConfiguration;

    .line 57
    invoke-virtual {v1}, Lorg/acra/config/CoreConfiguration;->getReportFormat()Lorg/acra/data/StringFormat;

    move-result-object v2

    iget-object v1, p0, Lorg/acra/sender/EmailIntentSender;->config:Lorg/acra/config/CoreConfiguration;

    invoke-virtual {v1}, Lorg/acra/config/CoreConfiguration;->getReportContent()Ljava/util/List;

    move-result-object v4

    const-string v5, "\n"

    const-string v6, "\n  "

    const/4 v7, 0x0

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Lorg/acra/data/StringFormat;->toFormattedString(Lorg/acra/data/CrashReportData;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    invoke-virtual {p0, p1, p2}, Lorg/acra/sender/EmailIntentSender;->getBodyAndAttachments(Landroid/content/Context;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-ge v2, v3, :cond_0

    .line 64
    invoke-direct {p0, v0, v1, p2, p1}, Lorg/acra/sender/EmailIntentSender;->sendWithSelector(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/content/Context;)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-direct {p0, v0, v1, p2, p1}, Lorg/acra/sender/EmailIntentSender;->resolveAndSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/content/Context;)V

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 59
    new-instance p2, Lorg/acra/sender/ReportSenderException;

    const-string v0, "Failed to convert Report to text"

    invoke-direct {p2, v0, p1}, Lorg/acra/sender/ReportSenderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public synthetic send(Landroid/content/Context;Lorg/acra/data/CrashReportData;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/acra/sender/ReportSender$-CC;->$default$send(Lorg/acra/sender/ReportSender;Landroid/content/Context;Lorg/acra/data/CrashReportData;Landroid/os/Bundle;)V

    return-void
.end method
