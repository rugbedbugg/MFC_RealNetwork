.class public Lkellinwood/security/zipsigner/ProgressEvent;
.super Ljava/lang/Object;
.source "ProgressEvent.java"


# static fields
.field public static final PRORITY_IMPORTANT:I = 0x1

.field public static final PRORITY_NORMAL:I


# instance fields
.field private message:Ljava/lang/String;

.field private percentDone:I

.field private priority:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lkellinwood/security/zipsigner/ProgressEvent;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getPercentDone()I
    .locals 1

    .line 0
    iget v0, p0, Lkellinwood/security/zipsigner/ProgressEvent;->percentDone:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .line 0
    iget v0, p0, Lkellinwood/security/zipsigner/ProgressEvent;->priority:I

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lkellinwood/security/zipsigner/ProgressEvent;->message:Ljava/lang/String;

    return-void
.end method

.method public setPercentDone(I)V
    .locals 0

    .line 0
    iput p1, p0, Lkellinwood/security/zipsigner/ProgressEvent;->percentDone:I

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .line 0
    iput p1, p0, Lkellinwood/security/zipsigner/ProgressEvent;->priority:I

    return-void
.end method
