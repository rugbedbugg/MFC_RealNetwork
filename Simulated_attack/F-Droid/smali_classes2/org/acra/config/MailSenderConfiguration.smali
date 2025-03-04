.class public final Lorg/acra/config/MailSenderConfiguration;
.super Ljava/lang/Object;
.source "MailSenderConfiguration.kt"

# interfaces
.implements Lorg/acra/config/Configuration;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001BE\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u0008\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0017\u0010\u000c\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u0004\u001a\u0004\u0008\r\u0010\u0006R\u0017\u0010\u000e\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\t\u001a\u0004\u0008\u000f\u0010\u000bR\u0019\u0010\u0010\u001a\u0004\u0018\u00010\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\t\u001a\u0004\u0008\u0011\u0010\u000bR\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\t\u001a\u0004\u0008\u0013\u0010\u000b\u00a8\u0006\u0016"
    }
    d2 = {
        "Lorg/acra/config/MailSenderConfiguration;",
        "Lorg/acra/config/Configuration;",
        "",
        "enabled",
        "Z",
        "getEnabled",
        "()Z",
        "",
        "mailTo",
        "Ljava/lang/String;",
        "getMailTo",
        "()Ljava/lang/String;",
        "reportAsFile",
        "getReportAsFile",
        "reportFileName",
        "getReportFileName",
        "subject",
        "getSubject",
        "body",
        "getBody",
        "<init>",
        "(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "acra-mail_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field private final body:Ljava/lang/String;

.field private final enabled:Z

.field private final mailTo:Ljava/lang/String;

.field private final reportAsFile:Z

.field private final reportFileName:Ljava/lang/String;

.field private final subject:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "mailTo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportFileName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/acra/config/MailSenderConfiguration;->enabled:Z

    iput-object p2, p0, Lorg/acra/config/MailSenderConfiguration;->mailTo:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/acra/config/MailSenderConfiguration;->reportAsFile:Z

    iput-object p4, p0, Lorg/acra/config/MailSenderConfiguration;->reportFileName:Ljava/lang/String;

    iput-object p5, p0, Lorg/acra/config/MailSenderConfiguration;->subject:Ljava/lang/String;

    iput-object p6, p0, Lorg/acra/config/MailSenderConfiguration;->body:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, p3

    :goto_1
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_2

    const-string v0, "ACRA-report.stacktrace"

    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object v6, p4

    :goto_2
    and-int/lit8 v0, p7, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    move-object v7, v1

    goto :goto_3

    :cond_3
    move-object v7, p5

    :goto_3
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_4

    move-object v8, v1

    goto :goto_4

    :cond_4
    move-object v8, p6

    :goto_4
    move-object v2, p0

    move-object v4, p2

    .line 29
    invoke-direct/range {v2 .. v8}, Lorg/acra/config/MailSenderConfiguration;-><init>(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public enabled()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/acra/config/MailSenderConfiguration;->enabled:Z

    return v0
.end method

.method public final getBody()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/config/MailSenderConfiguration;->body:Ljava/lang/String;

    return-object v0
.end method

.method public final getMailTo()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/config/MailSenderConfiguration;->mailTo:Ljava/lang/String;

    return-object v0
.end method

.method public final getReportAsFile()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/acra/config/MailSenderConfiguration;->reportAsFile:Z

    return v0
.end method

.method public final getReportFileName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/config/MailSenderConfiguration;->reportFileName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubject()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/config/MailSenderConfiguration;->subject:Ljava/lang/String;

    return-object v0
.end method
