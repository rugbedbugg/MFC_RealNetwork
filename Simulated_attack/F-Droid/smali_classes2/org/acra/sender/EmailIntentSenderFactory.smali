.class public Lorg/acra/sender/EmailIntentSenderFactory;
.super Lorg/acra/plugins/HasConfigPlugin;
.source "EmailIntentSenderFactory.kt"

# interfaces
.implements Lorg/acra/sender/ReportSenderFactory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0017\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lorg/acra/sender/EmailIntentSenderFactory;",
        "Lorg/acra/plugins/HasConfigPlugin;",
        "Lorg/acra/sender/ReportSenderFactory;",
        "()V",
        "create",
        "Lorg/acra/sender/ReportSender;",
        "context",
        "Landroid/content/Context;",
        "config",
        "Lorg/acra/config/CoreConfiguration;",
        "acra-mail_release"
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
    .locals 1

    const-class v0, Lorg/acra/config/MailSenderConfiguration;

    .line 28
    invoke-direct {p0, v0}, Lorg/acra/plugins/HasConfigPlugin;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)Lorg/acra/sender/ReportSender;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "config"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance p1, Lorg/acra/sender/EmailIntentSender;

    invoke-direct {p1, p2}, Lorg/acra/sender/EmailIntentSender;-><init>(Lorg/acra/config/CoreConfiguration;)V

    return-object p1
.end method
