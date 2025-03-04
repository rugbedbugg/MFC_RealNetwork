.class public interface abstract Lorg/acra/sender/ReportSenderFactory;
.super Ljava/lang/Object;
.source "ReportSenderFactory.kt"

# interfaces
.implements Lorg/acra/plugins/Plugin;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0008\u00c0\u0006\u0001"
    }
    d2 = {
        "Lorg/acra/sender/ReportSenderFactory;",
        "Lorg/acra/plugins/Plugin;",
        "create",
        "Lorg/acra/sender/ReportSender;",
        "context",
        "Landroid/content/Context;",
        "config",
        "Lorg/acra/config/CoreConfiguration;",
        "acra-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract create(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)Lorg/acra/sender/ReportSender;
.end method

.method public bridge abstract synthetic enabled(Lorg/acra/config/CoreConfiguration;)Z
.end method
