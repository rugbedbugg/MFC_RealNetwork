.class public final Lorg/acra/config/RetryPolicy$FailedSender;
.super Ljava/lang/Object;
.source "RetryPolicy.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/acra/config/RetryPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FailedSender"
.end annotation


# instance fields
.field private final exception:Lorg/acra/sender/ReportSenderException;

.field private final sender:Lorg/acra/sender/ReportSender;


# direct methods
.method public constructor <init>(Lorg/acra/sender/ReportSender;Lorg/acra/sender/ReportSenderException;)V
    .locals 1

    const-string v0, "sender"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/acra/config/RetryPolicy$FailedSender;->sender:Lorg/acra/sender/ReportSender;

    iput-object p2, p0, Lorg/acra/config/RetryPolicy$FailedSender;->exception:Lorg/acra/sender/ReportSenderException;

    return-void
.end method


# virtual methods
.method public final getException()Lorg/acra/sender/ReportSenderException;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/config/RetryPolicy$FailedSender;->exception:Lorg/acra/sender/ReportSenderException;

    return-object v0
.end method

.method public final getSender()Lorg/acra/sender/ReportSender;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/config/RetryPolicy$FailedSender;->sender:Lorg/acra/sender/ReportSender;

    return-object v0
.end method
